//
//  ViewController.swift
//  PREWORK_IOSUNIVERSITY
//
//  Created by Ram Charan Teja on 8/31/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
                
                let tipPercentages = [0.10,0.15,0.20]
                let tip = bill*tipPercentages[tipControl.selectedSegmentIndex]
                
                let total = bill+tip
                tipAmountLabel.text = String(format: "$%.2f",tip)
                
                totalLabel.text = String(format: "$%.2f", total)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

