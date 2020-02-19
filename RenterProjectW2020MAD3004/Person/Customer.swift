//
//  Customer .swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

class Customer : Person
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
    private lazy var vehicleRents = [String: Vehicle]()

    required init(id: String, firstName: String, lastName: String, gender: Gender.Type,birthDate: Date?, age: Int, userName: String, password: String, contact: Contact, address : Address)
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
    //ToDo add a dictionary for the vehicle rent
}
