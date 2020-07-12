//
//  NewAccountViewController.swift
//  AlanAI
//
//  Created by Bhargav Annem on 7/12/20.
//  Copyright © 2020 Bhargav Annem. All rights reserved.
//

import UIKit

class NewAccountViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var createNewAccount: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello")
        createNewAccount.layer.cornerRadius = 15.0
        password.isSecureTextEntry = true
        confirmPassword.isSecureTextEntry = true

        // Do any additional setup after loading the view.
    }
    
    func sendAlert(msg:String) {
        let alertController = UIAlertController(title: "Alert", message: msg, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .cancel) {(action: UIAlertAction) in print("btn pressed")}
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func createAccountOnClick(_ sender: Any) {
        if firstName.text == "" {
            sendAlert(msg:"Missing First Name")
        }
        else if lastName.text == "" {
            sendAlert(msg:"Missing Last Name")
        }
        else if email.text == "" {
            sendAlert(msg:"Missing Email")
        }
        else if phoneNumber.text == "" {
            sendAlert(msg:"Missing Phone Number")
        }
        else if phoneNumber.text?.count != 10 {
            sendAlert(msg: "Invalid Phone Number")
        }
        else if password.text == "" {
            sendAlert(msg:"Missing Password")
        }
        else if confirmPassword.text == "" {
            sendAlert(msg:"Password Confirmation is Missing")
        }
        else if password.text != confirmPassword.text    {
            sendAlert(msg: "Passwords do not match")
        }
        
        
        
        

    }
//
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
