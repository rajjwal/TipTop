//
//  ViewController.swift
//  TipTop
//
//  Created by Rajjwal Rawal on 12/11/16.
//  Copyright © 2016 Rajjwal Rawal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var customTipLabel: UILabel!
    
    
    @IBOutlet weak var total_for_twoLabel: UILabel!
    @IBOutlet weak var total_for_threeLabel: UILabel!
    @IBOutlet weak var total_for_fourLabel: UILabel!
    @IBOutlet weak var total_for_fiveLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let tipPercentage = [0.18, 0.2, 0.25, 0.30]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let twoTotal = total / 2
        let threeTotal = total / 3
        let fourTotal = total / 4
        let fiveTotal = total / 5
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    
        total_for_twoLabel.text = String(format: "$%.2f", twoTotal)
        total_for_threeLabel.text = String(format: "$%.2f", threeTotal)
        total_for_fourLabel.text = String(format: "$%.2f", fourTotal)
        total_for_fiveLabel.text = String(format: "$%.2f", fiveTotal)
        
        
    }

}

