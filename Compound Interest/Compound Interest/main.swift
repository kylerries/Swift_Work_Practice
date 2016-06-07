//
//  main.swift
//  Compound Interest
//
//  Created by Kyler Ries on 6/9/15.
//  Copyright (c) 2015 Kyler Ries. All rights reserved.
//


import Foundation

// format a String right aligned in a field
func rightAlignedString(string: String, fieldWidth: Int) -> String {
    let spaces: Int = fieldWidth - count(string)
    let padding = String(count: spaces, repeatedValue: Character(" "))
    return padding + string
}

// create and configure an NSNumberFormatter for currency values
var formatter = NSNumberFormatter()
formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle

var amount = 1000.0 // initial amount before interest
let rate = 0.05 // interest rate

// display headers
println(String(format:"%@%@", "Year",
    rightAlignedString("Amount on deposit", 20)))

// calculate amount on deposit for each of ten years
for year in 1...10 {
    // calculate new amount for specified year
    amount *= (1.0 + rate)
    
    // display the year and the amount
    println(String(format:"%4d%@", year,
        rightAlignedString(formatter.stringFromNumber(amount)!, 20)))
}

println()

for var counter = 2; counter <= 20; counter += 2 {
    print("\(counter) ")
}

println()
println()

for var counter2 = 3; counter2 >= -42; counter2 += -3 {
    print("\(counter2) ")
}

println()
println()

for var counter3 = 4; counter3 <= 56; counter3++ {
    print("\(counter3) ")
}

println()
println()

