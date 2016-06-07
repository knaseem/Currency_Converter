//
//  ViewController.swift
//  Currency_Converter
//
//  Created by Khalid Naseem on 04/06/2016.
//  Copyright © 2016 Khalid Naseem. All rights reserved.
//
// Added Currency Symbols

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBAction func clearLabel(sender: UIButton) {
        inputTextField.text = ""
        poundLabel.text = "£"
        yenLabel.text = "¥"
        euroLabel.text = "€"
        
    }
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var poundLabel: UILabel!
    
    @IBAction func convertCurrency(sender: UIButton) {
        if let amount = Double(inputTextField.text!) {
            dollarAmount = amount
        }
        poundLabel.text = "\(dollarAmount * poundRate)"
        yenLabel.text = "\(dollarAmount * yenRate)"
        euroLabel.text = "\(dollarAmount * euroRate)"
        dollarAmount = 0.0
    }
    let poundRate = 0.69
    let yenRate = 113.94
    let euroRate = 0.89
    var dollarAmount = 0.0

    override func viewDidLoad() {
        inputTextField.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // Called when 'return' key is pressed
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // Called when user taps outside the text field
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

