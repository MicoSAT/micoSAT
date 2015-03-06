//
//  QModel.swift
//  micoSAT app
//
//  Created by Kong Huang on 2/13/15.
//  Copyright (c) 2015 Khagay . Nagdimov. All rights reserved.
//

import Foundation


class QModel {
    
    // array of questions, get it from the database later
    var questions: Array<Question>
    
    init () {
        questions = []
    }
    
    func fillReading(){
        questions.removeAll()
        questions.append(Question(question: "Insert reading quesiton here", answers:["1", "2", "3", "4", "5"], correctAnswerIndex: 1))
    }
    
    func fillMath(){
        questions.removeAll()
        // hard coding in the questions for now
        questions.append(Question(question: "Sheila works 8 hours per day on Monday, Wednesday and Friday, and 6 hours per day on Tuesday and Thursday. She does not work on Saturday and Sunday. She earns $324 per week. How much does she earn in dollars per hour?", answers:["11", "10", "9", "8", "7"], correctAnswerIndex: 2))
        
        questions.append(Question(question: "If the product of 6 integers is negative, at most how many of the integers can be negative?", answers:["2", "3", "4", "5", "6"], correctAnswerIndex: 3))
        
        questions.append(Question(question: "A triangle has a perimeter 13. The two shorter sides have integer lengths equal to x and x + 1. Which of the following could be the length of the other side?", answers:["2", "4", "6", "8", "10"], correctAnswerIndex: 2))
        
        questions.append(Question(question: "A machine puts c caps on bottles in m minutes. How many hours will it take to put caps on b bottles?", answers:["60bm/c", "bm/60c", "bc/60m", "60b/cm", "b/60cm"], correctAnswerIndex: 1))
        
        questions.append(Question(question: "Paint needs to be thinned to a ratio of 2 parts paint to 1.5 parts water. The painter has by mistake added water so that he has 6 litres of paint which is half water and half paint. What must he add to make the proportions of the mixture correct?", answers:["1 litre paint", "1 litre water", "½ litre water and one litre paint", "½ litre paint and one litre water", "½ litre paint"], correctAnswerIndex: 0))
    }
    
    func fillWriting(){
        questions.removeAll()
        questions.append(Question(question: "Insert writing question here", answers:["1", "2", "3", "4", "5"], correctAnswerIndex: 1))
        
    }
}

// class for question, contains answers and question and what the correct answer is
class Question {
    var question: String
    var answers: Array<String>
    var correctAnswerIndex: Int
    
    init(question: String,answers:Array<String>,correctAnswerIndex: Int) {
        self.question = question
        self.answers = answers
        self.correctAnswerIndex = correctAnswerIndex
    }
    
    func isGuessCorrect(guessNumber: Int) -> Bool {
        return correctAnswerIndex == Int(guessNumber-1)
    }
    
}