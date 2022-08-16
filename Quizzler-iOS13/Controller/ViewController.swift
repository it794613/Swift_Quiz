//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var scoreLable: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var questionText: UILabel!
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!
    
    var QuizBrain = QuizModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       updateQuiz()
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
       
        let userAnser = sender.currentTitle
        let trueOrFalse = QuizBrain.checkAnswer(userAnser!)
        if trueOrFalse{
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        QuizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2 , target: self, selector: #selector(updateQuiz), userInfo: nil, repeats: false)
        updateQuiz()
    }
    
    @objc func updateQuiz(){
        questionText.text = QuizBrain.getQuestionText()
        scoreLable.text = "Score : \(QuizBrain.getScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = QuizBrain.getProgress()
    }
    
}

