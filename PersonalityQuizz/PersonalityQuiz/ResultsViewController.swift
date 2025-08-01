//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Student on 01/08/25.
//

import UIKit

class ResultsViewController: UIViewController {
    var responses: [Answer]
    
    init?(coder: NSCoder, responses: [Answer]){
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()

        // Do any additional setup after loading the view.
    }
    
    let frequyeniesOfAnswers = responses.reduce(into: [AnimalType :Int]()){
        (counts,answer) in
        if let existingCount = counts[answer.type]{
            counts[answer.type] = existingCount + 1
        }else{
            counts[answer.type] = 1
        }
    }
    func calculatePersonalityResult(){
        let frequencyOfAnswers = responses.reduce(into: [:]) {
            (count, answer) in
            counts[answer.type, default: 0] += 1
            
        }
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
