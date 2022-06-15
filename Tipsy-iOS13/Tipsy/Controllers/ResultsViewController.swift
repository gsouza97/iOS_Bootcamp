//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Gabriel Souza on 14/06/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var resultValue: String?
    var numberOfPeople: String?
    var tipPercentage: String?
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let resultValue = resultValue, let numberOfPeople = numberOfPeople, let tipPercentage = tipPercentage {
            totalLabel.text = resultValue
            settingsLabel.text = "Split between \(numberOfPeople) people, with \(tipPercentage)% tip."
        }
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
