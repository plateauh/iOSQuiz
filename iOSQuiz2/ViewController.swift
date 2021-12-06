//
//  ViewController.swift
//  iOSQuiz2
//
//  Created by Najd Alsughaiyer on 06/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let questionBank = QuestionBank()
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if !answerLabel.isHidden {
            updateUI(hideAnswer: true)
        }
        else {
            updateUI(hideAnswer: false)
        }
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        questionBank.nextQuestion()
        updateUI(hideAnswer: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(hideAnswer: true)
    }

    func updateUI(hideAnswer: Bool) {
        let currentQuestion = questionBank.quizBank[questionBank.currentQuestion]
        questionLabel.text = currentQuestion.0
        answerLabel.text = currentQuestion.1
        answerLabel.isHidden = hideAnswer
    }
}

