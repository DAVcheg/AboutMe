//
//  WorkViewController.swift
//  AboutMe
//
//  Created by Aleksey Dergunov on 02.02.2022.
//

import UIKit

class WorkViewController: UIViewController {

    // MARK: - IB Outlets
    
    @IBOutlet var imageWork: UIImageView!
   
    @IBOutlet var labelWorkLB: UILabel!
    
    
    // MARK: - Public Properties
    
    let infoWork = UserBase.Person.getInfoAboutUser()
    
    
    // MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageWork.image = UIImage(named: infoWork.photo[1])
        labelWorkLB.text = infoWork.aboutWork
    }
    // MARK: - IB Actions
    @IBAction func backButton() {
        dismiss(animated: false, completion: nil)
}
}
