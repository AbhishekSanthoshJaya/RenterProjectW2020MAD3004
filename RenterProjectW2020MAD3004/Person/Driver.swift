//
//  Driver.swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

class Driver : Person
{
     var id: String
     var firstName: String
     var lastName: String
     var gender: Gender
     var birthDate: Date?
     var age: Int
     var userName: String
     var password: String
     var contact: Contact
     var address: Address
     var drivingLicenceNumber: String
     var isDrivingHistoryClean: String
     var salary: Float
    
    init(id: String, firstName: String, lastName: String, gender: Gender, birthDate: Date?, age: Int, userName: String, password: String, contact: Contact, address : Address, drivingLicenceNumber: String, isDrivingHistoryClean: String, salary: Float)
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
        self.drivingLicenceNumber = drivingLicenceNumber
        self.isDrivingHistoryClean = isDrivingHistoryClean
        self.salary = salary
    }
    
    func display() {
        
        print("\nID           : \(id)")
        print("First Name     : \(firstName)")
        print("Last Name      : \(lastName)")
        print("Gender         : \(gender)")
        print("Date of Birth  : \(birthDate ?? Date())")
        print("Age            : \(age)")
        print("Username       : \(userName)")
        print("License Number : \(drivingLicenceNumber)")
        print("Clean History  : \(isDrivingHistoryClean)")

    }

}
