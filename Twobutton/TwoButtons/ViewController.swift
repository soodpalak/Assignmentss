//
//  ViewController.swift
//  TwoButtons
//
//  Created by Student on 16/07/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var enterText: UITextField!

 
    @IBOutlet weak var changeText: UILabel!
    
    @IBAction func SetText(_ sender: UIButton) {
        
        changeText.text=enterText.text
        
        
    }
    
    
    @IBAction func clearText(_ sender: UIButton) {
        changeText.text=""
        enterText.text=""
        
        
    }
    
    
    
    
}

