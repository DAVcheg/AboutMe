//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by Aleksey Dergunov on 27.01.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    // MARK: - IB Outlets
    
    @IBOutlet var userNameLabel: UILabel!
    
    // MARK: - Public Properties
    
    var userName = ""
    
    // MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "I'm glad to see you, \(userName)!"
    }
        
}


