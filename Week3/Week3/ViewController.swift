//
//  ViewController.swift
//  Week3
//
//  Created by Sylvia Jia Fen  on 2019/6/30.
//  Copyright © 2019 Sylvia Jia Fen . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginSegmented: UISegmentedControl!
    @IBOutlet weak var accountText: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var checkText: UITextField!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if loginSegmented.selectedSegmentIndex == 0 {
            
            let color = UIColor (red: 152/255.0, green: 152/255.0, blue: 152/255.0, alpha: 1.0)
            checkText.backgroundColor = color
            checkText.isUserInteractionEnabled = false
        } else {
            let white = UIColor (red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
            checkText.backgroundColor = white
            checkText.isUserInteractionEnabled = true
        }
    
    }
    
    
// When user switch to login page through segmented control, the check labeland text field should change color and disable. Vice versa.
    @IBAction func logInAndSignUp() {
        
        if loginSegmented.selectedSegmentIndex == 0 {
            
            let color = UIColor (red: 152/255.0, green: 152/255.0, blue: 152/255.0, alpha: 1.0)
            checkText.backgroundColor = color
            checkText.isUserInteractionEnabled = false
        } else {
            let white = UIColor (red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
            checkText.backgroundColor = white
            checkText.isUserInteractionEnabled = true
        }
    }

    
    //  When user touch the button, app should execute log-in or sign-up flow,depending on the index of segmented control.
    /*__________________
     - If there is no valid text, you should show relative alert to user. Including emptyinput or wrong input.
     - In log in method, we only accept account as ‘appwork_school@gmail.com’ ,password as ‘1234’. Otherwise is invalid info.
     - In sign up method, the account is always valid except empty input. It’s validwhen the password is equal to the check text, otherwise is invalid.
     --------------------
     */
    
    func showAlert1() {
        let allertController = UIAlertController(title: "Error", message: "Log in failed.", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: dismissAlert)
        allertController.addAction(okAction)
        
        present(allertController, animated: true, completion: nil)
    }
    
    func showAlert2() {
        let allertController = UIAlertController(title: "Error", message: "Account should not be empty.", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: dismissAlert)
        allertController.addAction(okAction)
        
        present(allertController, animated: true, completion: nil)
    }
    
    func showAlert3() {
        let allertController = UIAlertController(title: "Error", message: "Password shuld not be empty.", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: dismissAlert)
        allertController.addAction(okAction)
        
        present(allertController, animated: true, completion: nil)
    }
    
    func showAlert4() {
        let allertController = UIAlertController(title: "Error", message: "Check Password shuld not be empty.", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: dismissAlert)
        allertController.addAction(okAction)
        
        present(allertController, animated: true, completion: nil)
    }
    
    func showAlert5() {
        let allertController = UIAlertController(title: "Error", message: "Signup failed.", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: dismissAlert)
        allertController.addAction(okAction)
        
        present(allertController, animated: true, completion: nil)
    }
    
    func dismissAlert(_ sender: UIAlertAction) -> Void {
    }
    
    @IBAction func bottonOfLogOrSign(_ sender: Any) {
        
        let correctAccount: String = "appwork_school@gmail.com"
        let correctPassword: String = "1234"
        
        
        if loginSegmented.selectedSegmentIndex == 0 {
            
            if accountText.text == correctAccount && password.text == correctPassword {
                print("Log in Succeeded.")
            } else if accountText.text == "" {
                showAlert2()
            } else if password.text == "" {
                showAlert3()
            } else {
                showAlert1()
            }
         }
        
        if loginSegmented.selectedSegmentIndex == 1 {
            
            if accountText.text == "" {
                showAlert2()
            } else if  password.text == "" && checkText.text == "" {
                showAlert5()
            } else if password.text == checkText.text {
                print("Sign in Succeded.")
            } else if password.text == "" {
                showAlert3()
            } else if checkText.text == "" {
                showAlert4()
            } else {
                showAlert5()
            }
         }
      }
}







