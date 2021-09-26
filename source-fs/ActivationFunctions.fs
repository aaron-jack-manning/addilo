namespace Addilo

open System
open Microsoft.FSharp.Core.Operators.Checked

module ActivationFunctions = 

    type ActivationFunctionPair = {func : float -> float; derivative : float -> float}

    let sigmoid =
        {
            func = (fun x -> 1.0 / (1.0 + (exp -x)));
            derivative = (fun x -> (exp -x) / (1.0 + (exp (-2.0 * x)) + 2.0 * (exp -x)))
        }

    let relu =
        {
            func = (fun x -> if x > 0.0 then x else 0.0);
            derivative = (fun x -> if x > 0.0 then 1.0 else 0.0)
        }

    let tanh = 
        {
            func = (fun x -> 2.0 / (1.0 + exp (-2.0 * x)) - 1.0);
            derivative = (fun x -> (4.0 * (exp -2.0 * x)) / (((exp (-2.0 * x)) + 1.0)**2.0))
        }

    let arctan =
        {
            func = (fun x -> atan x);
            derivative = (fun x -> 1.0 / (x**2.0 + 1.0))
        }

    let leakyrelu =
        {
            func = (fun x -> if x > 0.0 then x else 0.1 * x);
            derivative = (fun x -> if x > 0.0 then 1.0 else 0.1)
        }

    let softplus =
        {
            func = (fun x -> log (1.0 + (exp x)));
            derivative = (fun x -> 1.0 / (1.0 + (exp -x)))
        }

    let swish =
        {
            func = (fun x -> x / (1.0 + (exp -x)));
            derivative = (fun x -> (1.0 + (exp -x) + x * (exp -x)) / (1.0 + 2.0 * (exp -x) + (exp -2.0 * x)))
        }
