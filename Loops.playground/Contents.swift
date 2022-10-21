import UIKit

var myNumber = 1

myNumber = myNumber + 1

myNumber += 1

var number = 0

//While loop

while number <= 10 {
    //print(number)
    number += 1
}

3 < 5

5 < 3

5 > 3

5 == 5

4 != 5

//For Loop most usage with Arrays
var myFruitArray = ["banana", "apple", "orange"]

//one by one . But we can use for loop .print(myFruitArray[0])



//Go to myFruitArray and take everything in the array and copy them all on fruit named variable.
for fruit in myFruitArray {
    print(fruit)
}


var myNumbers = [10,20,30,40,50] //Divide with 5

for numberFive in myNumbers {
    print(numberFive / 5)
}

for myNewInt in 1 ... 5 {
    print(myNewInt * 5)
}
