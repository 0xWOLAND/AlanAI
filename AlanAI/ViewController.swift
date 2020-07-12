//
//  ViewController.swift
//  AlanAI
//
//  Created by Bhargav Annem on 7/12/20.
//  Copyright © 2020 Bhargav Annem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func createNewAccount(_ sender: Any) {
        performSegue(withIdentifier: "NewAccountSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loginButton.layer.cornerRadius = 15.0
    }
    
    


}

