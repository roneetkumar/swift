//
//  Level.swift
//  What?
//
//  Created by english on 2019-11-22.
//  Copyright © 2019 english. All rights reserved.
//

import Foundation


class Question{
    private var question : String;
    private var answer : String;

    init(question : String ,answer : String) {
        self.question = question;
        self.answer = answer;
    }
    
    public func getQuestion() -> String{
        return self.question
    }
    
    public func getAnswer() -> String{
        return self.answer
    }
        
}



