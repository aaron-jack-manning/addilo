namespace Adillo

open System
open FSharp.Data

module FileProcessing =

    // the top level arrays of this are data sets, while each entry in each of those arrays is a separate neuron
    let loadData ((filepath:string), (normalize:bool)) : float [][] = 

        let csv = CsvFile.Load(filepath, hasHeaders = false)

        let dataArray =
            csv.Rows
            |> Seq.map (fun row -> row.Columns)
            |> Array.transpose
            |> Array.map (fun x -> x |> Array.map (fun x -> Convert.ToDouble(x)))

        if normalize then
            let normalizeData (input: float [][]) : float [][] =
                let max = input |> Array.map (fun x -> x |> Array.max) |> Array.max
                let min = input |> Array.map (fun x -> x |> Array.min) |> Array.min

                input |> Array.map (fun x -> x |> Array.map (fun y -> (y - min)/(max - min)))
            normalizeData dataArray
        else
            dataArray