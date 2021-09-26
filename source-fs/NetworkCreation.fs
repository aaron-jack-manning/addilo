namespace Addilo

open ActivationFunctions

open System

module NetworkCreation =

    type Network = { biases : float [][]; weights : float [,][]; structure : uint list; activation : ActivationFunctionPair }


    let biasesGenerator ((structure:uint list), (initialValue:float)): float [][] =
        
        let biasesForLayer (length:uint) : float [] = [| for i = 0u to length - 1u do yield initialValue |]

        let rec createBiases biases remainingStructure =
            if remainingStructure |> List.length = 0 then
                biases
            else
                (createBiases biases remainingStructure.Tail) |> Array.append [| biasesForLayer remainingStructure.[0] |]

        createBiases Array.empty (structure |> List.tail)


    let weightsGenerator (structure:uint list) : float [,][] =
        
        let uniformRandomVariable () =
            let rand = Random ()
            rand.NextDouble()

        let normalRandomVariable () =
            let boxMuller n1 n2 = Math.Sqrt(-2.0 * Math.Log(n1)) * Math.Cos(2.0 * Math.PI * n2)
            
            boxMuller (uniformRandomVariable ()) (uniformRandomVariable ())

        let weightsForLayerPair (firstLength:uint, secondLength:uint) : float [,] =
            let emptyArray = Array2D.create (int secondLength) (int firstLength) (0) // check order here

            emptyArray |> Array2D.map (fun x -> normalRandomVariable () )

        let rec createWeights (weights:float [,][]) (remainingStructure:uint list) : float [,][] =
            if remainingStructure |> List.length = 1 then
                weights
            else
                Array.append [|(weightsForLayerPair (remainingStructure.[0], remainingStructure.[1]))|] (createWeights weights remainingStructure.Tail)

        createWeights Array.empty<float [,]> structure


    let generateNetwork ((functions:ActivationFunctionPair), (structure:uint list), (biasesInitialValue:float)) : Network = // also includes biases initial value

        let biases = biasesGenerator (structure, biasesInitialValue)
        let weights = weightsGenerator structure

        {biases = biases; weights = weights; structure = structure; activation = functions}