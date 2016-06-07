//
//  main.swift
//  Functions and Methods
//
//  Created by Kyler Ries on 6/14/15.
//  Copyright (c) 2015 Kyler Ries. All rights reserved.
//

import Foundation
import Darwin

// a function that returns the max of three double variables
func maximum(x: Double, y: Double, z: Double) -> Double {
    var maximumValue = x // assumes x is the largest variable to start
    
    // determine whether y is greater than x
    if y > maximumValue {
        maximumValue = y
    }
    // determine if z is greater than max value
    if z > maximumValue {
        maximumValue = z
    }
    
    return maximumValue
}


// test 
println("Maximum of 2.5, 5.6, and 8.9 is:  \(max(2.5, 5.6, 8.9))")

println(max(2.5, 5.6, 8.9))

println("Maximum of 0.9, 6.5 and 3.4 is:  \(maximum(0.9, 6.5, 3.4))")
println("Maximum of 10.8, 5.5, and 10.7 is  \(maximum(10.8, 5.5, 10.7))")

println()
println()

// a function determines minimum value of three double variables
func minimum(x: Double, y: Double, z: Double) -> Double {
   var minimumValue = x
    
    if y < minimumValue {
        minimumValue = y
    }
    
    if z < minimumValue {
        minimumValue = z
    }
    
    return minimumValue
}

println("Minimum of 2.5, 5.6, and 8.9 is:  \(minimum(2.5, 5.6, 8.9))")
println("Minimum of 0.9, 6.5 and 3.4 is:  \(minimum(0.9, 6.5, 3.4))")
println("Minimum of 10.8, 5.5, and 10.7 is  \(minimum(10.8, 5.5, 10.7))")

println()
println()


// simulates rolling a six sided die 20 times
for i in 1...20 {
    print("\(1 + arc4random_uniform(6)) ")
}
