// Playground - noun: a place where people can play

import UIKit

//You use variables to store values. When you create a variable, you always use the following syntax:

// var yourVariableName: yourType = yourInitialValue


var sum1: Int = 5
var add: Int = 3
var add2: Int = 2

sum1 = add + add2

var favoriteGame: String = "My favorite video game is Chop Chop."
favoriteGame = "Chop Chop"

//Challenge: Make a constant named favoriteNumber of type Int, and set the value to your favorite number.

let favoriteNumber: Int = 5
let favoriteNumber2: String = "five"
let favoriteNumber3: Double = 5.00
let favoriteNumber4: Bool = true

if favoriteNumber4 != false
{
    "true"
}

if favoriteNumber3 != 6.00
{
    "Wrong guess"
}

if Double(favoriteNumber) <= Double(favoriteNumber3)
{
    "You got it right"
}

//Challenge: Try adding a new variable for Spiderman called spidermanCoolness and give him a coolness value. Then try using some of the comparison operators (like >, <, ==, &&, and ||) to compare Spiderman's coolness to other superheroes. (Notice that I made batmanCoolness a constant so you can’t change it ;) )


let batmanCoolness = 10
var supermanCoolness = 9
var aquamanCoolness = 1

batmanCoolness < aquamanCoolness
supermanCoolness >= 8
batmanCoolness == (aquamanCoolness + supermanCoolness)
batmanCoolness > aquamanCoolness && batmanCoolness == (aquamanCoolness + supermanCoolness)
batmanCoolness < supermanCoolness || aquamanCoolness < supermanCoolness

var spiderManCoolness = 12

spiderManCoolness < batmanCoolness
spiderManCoolness > aquamanCoolness
batmanCoolness == (spiderManCoolness + supermanCoolness)

if (batmanCoolness > spiderManCoolness) {
    spiderManCoolness = spiderManCoolness - 1
}
else if (batmanCoolness >= spiderManCoolness) {
    spiderManCoolness = spiderManCoolness - 1
}
else {
    spiderManCoolness = spiderManCoolness + 1
}

//Challenge: Create your own control flow statements using the superheroes from the last example. Remember, none of the if or else if statements have to be true. The program will either perform the else statement if you have one, or just move on to what is next in the program. 

if (supermanCoolness > batmanCoolness)
{
    supermanCoolness = batmanCoolness + 1
}
    else if (batmanCoolness > spiderManCoolness)
{
    supermanCoolness = batmanCoolness + 1
}
    else
{
    spiderManCoolness = batmanCoolness  + 2
}

var apples = 5
println("Sally has \(apples) apples")

println("Kyler has \(apples - 4) apple")

//Challenge: Now it’s time to combine some of the concepts that you have learned. Create two variables for grades for students in a class: John’s grade (95), and Sam’s Grade (85). Then make an if/else statement that compares John’s and Sam’s grade, and prints out whether John’s grade is less than, greater than, or equal to Sam’s grade. You can do it! 

var SamsGrade: Int = 95
var JohnsGrade: Int = 85

if SamsGrade == JohnsGrade {
    println("Johns Grade is the same as Sams Grade")
}
else if SamsGrade < JohnsGrade {
    println("Sams grade is less than Johns Grade")
}
else {
    println("John has a better grade than Sam.")
}

//While loops


var secondsLeft = 3
while (secondsLeft > 0) {
    println(secondsLeft)
    secondsLeft = secondsLeft - 1
}
println("Blast off!")

var minutesLeft = 10
while (minutesLeft > 0){
    println(minutesLeft)
    minutesLeft = minutesLeft - 1
}

println("Time to go home.")

//continue statement

var numbers = 0
while(numbers <= 10)  {
    if(numbers == 9)  {
        numbers = numbers + 1
        continue
    }
    println(numbers)
    numbers = numbers + 1
}


//Challenge: Use continue in your own loop. Find a reason to have a specific value miss commands that other values have to execute and use the continue statement to go to the top of the loop.



println("List of Super Bowls:")
var sbowlI = 1
while(sbowlI <= 12)  {
    if(sbowlI == 10 || sbowlI == 11)  {
        sbowlI = sbowlI + 1
        continue
    }
    println("World War \(sbowlI)")
    sbowlI = sbowlI + 1
}
println("Super Bowl 12 was not worth mentioning")

//optionals

var optionalNumber: Int? = 5
optionalNumber = nil





//Challenge: Try this out yourself. Write an if let statement for optionalNumber to print different Strings if it contains a value or if it is nil.

var optionalNumber2: Int? = 5
optionalNumber2 = nil

if let number = optionalNumber {
    println("It's a number")
}
else {
    println("It is not a number")
}


//Conversion Between Data Types



var languagesLearned: String = "3"
var languagesLearnedNum: Int? = languagesLearned.toInt()







