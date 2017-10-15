//
//  ViewController.swift
//  TipCalcbasic
//
//  Created by Charnpreet Singh on 10/8/17.
//  Copyright © 2017 Charnpreet Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var actualTipAmount: UILabel!
    @IBOutlet var totalBillAmount: UILabel!
    @IBOutlet var initalBillAmount: UITextField!
    @IBOutlet weak var tipIndex: UISegmentedControl!
    
    let tipValues = [0.10, 0.15, 0.20]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let keyboardDismiss = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        self.view.addGestureRecognizer(keyboardDismiss)
    }
    
    @objc func dismissKeyboard() {
        initalBillAmount.endEditing(true)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func updateTipValue(_ sender: Any) {
        print("tip percent updated")
        let bill = Double(initalBillAmount.text!) ?? 0
        let tip = bill * tipValues[tipIndex.selectedSegmentIndex]
        actualTipAmount.text = String(format: "$%.2f", tip)
        totalBillAmount.text = String(format: "$%.2F", tip + bill)
    }

    @IBAction func helloWorld(_ sender: Any) {
        print("Hello world! The app works!")
    }
    
    @IBAction func billAmountEntered(_
        sender: Any) {
        print("bill amount entered")
        let bill = Double(initalBillAmount.text!) ?? 0
        let tip = bill * tipValues[tipIndex.selectedSegmentIndex]
        actualTipAmount.text = String(format: "$%.2f", tip)
        totalBillAmount.text = String(format: "$%.2F", tip + bill)
    }
}

