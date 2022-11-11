//
//  main.swift
//  AdvancedSwiftProject
//
//  Created by Bertuğ Horoz on 11.11.2022.
//

import Foundation

let classJames = MusicianClass(nameInput: "James", ageInput: 50, instrumentInput: "Guitar")

//print(classJames.age)

var structJames = MusicianStruct(name: "bertug", age: 24, intrument: "flut")

//print(structJames.age)


classJames.age = 61
//print(classJames.age)

structJames.age = 61
//print(structJames.age)


let copyOfClassJames = classJames

var copyOfStructJames = structJames

//print(copyOfClassJames.age)
//print(copyOfStructJames.age)

//copyOfClassJames.age = 52
//copyOfStructJames.age = 52

//print(copyOfClassJames.age)
//print(copyOfStructJames.age)

//print(classJames.age)
//print(structJames.age)


//print(classJames.age)
classJames.happyBirthDay()
//print(classJames.age)

//print(structJames.age)
structJames.happyBirthday()
//print(structJames.age)

let myTuple = (1,3)
//print(myTuple.1)


var myTuple2 = (1,3,5)
myTuple2.2 = 10
//print(myTuple2.2)

let mytuple3 = ("bertug", 61)

let mytuple4 = (61, [10,20,30,40])
//print(mytuple4.1[1])

let predefinedTuple : (String, String)

predefinedTuple.0 = "bertug"
predefinedTuple.1 = "horoz"
//print(predefinedTuple.0 , predefinedTuple.1)

let newtuple = (name: "bertug", mettalica: true)
//print(newtuple.name)
//print(newtuple.mettalica)


//Guard Let vs If Let


let myString = "Apple"

func converToIntGuard(stringInput : String) -> Int{
    guard let myInt = Int(stringInput) else {
        return 0
    }
    return myInt
}

func convertoIntIf(stringInput : String) -> Int{
    if let myInt = Int(stringInput){
        return myInt
    }else{
        return 0
    }
}

//print(convertoIntIf(stringInput: myString))
//print(converToIntGuard(stringInput: myString))


let myNum = 11

let myRemainder = myNum % 4

print(myRemainder)
/*
if myRemainder == 1 {
    print("it's 1")
}else if myRemainder == 2{
    print("it's 2")
}else if myRemainder == 3{
    print("it's 3")
}
*/
switch myRemainder{
case 1:
    print("it's 1")
case 2:
    print("it's 2")
case 3:
    print("it's 3")
default:
    print("none of these")
}


var x = 5
print(x)

x += 1

print(x)


