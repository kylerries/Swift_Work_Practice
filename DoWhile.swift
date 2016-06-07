//
//  DoWhile.swift
//  
//
//  Created by Kyler Ries on 6/9/15.
//
//

import Foundation

// format a string right allignment\
func rightAlignedString(string: String, fieldWidth: Int) -> String {
    let spaces: Int = fieldWidth - count(string)
    let padding = String(count: spaces, repeatedValue: Character(" "))
    return padding + string
}

// create and configure number formatter for currency values
var formatter = NSNumberFormatter()
formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle

var ammount = 1000.00 // initial ammount before interest
let rate = 0.05 // interest rate

// display headers
println(String(format:"%@%@", "Year",
    rightAlligedString("Amount on diposit", 20)))

// calculate amount on deposit for each of the ten years
for year in 1...5 {
    //calculate new Amount
    amount *= (1.0 + rate)
    
    // display the year and the amount
    println(String(format: "%4d%@" , year ,
        rightAlligedString(formatter.stringFromNumber(amount)!, 20)))
}
