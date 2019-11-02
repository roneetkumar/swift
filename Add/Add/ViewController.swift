//
//  ViewController.swift
//  Add
//
//  Created by english on 2019-10-25.
//  Copyright © 2019 Moyses. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        num1.text = "";
        num2.text = "";
    }

    var ans = 0;
    @IBAction func calculate(_ sender: Any) {
        ans = Int(num1.text!)! + Int(num2.text!)!;
        performSegue(withIdentifier: "calc", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "calc"{
            let destination = segue.destination as! SecondViewController
            destination.result = ans;
        }
    }
    
}

