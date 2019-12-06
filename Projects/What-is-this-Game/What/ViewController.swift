//
//  ViewController.swift
//  What?
//
//  Created by english on 2019-11-22.
//  Copyright © 2019 english. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let questions = Questions();
    var count = 0;
    var score  = 0;
    var proCount = 1;
    
    @IBOutlet weak var quesLb: UILabel!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var scoreTxt: UILabel!
    @IBOutlet weak var proTxt: UILabel!
    @IBOutlet weak var progress: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //INITIAL QUESTION
        quesLb.text = questions.getAllQuestions()[0].getQuestion();
    }
    
    func makeAlert(alert : String){
        let alert = UIAlertController(title: "", message: "\(alert)", preferredStyle: UIAlertController.Style.alert)
  
        self.present(alert,animated: true,completion: nil)
        
        let deadlineTime = DispatchTime.now() + .seconds(1)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime, execute: {
            alert.dismiss(animated: true, completion: nil)
        })
    }
    
    func restart(){
        let alert = UIAlertController(title: "Restart", message: "Do you want to play again ?", preferredStyle: UIAlertController.Style.alert)
        let yesBtn = UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: {(UIAlertAction) in self.reset()})
        let noBtn = UIAlertAction(title: "No", style: UIAlertAction.Style.default, handler: {(UIAlertAction) in self.performSegue(withIdentifier: "finish", sender: nil)})
        
        alert.addAction(yesBtn)
        alert.addAction(noBtn)
        
        self.present(alert,animated: true,completion: nil)
        
    }
    
    func reset(){
        count = 0;
        score  = 0;
        scoreTxt.text =  "Score : ";
        progress.progress = 0.05
        quesLb.text = questions.getAllQuestions()[0].getQuestion();
    }


    
    // TO CHECK ANSWER AND CHANGE QUESTION
    @IBAction func checkAns(sender: UIButton) {
        if progress.progress == 1 {
            restart()
        }else{
            proCount = proCount + 1
            progress.progress = Float(progress.progress) + 0.05
            proTxt.text = "\(proCount)/20"
            
            let ans =  questions.getAllQuestions()[count].getAnswer();
            count = count + 1
            
            if sender.tag == Int(ans) {
                makeAlert(alert: "Correct Answer")
                quesLb.text = questions.getAllQuestions()[count].getQuestion();
                score = score + 1;
                scoreTxt.text =  "Score : " + String(score);
            }
            else{
                makeAlert(alert: "Incorrect Answer")
                quesLb.text = questions.getAllQuestions()[count].getQuestion();
            }
        }
        
        
    }
}

