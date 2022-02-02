//
//  LoginViewController.swift
//  AboutMe
//
//  Created by Aleksey Dergunov on 27.01.2022.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - IB Outlets
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Public Properties
    
    // MARK: - Private Properties

    private let user = UserBase.getСredentials()
    
    // MARK: - Override Methods
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let tabBarController = segue.destination as! UITabBarController
//        let WelcomeViewController = tabBarController.viewControllers?[0] as! WelcomeViewController
    }
    
    
    // MARK: - IB Actions
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func logInButton() {
        userNameTF.text!.isEmpty ? showAlert(with: "Attention", and: "Enter your name" )
        : print("Name enter")
        passwordTF.text!.isEmpty ? showAlert(with: "Attention", and: "Enter your password" )
        : print("Password enter")
        if userNameTF.text != user.login || passwordTF.text != user.password {
            showAlert(with: "Attention", and: "Your name or password is wrong")
            passwordTF.text = ""
        } else {
            performSegue(withIdentifier: "showWelcome", sender: nil)
        }
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(with: "Oops!", and: "Your name is \(user.login)")
        : showAlert(with: "Oops!", and: "Your password is \(user.password)")
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
        }
        return true
    }
}

