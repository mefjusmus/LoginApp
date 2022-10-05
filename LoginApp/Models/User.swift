//
//  User.swift
//  LoginApp
//
//  Created by Vladislav Suslov on 5.10.22.
//
import UIKit

struct User {
    let name: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            name: "User",
            password: "Password",
            person: Person(
                name: "Vlad",
                surname: "Suslov",
                age: 28,
                profession: "Doctor",
                bio: "В 2017 году окончил Белорусский государственный медуниверситет. В настоящее время работаю врачом-онкологом в Минском онкологическом центре. Прохожу курс iOS-разработчик на портале SwiftBook. В будущем планирую стать профессиональным iOS-разрабом и создавать крутые проекты",
                profilePhoto: UIImage(named: "MyPhoto")
            )
        )
    }
}
