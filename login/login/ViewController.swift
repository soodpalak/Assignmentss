//
//  ViewController.swift
//  login
//
//  Created by Stusent on 18/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgotUserNameButton: UIButton!
    
    @IBOutlet weak var ForgotPasswordButton: UIButton!
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
            
        }else if sender == ForgotPasswordButton{
            segue.destination.navigationItem.title = "Forgot Password"
        }else{
            
            
            segue.destination.title = usernameTextField.text
        }
    }

    @IBAction func forgotUsername(_ sender: UIButton) {
        performSegue(withIdentifier: "loginViewIdentifier", sender: sender)
    }
    
    @IBAction func forgotPassword(_ sender: UIButton) {
        performSegue(withIdentifier: "loginViewIdentifier", sender: sender)
    }
    
}

