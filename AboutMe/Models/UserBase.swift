//
//  UserBase.swift
//  AboutMe
//
//  Created by Aleksey Dergunov on 01.02.2022.
//

import UIKit



struct UserBase {
    
    let login: String
    let password: String
    let person: Person
    
    static func getСredentials() -> UserBase {
        
        UserBase(
            login: "DAV",
            password: "qwert",
            person: Person.getInfoAboutUser())
    }
    
    struct Person {
        
        let name: String
        let surname: String
        let yearOfBirth: Int
        let city: String
        let university: String
        let education: String
        let photo: UIImage
       
        var description: String {
            """
\(name) \(surname), was born in \(yearOfBirth) year in city \(city).
            Got educated in \(university) by specialty \(education)
"""
        }
        
        static func getInfoAboutUser() -> Person {
            Person(
                name: "Aleksey",
                surname: "Dergunov",
                yearOfBirth: 1991,
                city: "Khabarovsk",
                university: "Pacific National University",
                education: "Information systems and technologies",
                photo: UIImage(named: "MyPhoto")!
                )
        }
    }
}
