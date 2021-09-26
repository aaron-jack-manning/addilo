namespace Addilo

module MathematicalOperations =

    let transpose (matrix : float [,]) : float [,] =
        
        [|
            for i = 0 to (matrix |> Array2D.length1) - 1 do
                yield
                    [|
                        for j = 0 to (matrix |> Array2D.length2) - 1 do
                            yield matrix.[j, i]
                    |]
        |]
        |> array2D

    let matrixVectorProduct (matrix : float [,]) (vector : float[]) : float [] =

        let rec dotProduct (vector1 : float []) (vector2 : float []) : float =
            if vector1 |> Array.length = 0 then
                0.0
            else
                vector1.[0] * vector2.[0] + (dotProduct (vector1 |> Array.tail) (vector2 |> Array.tail))

        [|for i = 0 to (matrix |> Array2D.length1) - 1 do
            dotProduct matrix.[i, 0..] vector|]


    let matrixInnerProduct (matrix1 : float [,]) (matrix2 : float [,]) : float [,] =

        [|
            for i = 0 to(matrix2 |> Array2D.length2) - 1 do
                printfn "product of %A and %A" matrix1 matrix2.[0.., i]
                yield matrixVectorProduct matrix1 matrix2.[0.., i]
        |]
        |> array2D
        |> transpose

