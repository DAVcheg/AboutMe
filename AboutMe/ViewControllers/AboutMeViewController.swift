//
//  AboutMeViewController.swift
//  AboutMe
//
//  Created by Aleksey Dergunov on 27.01.2022.
//

import UIKit

class AboutMeViewController: UIViewController {


    
    // MARK: - IB Outlets
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var labelLB: UILabel!
    
    // MARK: - Public Properties
    
    var Label = ""
    
    // MARK: - Private Properties
    
    // MARK: - Initializers
    
    // MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelLB.text = "I'm glad to see you, \(Label)!"
    }
    
    // MARK: - Navigation
    
    // MARK: - IB Actions
    
    // MARK: - Public Methods
    
    // MARK: - Private Methods
    
}
