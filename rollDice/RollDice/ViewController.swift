//
//  ViewController.swift
//  RollDice
//
//  Created by english on 2019-09-18.
//  Copyright © 2019 english. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet var main: UIView!
    
    @IBAction func rollBtn(_ sender: Any) {
        rollDice()
    }
    
    @IBAction func resetBtn(_ sender: Any) {
        dice1.image = UIImage(named: "Image-1")
        dice2.image = UIImage(named: "Image-1")
        label.text = ""
        main.backgroundColor = UIColor.yellow
    }
    
    func generateRandom() -> Int{
         return Int.random(in: 1...6)
    }
    
    func rollDice(){
        let randInt1 = generateRandom()
        let randInt2 = generateRandom()
        
        dice1.image = UIImage(named: "Image-\(randInt1)")
        dice2.image = UIImage(named: "Image-\(randInt2)")
        if randInt1 == randInt2 {
            label.text = "You Win!"
            main.backgroundColor = UIColor.cyan
        }else{
            label.text = ""
            main.backgroundColor = UIColor.yellow
        }
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        rollDice()
    }
}

