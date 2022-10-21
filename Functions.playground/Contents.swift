import UIKit

func myFunction(){
    print("my funciton")
}

myFunction()

// Input Output Return

func sumfunction(x :Int, y : Int) -> Int
{
    return x + y
}

let myFunctionVariable = sumfunction(x: 10, y: 20)
print(myFunctionVariable)

func logicFunction(a : Int, b :Int) -> Bool
{
    if a > b{
        return true
    }
    else {
        return false
    }
}
logicFunction(a: 10, b: 0)
