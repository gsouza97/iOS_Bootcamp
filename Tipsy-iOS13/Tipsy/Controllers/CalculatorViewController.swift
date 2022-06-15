//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.10
    var numberOfPeople = 2.0

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        
        let buttonTitleAsNumber = Double(sender.currentTitle!.dropLast())
        tip = buttonTitleAsNumber!/100
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        numberOfPeople = sender.value
        let splitValueFormatted = String(format: "%.0f", sender.value)
        splitNumberLabel.text = splitValueFormatted
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        if let bill = billTextField.text {
            let result = Double(bill)! * (1 + tip) / numberOfPeople
            let finalResult = String(format: "%.2f", result)
            print(finalResult)
        }
    }
    
}

