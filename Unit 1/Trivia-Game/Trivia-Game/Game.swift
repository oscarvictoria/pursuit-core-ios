//
//  Game.swift
//  Trivia-Game
//
//  Created by Oscar Victoria Gonzalez  on 10/21/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import Foundation

// TODO:

// 1. a question array property
// 2. a score property
// 3. a total question property

// methods
// To Do: Write the following methods
// 1. write a method to get a shuffled questio, remove the question from the question array above
// 2. Write the method to start the Game, this method creates the array of questions [Question]
// 3. write a method to check if the answer is correct and increment the score by 1

class Game {
    
// MARK: Properties of Game
    
    var questions = [Question]()
    var score = 0
    var totalQuestions = 0
    // computed property
    var hasMoreQuestions: Bool {
        //accessor available in swift are getters and setters
        // using the not ! symbol to negate or toggle the current value
        return !questions.isEmpty
    }
    
    // MARK: Methods of Game
    
    func getQuestion() -> Question? {
        // shuffle the array
        questions = questions.shuffled()
        // popLast removes the last element and returns it
        return questions.popLast()
    }

    func createQuestions(_ inputType: TriviaType) {
        // step 1- loop through the array {TriviaData}
        for dict in Trivia.data {
            // step 2 - using the key triviaType in the dictionary we need to acces the value
            if let unwrappedTrivia = dict["triviaType"] as? String {
                // step 3 - compare the user's triviaType with the current trivia type in the dictionary
                if unwrappedTrivia == inputType.rawValue {
                    // step 4 - create a question and append to the question array
                    // step 5 - unwrap Question and add to array
                    if let question = Question(dict: dict) {
                        questions.append(question)
                    }
                }
            }
        }
        totalQuestions = questions.count
        print("\(questions.count) questions were created")
}
    
    func checkAnswer(userAnswer: String, question: Question) {
        if userAnswer == question.correctAnswer {
            // increment the score by 1
            score += 1
            print("Correct answer. \n\(question.fact)")
        } else {
            print("Wrong answer. \n\(question.fact)")
        }
    }
    
   // Write a method that prints out the final score and total number of questions.
    func finalScore() {
        print("This is the final score. Thanks for playing trivia, your score is \(score) out of \(totalQuestions)")
    }
    
    //Write a method that resets the game if the player wishes to continue
    
    func reset() {
        score = 0
        questions.removeAll()
    }
    
    func selectTrivia(_ userResponse: String) { // "1..."4"
        switch userResponse {
        case "1":
            createQuestions(.movieTrivia)
        case "2":
            createQuestions(.sportTrivia)
        case "3":
            createQuestions(.musicTrivia)
        case "4":
            createQuestions(.nycTrivia)
        default:
            print("Trivia type is unavailable")
        }
    }
}

