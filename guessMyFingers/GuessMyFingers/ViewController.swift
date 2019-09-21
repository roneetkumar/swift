//
//  ViewController.swift
//  GuessMyFingers
//
//  Created by english on 2019-09-20.
//  Copyright © 2019 english. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textvalue: UITextField!
    @IBOutlet weak var answer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func guess(_ sender: Any) {
    
        if let number = Int(textvalue.text!){
            answer.text = Int.random(in: 1...5) == number ? "You Win" : "You Lose"
        }else{
            answer.text = "Please hold up fingers between 1 to 5"
        }
    }
    

    @IBAction func reset(_ sender: Any) {
        answer.text = "Answer"
        textvalue.text = ""
    }
    
}

