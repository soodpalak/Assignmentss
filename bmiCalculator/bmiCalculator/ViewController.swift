//
//  ViewController.swift
//  bmiCalculator
//
//  Created by Student on 14/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var university: UILabel!
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        let weightString = weight.text ?? ""
        let weight=Double(weightString) ?? 0
        let heightString = height.text ?? ""
        let height=Double(heightString) ?? 0
        let bmi = weight / (height*height)
        calculateBMI.text="Your BMI is \(bmi)"
        print("Button is tapped")
        university.text="BMI Calculator"
        
    }
    @IBOutlet weak var calculateBMI: UILabel!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var weight: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
   
    }


}

