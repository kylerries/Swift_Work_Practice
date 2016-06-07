//: Playground - noun: a place where people can play

// if else statements
import Cocoa
var studentGrade = 89


if studentGrade >= 90 {
    println("A")
} else {
    if studentGrade >= 80 {
        println("B")
    } else {
        if studentGrade >= 70 {
            println("C")
        } else {
            if studentGrade >= 60 {
                println("D")
            } else {
                println("F")
            }
        }
    }
}

var studentGrade2 = 90

// if studentGrade2 <= 60 then print Failed else print Passed
println(studentGrade2 <= 60 ? "Failed" : "Passed")

println(studentGrade2 >= 60 ? "Passed" : "Failed")


var c = 5
println("c before post increment: \(c)") // prints 5)
println(" post incrementing c: \(c++)") // prints 5)
println(" after incrementing c: \(c)") //prints 6)
println(c++)

println()

c = 5
println(c)

println()

println(++c)
println(c)

// function to return a numeric grade's letter equivalent
func convertToLetterGrade(grade:Int) -> String {
    var letterGrade = "Invalid grade"
    
    switch grade {
    case 90...100: // grade was 90 to 100
        letterGrade = "A"
    case 80...89: // grade was 80 to 89
        letterGrade = "B"
    case 70...79: // grade was 70 to 79
        letterGrade = "C"
    case 60...69: // grade was 60 to 69
        letterGrade = "D"
    case 50...59: // grade was 50 to 59
        letterGrade = "F"
    default: // grade was not valid
        break
    }
    
    return letterGrade
}

println("Letter grade for 99: \(convertToLetterGrade(99))")
println("Letter grade for 89: \(convertToLetterGrade(89))")
println("Letter grade for 75: \(convertToLetterGrade(75))")
println("Letter grade for 54: \(convertToLetterGrade(54))")
println("Letter grade for -01: \(convertToLetterGrade(-01))")

var product = 3
while product <= 100 {
   product = 3 * product
    
    println(product)
}

// do while loop counter
var counter = 1
do {
    print("\(counter)    ")
        ++counter

} while counter <= 10

println()


// for in loop statement and range operators
for count in 1...5{
    print("\(count) ")
}















