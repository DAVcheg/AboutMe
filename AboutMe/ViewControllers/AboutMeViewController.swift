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
    
    let info = UserBase.Person.getInfoAboutUser()
    
    
    // MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: info.photo[0])
        labelLB.text = info.description
    }
    
}
