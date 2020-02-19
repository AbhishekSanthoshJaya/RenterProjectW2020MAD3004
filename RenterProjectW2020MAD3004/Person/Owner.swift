//
//  Owner.swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

class Owner : Person
{    
    var id: String
    var firstName: String
    var lastName: String
    var gender: Gender.Type
    var birthDate: Date?
    var age: Int
    var userName: String
    var password: String
    var contact: Contact
    var address: Address
    var companyTitle: String
    var landLineNumber: String
    var url: String
    var vehicleList = [String: Vehicle]()

    required init(id: String, firstName: String, lastName: String, gender: Gender.Type, birthDate: Date?, age: Int, userName: String, password: String, contact: Contact, address : Address, companyTitle: String, landLineNumber: String, url: String)
    
    {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.birthDate = birthDate
        self.age = age
        self.userName = userName
        self.password = password
        self.contact = contact
        self.address = address
        self.companyTitle = companyTitle
        self.landLineNumber = landLineNumber
        self.url = url
    }
    
    func display() {
        print("\nID           : \(id)")
        print("First Name     : \(firstName)")
        print("Last Name      : \(lastName)")
        print("Gender         : \(gender)")
        print("Date of Birth  : \(birthDate ?? Date())")
        print("Age            : \(age)")
        print("Username       : \(userName)")

    }
}
