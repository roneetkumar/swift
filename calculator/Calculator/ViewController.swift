//
//  ViewController.swift
//  Calculator
//
//  Created by english on 2019-09-20.
//  Copyright © 2019 english. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var val1: UITextField!
    @IBOutlet weak var val2: UITextField!
    
    @IBOutlet weak var result: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func add(_ sender: Any) {
        if let a = Int(val1.text!){
            if let b = Int(val2.text!){
                  result.text = String(a + b)
            }else{
                 result.text = "Enter number in val 2"
            }
        }else{
            result.text = "Enter number in val 1"
        }
        val1.text = ""
        val2.text = ""
    }

    @IBAction func sub(_ sender: Any) {
        if let a = Int(val1.text!){
            if let b = Int(val2.text!){
                result.text = String(a - b)
            }else{
                result.text = "Enter number in val 2"
            }
        }else{
            result.text = "Enter number in val 1"
        }
        val1.text = ""
        val2.text = ""
    }
    @IBAction func mul(_ sender: Any) {
        if let a = Int(val1.text!){
            if let b = Int(val2.text!){
                result.text = String(a * b)
            }else{
                result.text = "Enter number in val 2"
            }
        }else{
            result.text = "Enter number in val 1"
        }
        val1.text = ""
        val2.text = ""
    }
    @IBAction func div(_ sender: Any) {
        if let a = Int(val1.text!){
            if let b = Int(val2.text!){
                result.text = String(a / b)
            }else{
                result.text = "Enter number in val 2"
            }
        }else{
            result.text = "Enter number in val 1"
        }
        val1.text = ""
        val2.text = ""
    }
}

