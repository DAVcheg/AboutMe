//
//  LoginViewController.swift
//  AboutMe
//
//  Created by Aleksey Dergunov on 27.01.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Public Properties
    
    // MARK: - Private Properties
    
    private var userNameSession = ""
    private let namePasswordArray = ["User" : "1234"]
    
    // MARK: - Override Methods
    
    // MARK: - Navigation
    
    func unwind(for unwindSegue: UIStoryboardSegue) {
        guard unwindSegue.source is WelcomeViewController else { return }
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameSession
    }
    
    // MARK: - IB Actions
    
    @IBAction func logInButton() {
        userNameTF.text!.isEmpty ? showAlert(with: "Attention", and: "Enter your name" )
        : print("Name enter")
        passwordTF.text!.isEmpty ? showAlert(with: "Attention", and: "Enter your password" )
        : print("Password enter")
        for (userName, password) in namePasswordArray {
            userNameSession = userName
            if userNameTF.text != userName || passwordTF.text != password {
                showAlert(with: "Attention", and: "Your name or password is wrong")
            }
            performSegue(withIdentifier: "showWelcome", sender: nil)
            break
    }
    }
    
    
    // MARK: - Public Methods
    
    // MARK: - Private Methods
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    // MARK: - Extension
    
//extension LoginViewController {
        
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super.touchesBegan(touches, with: event)
            view.endEditing(true)
        }
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            if textField == userNameTF {
                passwordTF.becomeFirstResponder()
            } else {
                logInButton()
                performSegue(withIdentifier: "showWelcome", sender: nil)
                return true;
            }
            return false
        }
    }

