//
//  Driver.swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

/* Customer class which inherts person*/
class Driver : Person
{
     
     var drivingLicenceNumber: String
     var isDrivingHistoryClean: Bool
     var salary: Float
    
    init(id: String, firstName: String, lastName: String, gender: Gender, birthDate: Date? , userName: String,age: Int, password: String, contact: Contact, drivingLicenceNumber: String, isDrivingHistoryClean: Bool, salary: Float)
    {
        self.drivingLicenceNumber = drivingLicenceNumber
        self.isDrivingHistoryClean = isDrivingHistoryClean
        self.salary = salary
        super.init(id: id, firstName: firstName, lastName: lastName, gender: gender, birthDate: birthDate, userName: userName, password: password, contact: contact)
    }
    
  init(driverDict: [String: Any]) throws{
         
         guard let drivingLicenceNumber = driverDict["drivingLicenseNumber"] as? String else {
             throw JsonValidationError.isNotValidInput(
                 className: String(describing:type(of: self)),
                 memberName: "drivingLicenseNumber")
         }
        
        guard let isDrivingHistoryCleanString = driverDict["isDrivingHistoryClean"] as? Int else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "isDrivingHistoryClean")
        }
        
        
        guard let salary = driverDict["salary"] as? Float else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "salary")
        }
    
        let isDrivingHistoryClean = isDrivingHistoryCleanString == 1
        self.drivingLicenceNumber = drivingLicenceNumber
        self.isDrivingHistoryClean = isDrivingHistoryClean
        self.salary = salary
    
        
        try super.init(personDict:driverDict)
        
    }
    
    override func display() {
        
        print("\nID           : \(id)")
        print("First Name     : \(firstName)")
        print("Last Name      : \(lastName)")
        print("Gender         : \(gender)")
        print("Date of Birth  : \((birthDate ?? Date()).printFormat())")
        print("Age            : \(age)")
        print("Username       : \(userName)")
        print("License Number : \(drivingLicenceNumber)")
        print("Clean History  : \(isDrivingHistoryClean)")

    }

}
