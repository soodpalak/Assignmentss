//
//  ViewController.swift
//  Segue
//
//  Created by Student on 18/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toggleSwitch: UISwitch!
    // @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func unwindToRed(unwindSegue:UIStoryboardSegue){
        
    }

    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        segue.destination.navigationItem.title=textField.text
//    }
    
    
    @IBAction func goToYellow(_ sender: Any) {
        if toggleSwitch.isOn{
            performSegue(withIdentifier: "yellow", sender: nil)
        }
    }
}

