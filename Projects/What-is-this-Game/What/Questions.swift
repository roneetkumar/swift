//
//  AllLevels.swift
//  What?
//
//  Created by english on 2019-11-22.
//  Copyright © 2019 english. All rights reserved.
//

import Foundation

class Questions{
    
    private let questions: [Question]
    
    init() {
        let q1 = Question(question: "1 + 2 = 3", answer: "1")
        let q2 = Question(question: "3 * 3 = 6", answer: "0")
        let q3 = Question(question: "2 / 2 = 1", answer: "1")
        let q4 = Question(question: "2 * 10 = 200", answer: "0")
        let q5 = Question(question: "2 * 2 * 2 = 8", answer: "1")
        let q6 = Question(question: "color of the sky is red", answer: "0")
        let q7 = Question(question: "is water solid?", answer: "0")
        let q8 = Question(question: "is montreal in canada", answer: "1")
        let q9 = Question(question: "The human body has four lungs.", answer: "0")
        let q10 = Question(question: "Venus is the closest planet to the Sun.", answer: "0")
        let q11 = Question(question: "Kelvin is a measure of temperature.", answer: "1")
        let q12 = Question(question: "The human skeleton is made up of less than 100 bones.", answer: "0")
        let q13 = Question(question: "Herbivores eat meat.", answer: "0")
        let q14 = Question(question: "The study of plants is known as botany.", answer: "1")
        let q15 = Question(question: "Elephants eat with their noses", answer: "1")
        let q16 = Question(question: "Frogs have to drink lots of water", answer: "0")
        let q17 = Question(question: "The hummingbird egg is the world's smallest bird egg", answer: "1")
        let q18 = Question(question: "No cat likes water", answer: "0")
        let q19 = Question(question: "Some animals can get sunburn", answer: "1")
        let q20 = Question(question: "10 ^ 2 = 20", answer: "0")
        
        self.questions = [q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20]
    }
    
    public func getAllQuestions() -> [Question]{
        return self.questions;
    }
    
    
}
