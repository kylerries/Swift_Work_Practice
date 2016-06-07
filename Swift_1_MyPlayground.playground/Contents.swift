//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
println("Kyler, welcome to swift programming")
print ("These two strings will ") //print doesn't create line break
println("be joined")
//printing multiple lines with one line of code : this fails!!
println("The\nred\ndog\nfoundthe\nham bone")
//inserting content into string
let name = "Paul"
println("It was nice to see \(name)")

// fig02-07: Addition program that displays the sum of two integers
let number1 = 45 // keyword let declares a constant
let number2 = 72
let sum = number1 + number2

println("number1 = \(number1)")
println("number2 = \(number2)")
println("sum = \(sum)")

//let number3 = 1000
//let number4 = 2000

let number3 = 1000
let number4 = 1000

if number3 == number4 {
    println("Wow")
}

if number3 != number4 {
    println("Yes we are different")
} else {
    println("We are not different")
}

if number3 >= number4 {
    println("Yes to greater than or equal to")
}

if number3 <= number4 {
    println("You have it right")
}

