namespace Adillo

open ActivationFunctions
open NetworkCreation

module NetworkOperations =

    let cost (expected : float []) (actual : float []) : float =
        (expected, actual)
            ||> Array.map2 (fun a b -> (a - b)**2.0)
            |> Array.sum

    let matrixVectorProduct (matrix : float [,]) (vector : float[]) : float [] =

        let rec dotProduct (vector1 : float []) (vector2 : float []) : float =
            if vector1 |> Array.length = 0 then
                0.0
            else
                vector1.[0] * vector2.[0] + (dotProduct (vector1 |> Array.tail) (vector2 |> Array.tail))

        [|for i = 0 to (matrix |> Array2D.length1) - 1 do
            dotProduct matrix.[i, 0..] vector|]

    let feedForward (network : Network) (input : float []) : float [] =

        let rec feed (weights : float [,][]) (biases : float [][]) (input : float []) : float [] =

            if weights |> Array.length = 0 then
                input
            else
                let afterWeights = (matrixVectorProduct weights.[0] input)

                let singleLayerFeedForward =
                    (afterWeights, biases.[0])
                    ||> Array.map2 (+)
                    |> Array.map (network.activation.func)

                feed (weights |> Array.tail) (biases |> Array.tail) singleLayerFeedForward
            
        feed network.weights network.biases input