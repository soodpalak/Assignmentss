//
//  MiddleViewController.swift
//  orderofevents
//
//  Created by Student on 30/07/25.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var eventNumber : Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from:"viewDidLoad")
        // Do any additional setup after loading the view.
    }
   
    
    func addEvent(from:String){
        if let existingText=label.text{
            label.text="\(existingText)\nEvent number \(eventNumber) was \(from)"
            eventNumber+=1
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(addEvent(from: "viewWillAppear"))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(addEvent(from: "viewDidAppear"))
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
       print(addEvent(from: "viewWillDisappear"))
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(addEvent(from: "viewDidDisappear"))
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
