//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Student on 01/08/25.
//

import UIKit

class QuestionViewController: UIViewController {

    
    @IBOutlet weak var questionLabel: UILabel!
    
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var singleButton1: UIButton!
    @IBOutlet weak var singleButton2: UIButton!
    @IBOutlet weak var singleButton3: UIButton!
    @IBOutlet weak var siongleButton4: UIButton!
    
    
    
    
    @IBOutlet weak var multipleStackView: UIStackView!
    
    @IBOutlet weak var multiLabel1: UILabel!
    
    @IBOutlet weak var multiLabel2: UILabel!
    
    @IBOutlet weak var multiLabel3: UILabel!
    
    @IBOutlet weak var multiLabel4: UILabel!
    
    
    
    @IBOutlet weak var multiSwitch1: UISwitch!
    
    
    @IBOutlet weak var multiSwitch2: UISwitch!
    
    
    @IBOutlet weak var multiSwitch3: UISwitch!
    
    
    @IBOutlet weak var multiSwitch4: UISwitch!
    
    
    
    @IBOutlet weak var rangedStackView: UIStackView!
    
    @IBOutlet weak var rangedLabel1: UILabel!
    
    @IBOutlet weak var rangedLabel2: UILabel!
    
    
    @IBOutlet weak var rangedSlider: UISlider!
    
    
    
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    var questionIndex = 0
    var answerChosen: [Answer] = []

    
    var questions: [Question] = [
        Question(
            text: "Which food do you like the most?",
            type: .single,
            answers: [
                Answer(text: "Steak", type: .dolphin),
                Answer(text: "Fish", type: .duck),
                Answer(text: "Carrots", type: .peacock),
                Answer(text: "Corn", type: .butterfly)
            ]
        ),

        Question(
            text: "Which activities do you enjoy?",
            type: .multiple,
            answers: [
                Answer(text: "Swimming", type: .butterfly),
                Answer(text: "Sleeping", type: .dolphin),
                Answer(text: "Cuddling", type: .duck),
                Answer(text: "Eating", type: .peacock)
            ]
        ),

        Question(
            text: "How much do you enjoy car rides?",
            type: .ranged,
            answers: [
                Answer(text: "I dislike them", type: .butterfly),
                Answer(text: "I get a little nervous", type: .dolphin),
                Answer(text: "I barely notice them", type: .duck),
                Answer(text: "I love them", type: .peacock)
            ]
        )
    ]
 
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func singleAnswerButtonTapped(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        switch sender {
        case singleButton1:
            answerChosen.append(currentAnswers[0])
        case singleButton2:
            answerChosen.append(currentAnswers[1])
        case singleButton3:
            answerChosen.append(currentAnswers[2])
        case siongleButton4:
            answerChosen.append(currentAnswers[3])
        default:
            break
        }
        nextQuestion()
    }
    
    
    
    @IBAction func multipleAnswerButtonPressed() {
        let currentAnswers = questions[questionIndex].answers
        if multiSwitch1.isOn{
            answerChosen.append(currentAnswers[0])
        }
        if multiSwitch2.isOn{
            answerChosen.append(currentAnswers[1])
        }
        if multiSwitch3.isOn{
            answerChosen.append(currentAnswers[2])
        }
        if multiSwitch4.isOn{
            answerChosen.append(currentAnswers[3])
        }
        nextQuestion()
    }
    
    
    
    @IBAction func rangedAnswerButtonPressed() {
        let currentAnswers = questions[questionIndex].answers
        let index = Int(round(rangedSlider.value *  Float(currentAnswers.count - 1)))
        answerChosen.append(currentAnswers[index])
        nextQuestion()
    }
    
    
    
    
    func updateUI() {
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true

        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated: true)

        switch currentQuestion.type {
        case .single:
            updateSingleStack(using: currentAnswers)
        case .multiple:
           updateMultipleStack(using: currentAnswers)
        case .ranged:
            updateRangedStack(using: currentAnswers)
        }
    }
    
    
    
    @IBSegueAction func showResults(_ coder: NSCoder) -> ResultsViewController? {
        return ResultsViewController(coder: coder , responses: answerChosen)
    }
    func nextQuestion() {
        questionIndex += 1
        if questionIndex < questions.count {
            updateUI()
        }else{
            performSegue(withIdentifier: "Results", sender: nil)
        }
    }


    func updateSingleStack(using answers: [Answer]) {
        singleStackView.isHidden = false
        singleButton1.setTitle(answers[0].text, for: .normal)
        singleButton2.setTitle(answers[1].text, for: .normal)
        singleButton3.setTitle(answers[2].text, for: .normal)
        siongleButton4.setTitle(answers[3].text, for: .normal)
    }

    func updateMultipleStack(using answers: [Answer]) {
        multipleStackView.isHidden = false
        multiSwitch1.isOn = false
        multiSwitch2.isOn = false
        multiSwitch3.isOn = false
        multiSwitch4.isOn = false
        multiLabel1.text = answers[0].text
        multiLabel2.text = answers[1].text
        multiLabel3.text = answers[2].text
        multiLabel4.text = answers[3].text
    }
    
    func updateRangedStack(using answers : [Answer]){
        rangedStackView.isHidden = false
        rangedSlider.setValue(0.5,animated: false)
        rangedLabel1.text = answers.first?.text
        rangedLabel2.text = answers.last?.text
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
