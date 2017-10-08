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

    @IBAction func helloWorld(_ sender: Any) {
        print("Hello world! The app works!")
    }
    
    @IBAction func billAmountEntered(_ sender: Any) {
        print("bill amount entered")
    }
}

