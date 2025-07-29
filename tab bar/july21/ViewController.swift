//
//  ViewController.swift
//  july21
//
//  Created by Student on 21/07/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarItem.badgeValue="4"
        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tabBarItem.badgeValue=nil
    }


}

