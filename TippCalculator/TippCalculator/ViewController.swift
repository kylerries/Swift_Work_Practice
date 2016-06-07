//
//  ViewController.swift
//  TippCalculator
//
//  Created by Kyler Ries on 6/25/15.
//  Copyright (c) 2015 Kyler Ries. All rights reserved.
//

import UIKit

class ViewController: UIKit.UIViewController {
    
    @IBAction func taxPercentageChanged(sender : AnyObject) {
        tipCalc.taxPct = Double(taxPctSlider.value) / 100.0
        refreshUI()
    }
    @IBAction func viewTapped(sender : AnyObject) {
        totalTextField.resignFirstResponder()
    }
    
    @IBAction func calculateTapped(sender : AnyObject) {
        // 1
        tipCalc.total = Double((totalTextField.text as NSString).doubleValue)
        // 2
        let possibleTips = tipCalc.returnPossibleTips()
        var results = ""
        // 3
        for (tipPct, tipValue) in possibleTips {
            // 4
            results += "\(tipPct)%: \(tipValue)\n"
        }
        // 5
        resultsTextView.text = results
    }
    
    
   // @IBAction func calculateTapped(sender : AnyObject) {
  //  }
   // @IBAction func taxPercentageChanged(sender : AnyObject) {
   // }
  //  @IBAction func viewTapped(sender : AnyObject) {
  //  }

    @IBOutlet var totalTextField : UITextField!
    @IBOutlet var taxPctSlider : UISlider!
    @IBOutlet var taxPctLabel : UILabel!
    @IBOutlet var resultsTextView : UITextView!
     let tipCalc = TippCalculatorModel(total: 33.25, taxPct: 0.06)
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        refreshUI()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func refreshUI() {
        // 1
        totalTextField.text = String(format: "%0.2f", tipCalc.total)
        // 2
        taxPctSlider.value = Float(tipCalc.taxPct) * 100.0
        // 3
        taxPctLabel.text = "Tax Percentage (\(Int(taxPctSlider.value))%)"
        // 4
        resultsTextView.text = ""
    }


}

