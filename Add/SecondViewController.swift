//
//  SecondViewController.swift
//  Add
//
//  Created by english on 2019-10-25.
//  Copyright © 2019 Moyses. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var result = 0;
    @IBOutlet weak var ans: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        ans.text = String(result);
        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        ans.text = "";
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
