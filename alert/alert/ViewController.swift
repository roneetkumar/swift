//
//  ViewController.swift
//  alert
//
//  Created by english on 2019-10-30.
//  Copyright © 2019 god. All rights reserved.
//

import UIKit

class ViewController: UIViewController { 
    @IBOutlet weak var textUser: UITextField!
    @IBOutlet weak var textPass: UITextField!
    @IBOutlet weak var textPass2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func makeAlert(alert : String){
        let alert = UIAlertController(title: "Error", message: "\(alert)", preferredStyle: UIAlertController.Style.alert)
        let okBtn = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {(UIAlertAction) in print("Clicked")})
        
        alert.addAction(okBtn)
        
        self.present(alert,animated: true,completion: nil)
    }

    @IBAction func btnLogin(_ sender: Any) {
        
        if textUser.text!.isEmpty {
            makeAlert(alert: "Enter Username")
        }
        else if textPass.text!.isEmpty{
            makeAlert(alert: "Enter Password")
        }
        else if textPass2.text!.isEmpty{
            makeAlert(alert: "Re-Enter Password")
        }
        else if textPass.text != textPass2.text{
            makeAlert(alert: "Password do not match")
        }
        else{
            let alert = UIAlertController(title: "Login", message: "Successfully Login", preferredStyle: UIAlertController.Style.alert)
            
            let okBtn = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {(UIAlertAction) in self.performSegue(withIdentifier: "login", sender: nil)})
            
            alert.addAction(okBtn)
            
            self.present(alert,animated: true,completion: nil)
        }
    }

   
}

