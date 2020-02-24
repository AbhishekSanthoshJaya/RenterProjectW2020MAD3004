//
//  Person.swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

class Person : IDisplayDelegate, TypeName
{
    func display(){
        print("Person")
    }
     var id: String
     var firstName: String
     var lastName: String
     var gender: Gender
     var birthDate: Date?
     var age: Int
     var userName: String
     var password: String
     var contact: Contact
    
    init(id: String, firstName: String, lastName: String, gender: Gender,birthDate: Date?,age:Int, userName: String, password: String, contact: Contact) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.birthDate = birthDate
        self.age = age
        self.userName = userName
        self.password = password
        self.contact = contact
    }
}

