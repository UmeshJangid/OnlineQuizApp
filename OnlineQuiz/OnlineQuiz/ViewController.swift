//
//  ViewController.swift
//  OnlineQuiz
//
//  Created by Macbook Air  on 03/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var questionLable: UILabel!
    var currentQuestion = 0
    
    let questions = [["Swift will automatically assign the data type based on the initial value?" , "False"],
                     ["Prince Harry is taller than Prince William" , "True"],
                     ["The star sign Aquarius is represented by a tiger" , "True"],
                     ["Meryl Streep has won two Academy Awards" , "False"],
                     ["Waterloo has the greatest number of tube platforms in London" , "True"],
                     ["M&M stands for Mars and Moordale" , "False"],
                     ["Gin is typically included in a Long Island Iced Tea" , "True"],
                     ["The unicorn is the national animal of Scotland" , "True"]
                     
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateQuestionLable(questionText:questions[currentQuestion][0])
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        let sizeOfQuestionsArray = questions.count
        let titleClicked  = sender.currentTitle
        currentQuestion = currentQuestion + 1
        if sizeOfQuestionsArray > currentQuestion {
            print("Actual Answer is \(questions[currentQuestion-1][1])")
            if titleClicked == questions[currentQuestion-1][1]{
                print("Right")
            }else {
                print("Wrong")
            }
         print("Updating question of number:  \(currentQuestion)")
         updateQuestionLable(questionText: questions[currentQuestion][0])
        }else {
            print("We reached to last location in array.")
            updateQuestionLable(questionText: "Quiz Over! Results are ready.")
        }
        
    }
    
    func updateQuestionLable(questionText: String) {
        questionLable.text = questionText
    }
    
}

