//
//  NewAccountViewController.swift
//  AlanAI
//
//  Created by Bhargav Annem on 7/12/20.
//  Copyright © 2020 Bhargav Annem. All rights reserved.
//

import UIKit

class NewAccountViewController: UIViewController {

    @IBOutlet weak var createNewAccount: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        createNewAccount.layer.cornerRadius = 15.0

        // Do any additional setup after loading the view.
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
