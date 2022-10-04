//
//  User.swift
//  LoginApp
//
//  Created by Vladislav Suslov on 5.10.22.
//

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
                profession: "Doctor"
            )
        )
    }
}
