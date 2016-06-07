//
//  ViewController.swift
//  FirstCalculator
//
//  Created by Kyler Ries on 12/24/14.
//  Copyright (c) 2014 Kyler Ries. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
     @IBOutlet var labelScreen: UILabel!
    
     @IBOutlet var ButtonZero: UIButton!
     @IBOutlet var ButtonOne: UIButton!
     @IBOutlet var ButtonTwo: UIButton!
     @IBOutlet var ButtonThree: UIButton!
     @IBOutlet var ButtonFour: UIButton!
     @IBOutlet var ButtonFive: UIButton!
     @IBOutlet var ButtonSix: UIButton!
     @IBOutlet var ButtonSeven: UIButton!
     @IBOutlet var ButtonEight: UIButton!
     @IBOutlet var ButtonNine: UIButton!
    
     @IBOutlet var ButtonEquals: UIButton!
     @IBOutlet var ButtonDot: UIButton!
     @IBOutlet var ButtonPlus: UIButton!
     @IBOutlet var ButtonMinus: UIButton!
     @IBOutlet var ButtonDivide: UIButton!
     @IBOutlet var ButtonMultply: UIButton!
    
     @IBOutlet var ButtonClear: UIButton!
    
    var currentNumberPressed : Int = 0
    var currentStoredNumber: Double = 0 //store second number entered
    var previousStoredNumber: Double = 0 //store first number entered
    
    var total: Double = 0 //store total of calculation
    var currentOperation: String = "none"
    var previousOperationPressed: String = "none"
    var numberOfDecimalDigits: Int = 0
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ButtonOne.addTarget(self, action: "numberPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        ButtonTwo.addTarget(self, action: "numberPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        ButtonThree.addTarget(self, action: "numberPressed:",forControlEvents: UIControlEvents.TouchUpInside)
        ButtonFour.addTarget(self, action: "numberPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        ButtonFive.addTarget(self, action: "numberPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        ButtonSix.addTarget(self, action: "numberPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        ButtonSeven.addTarget(self, action: "numberPressed:",forControlEvents: UIControlEvents.TouchUpInside)
        ButtonEight.addTarget(self, action: "numberPressed:",forControlEvents: UIControlEvents.TouchUpInside)
        ButtonNine.addTarget(self, action: "numberPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        ButtonZero.addTarget(self, action: "numberPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        
        ButtonDot.addTarget(self, action: "operationPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        ButtonEquals.addTarget(self, action: "operationPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        ButtonDivide.addTarget(self, action: "operationPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        ButtonPlus.addTarget(self, action: "operationPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        ButtonMinus.addTarget(self, action: "operationPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        ButtonMultply.addTarget(self, action: "operationPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        
        ButtonClear.addTarget(self, action: "clear:", forControlEvents: UIControlEvents.TouchUpInside)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberPressed(sender: UIButton!)
    {
        
        currentNumberPressed = sender.tag
        //let numberAsText = "\(currentNumberPressed)"
        //labelScreen.text = numberAsText
        switch (currentOperation)
        {
        case "none":
            currentStoredNumber = currentStoredNumber * 10 + Double(currentNumberPressed)
            total = currentStoredNumber
        case "plus", "minus", "multiply", "divide":
            currentStoredNumber = currentStoredNumber * 10 + Double(currentNumberPressed)
            total = currentStoredNumber
        case "dot":
                if (numberOfDecimalDigits < 1)
                {
                    numberOfDecimalDigits = 1
                }
                else
                {
                    numberOfDecimalDigits = numberOfDecimalDigits * 10
                }
                let decimalToAdd = (Double(currentNumberPressed) / Double(10 * numberOfDecimalDigits))
                    currentStoredNumber = currentStoredNumber + decimalToAdd
                    total = currentStoredNumber
        default: total = total + 0
        }
        
        UpdateDisplayScreen()
    }
    
    func operationPressed(sender: UIButton!)
    {
        
        switch(sender.tag)
        {
        case 1: previousOperationPressed = currentOperation
            currentOperation = "plus"
            ResetValuesAfterOperationPressed()
    
        case 2: previousOperationPressed = currentOperation
            currentOperation = "minus"
            ResetValuesAfterOperationPressed()
    
        case 3: previousOperationPressed = currentOperation
            currentOperation = "multiply"
            ResetValuesAfterOperationPressed()
    
        case 4: previousOperationPressed = currentOperation
            currentOperation = "divide"
            ResetValuesAfterOperationPressed()
    
        case 5: //currentOperation = "equal"
            numberOfDecimalDigits = 9
            calculateNow()
    
        case 6:if (currentOperation != "dot")
            {
            previousOperationPressed = currentOperation
            }
            currentOperation = "dot"
         default:currentOperation = "none"
        }
        
        UpdateDisplayScreen()
        
        
    }
    func  UpdateDisplayScreen()
    {
        
        var precision: Int = 0
        if (numberOfDecimalDigits < 10)
        {
            precision = numberOfDecimalDigits
        }
        else if (numberOfDecimalDigits == 10)
        {
            precision = 2
        }
        else
        {
            var digits = String(numberOfDecimalDigits)
            var decimals = digits.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)
            precision = decimals
        }
        if(currentOperation == "equal")
        {
          precision = 4
        }
    
       switch (precision) // this code controls decimal point precision
        {
        case 0: labelScreen.text = String(format: "%.0f", total)
        case 1: labelScreen.text = String(format: "%.1f", total)
        case 2: labelScreen.text = String(format: "%.2f", total)
        case 3: labelScreen.text = String(format: "%.3f", total)
        case 4: labelScreen.text = String(format: "%.4f", total)
        /* case 5: labelScreen.text = String(format: "%.5f", total)
        case 6: labelScreen.text = String(format: "%.6f", total)
        case 7: labelScreen.text = String(format: "%.7f", total)
        case 8: labelScreen.text = String(format: "%.8f", total)
        case 9: labelScreen.text = String(format: "%.9f", total)
        case 10:labelScreen.text = String(format: "%.10f", total) */
        default:labelScreen.text = String(format: "%.4f", total)
        }
    }

    func calculateNow(){
        
        switch (currentOperation){
            
            case "none":
                total = currentStoredNumber
        case "plus":
            total = previousStoredNumber + currentStoredNumber
            
        case "multiply":
            total = previousStoredNumber * currentStoredNumber
            
        case "minus":
            total = previousStoredNumber - currentStoredNumber
            
        case "divide":
            total = previousStoredNumber / currentStoredNumber
            case "dot":
                if (previousOperationPressed == "plus")
                    {
                        total = previousStoredNumber + currentStoredNumber
                    } else if (previousOperationPressed == "minus")
                    {
                        total = previousStoredNumber - currentStoredNumber
                    } else if (previousOperationPressed == "multiply")
                    {
                        total = previousStoredNumber * currentStoredNumber
                    } else if (previousOperationPressed == "divide")
                    {
                        total = previousStoredNumber / currentStoredNumber
                    }
                        total = total + 0
                default:
                    total = total + 0
            
                }
            UpdateDisplayScreen()
    }

    func ResetValuesAfterOperationPressed(){ //clearing operation
        
        previousStoredNumber = currentStoredNumber
        currentStoredNumber = 0
        numberOfDecimalDigits = 0
        
    }

    func clear(sender:UIButton!)
    {
        total = 0
        currentOperation = "none"
        previousOperationPressed = "none"
        currentStoredNumber = 0
        previousStoredNumber = 0
        numberOfDecimalDigits = 0
        previousOperationPressed = "none"
        UpdateDisplayScreen()
        
    }
}








