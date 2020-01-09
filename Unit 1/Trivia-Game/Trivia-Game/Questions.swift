//
//  Questions.swift
//  Trivia-Game
//
//  Created by Oscar Victoria Gonzalez  on 10/21/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import Foundation

class Question { // this should be a struct 
    var questionPrompt: String
    var correctAnswer: String
    var choices: String
    var fact: String
    var triviaType: TriviaType
    
    // Designated initializer:
    init(questionPrompt: String,
         correctAnswer: String, choices: String,
         fact: String,
         triviaType: TriviaType) {
        self.questionPrompt = questionPrompt
        self.correctAnswer = correctAnswer
        self.choices = choices
        self.fact = fact
        self.triviaType = triviaType
     
    }
   
    // TODO: create a failable convenience init that takes in a dictionary of type [String, Any]
    convenience init?(dict:[String: Any]){
        guard let questionPrompt = dict["question"] as? String, let correctAnswer = dict["correctAnswer"] as? String, let choices = dict["choices"] as? String, let fact = dict["fact"] as? String, let triviaType = dict["triviaType"] as? String else {
            return nil
        }
        
        // 2. To do: get a valid TriviaType from the enum to add to the designated Initialiszer value
        self.init(questionPrompt: questionPrompt, correctAnswer: correctAnswer, choices: choices, fact: fact, triviaType: TriviaType(rawValue: triviaType) ?? TriviaType.sportTrivia)
    }
   
}


