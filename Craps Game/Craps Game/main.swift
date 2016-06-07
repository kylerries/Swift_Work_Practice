//
//  main.swift
//  Craps Game
//
//  Created by Kyler Ries on 6/14/15.
//  Copyright (c) 2015 Kyler Ries. All rights reserved.
//

import Foundation
import Darwin

// simulation for the dice game craps
// emunumeration representing won or lost or continue
enum Status {
    case Continue, Won, Lost
}

// enum with Int constants representing common dice totals
enum DiceNames: Int {
    case SnakeEyes = 2
    case Trey = 3
    case Seven = 7
    case YoLeven = 11
    case BoxCars = 12
    
}

// func that rolls two dice and returns them and their sum as a tuple
func rollDice() -> (die1: Int, die2: Int, sum: Int) {
    let die1 = Int(1 + arc4random_uniform(6)) // first roll of the die
    let die2 = Int(1 + arc4random_uniform(6)) // second roll of the die
    return (die1, die2, die1 + die2)
}

// display the dice roll
func displayRoll(roll: (Int, Int, Int)) {
    println("Player rolled \(roll.0) + \(roll.1) = (roll.2)")
}

// play one game
var myPoint = 0 //point if no win or loss
var gameStatus = Status.Continue // can contain Continue, won or loss

var roll = rollDice() // first roll of dice
displayRoll(roll) // display the two dice and the sum

// determine game status and point based on first roll
switch roll.sum {
    // win on first roll
    case DiceNames.Seven.rawValue, DiceNames.YoLeven.rawValue: gameStatus = Status.Won
    case DiceNames.SnakeEyes.rawValue, DiceNames.Trey.rawValue,DiceNames.BoxCars.rawValue:
    gameStatus = Status.Lost
    // did not win or lose, so remember the point
    default:
        gameStatus = Status.Continue // game is not over
        myPoint = roll.sum // remember the point
        println("Point is  \(myPoint)")
}

// While game is not over
while gameStatus == Status.Continue
{
    roll = rollDice() // first roll of the dice
    displayRoll(roll) // diplay the two dice an the sum
    
    // determine game status
    if roll.sum == myPoint { // won by making point
        gameStatus = Status.Won
    }
    else {
        if (roll.sum == DiceNames.Seven.rawValue){ // lost by rolling 7
            gameStatus = Status.Lost
        }
    }
}
   // display won or lost message
if gameStatus == Status.Won {
    println("Player Wins")
    }
else {
    println("Player loses")
}



