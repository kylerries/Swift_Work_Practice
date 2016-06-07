//
//  main.swift
//  Chap3
//
//  Created by Kyler Ries on 5/27/15.
//  Copyright (c) 2015 Kyler Ries. All rights reserved.
//

import Foundation // use cocoa/cocoa touch foundation framework

// create and configure a NSNumberFormatter for currency values
var formatter = NSNumberFormatter()
formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle


// function to return a String to represent Account's info
func formatAccountString(account: Account) -> String {
    return account.name + "'s balance: " + formatter.stringFromNumber(account.balance)!
    
}

    // create 2 Accounts objects
    let account1 = Account(name: "Kyler Ries", balance: 50.00)
    let account2 = Account(name: "Cindy Ries", balance: -7.53)
    
    // display initial balance of each Account
    println(formatAccountString(account1))
    println(formatAccountString(account2))

// test deposit method
var depositAmmount = 25.53

println("\ndepositing " + formatter.stringFromNumber(depositAmmount)! +
    " into account\n")
account1.deposit(depositAmmount)

println(formatAccountString(account1))
println(formatAccountString(account2))

var depositAmount = 123.45
println("\ndepositing " + formatter.stringFromNumber(depositAmount)! +
    " into account2\n")
account2.deposit(depositAmount)

println(formatAccountString(account1))
println(formatAccountString(account2))

// test Account's withdraw method
var withdrawalAmount = 14.27

println("\nwithdrawing " + formatter.stringFromNumber(withdrawalAmount)! +
    " from account1\n")
account1.withdraw(withdrawalAmount)

println(formatAccountString(account1))
println(formatAccountString(account2))

withdrawalAmount = 100.00
println("\nwithdrawing " + formatter.stringFromNumber(withdrawalAmount)! +
    " from account2\n")
account2.withdraw(withdrawalAmount)

println(formatAccountString(account1))
println(formatAccountString(account2))


    
    
    



