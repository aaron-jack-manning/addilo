namespace Addilo

open ActivationFunctions
open NetworkCreation
open MathematicalOperations

module NetworkOperations =

    let cost (expected : float []) (actual : float []) : float =
        (expected, actual)
            ||> Array.map2 (fun a b -> (a - b)**2.0)
            |> Array.sum

    

    let feedForward (network : Network) (input : float []) : float [][] =
    
            let rec feed (weights : float [,][]) (biases : float [][]) (activations : float [][]) : float [][] =
    

                let previousLayerActivations = activations |> Array.last

                if weights |> Array.length = 0 then
                    activations
                else
                    let afterWeights = (matrixVectorProduct weights.[0] previousLayerActivations)
    
                    let newLayerActivations =
                        (afterWeights, biases.[0])
                        ||> Array.map2 (+)
                        |> Array.map (network.activation.func)
    
                    let newActivations = Array.append activations [|newLayerActivations|]
    
                    feed (weights |> Array.tail) (biases |> Array.tail) newActivations
                
            feed network.weights network.biases [|input|]



    //let backpropToActivationInput (network : Network) (activations : float [][]) =
        
    //    let rec deltaZ =
            


    //        0



    //    0