//
//  main.swift
//  Trivia-Game
//
//  Created by Oscar Victoria Gonzalez  on 10/21/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import Foundation

// Create a game instance:

let game = Game()


    
 //   Create a property called playAgain and set it to false. This will be modified base on if the user wishes to continue playiing.

var playAgain = false

let userPrompt = """
Select the type of Trivia you would like to play?
1.Movie Trivia
2.Sports Trivia
3.Music Trivia
4.NYC trivia

"""


// Use a repeat-while to start playing the game

repeat {
    print(userPrompt)
    
    let userResponse = readLine() ?? ""
    
    game.selectTrivia(userResponse)
    
    repeat {
        
        guard let question = game.getQuestion() else {
            break
        }
        print(question.questionPrompt)
        print(question.choices)
        let answerResponse = readLine() ?? ""
        game.checkAnswer(userAnswer: answerResponse, question: question)
        
    } while game.hasMoreQuestions
    
    game.finalScore()
   
    print("Do you want to continue?")
    let doYouWantToPlayAgain = readLine() ?? ""
    if doYouWantToPlayAgain == "yes" {
        game.reset()
        playAgain = true
        
    } else {
        playAgain = false
    }
    

    
} while playAgain













//
//print("There are \(Trivia.data.count) elements on trivia data")
//
//// create an instance of a Game()
//
//let game = Game()
//
//game.createQuestions(.movieTrivia)
