//
//  ViewController.swift
//  Calculator
//
//  Created by english on 2019-10-09.
//  Copyright © 2019 english. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var num1 = 0.0;
    var num2 = 0.0;
    var oper = "";
    
    @IBOutlet weak var answer: UILabel!
    
    @IBAction func mainButton(sender: UIButton) {
        if(!answer.text!.contains(".") && sender.tag == 77){
             answer.text = answer.text! + ".";
        }else if sender.tag != 77{
            answer.text = answer.text! + String(sender.tag);
        }
    }
    
    @IBAction func btnOper(sender: UIButton) {
        num1 = Double(answer.text!)!;
        answer.text = "";
        if sender.tag == 11{
            oper = "+";
        }else if sender.tag == 22{
            oper = "-";
        }else if sender.tag == 33{
            oper = "*";
        }else if sender.tag == 44{
            oper = "/";
        }else if sender.tag == 55{
            oper = "%";
        }else if sender.tag == 66{
            answer.text = String(num1 * -1)
        }
        
    }
    
    @IBAction func btnClear(_ sender: Any) {
        num1 = 0.0;
        num2 = 0.0;
        answer.text = "";
        
    }
    
    @IBAction func btnDot(_ sender: Any) {
        
    }
    
    @IBAction func equal(_ sender: Any) {
        num2 = Double(answer.text!)!;
        
        switch oper {
        case "+":
            answer.text = String(num1 + num2);
        case "-":
            answer.text = String(num1 - num2);
        case "*":
            answer.text = String(num1 * num2);
        case "/":
            answer.text = String(num1 / num2);
        case "%":
            answer.text = String((num1 / 100) * num2);
        default: break;
        }
    }
}

