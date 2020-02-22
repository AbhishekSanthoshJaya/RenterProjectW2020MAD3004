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
    var age: Int = 0
     var id: String
     var firstName: String
     var lastName: String
     var gender: Gender
     var birthDate: Date?
     var userName: String
     var password: String
     var contact: Contact
     var drivingLicenceNumber: String
     var isDrivingHistoryClean: Bool
     var salary: Float
    
    init(id: String, firstName: String, lastName: String, gender: Gender, birthDate: Date?,  userName: String, password: String, contact: Contact,  drivingLicenceNumber: String, isDrivingHistoryClean: Bool, salary: Float)
    {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.birthDate = birthDate
        self.userName = userName
        self.password = password
        self.contact = contact
        self.drivingLicenceNumber = drivingLicenceNumber
        self.isDrivingHistoryClean = isDrivingHistoryClean
        self.salary = salary
    }
    
    convenience init(driverDict: [String: Any]) throws{
     
        guard let id =  driverDict["id"] as? String else {
             throw JsonValidationError.isNotValidInput(
                 className: String(describing:type(of: self)),
                 memberName: "id")
         }
                
        guard let firstName = driverDict["firstName"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "firtName")
        }
        
        guard let lastName = driverDict["lastName"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "lastName")
        }
        
        guard let genderString =  driverDict["gender"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "gender")
        }
        let gender = Gender.getGenderType(genderString: genderString)
        
        
        
        guard let birthDateString = driverDict["birthDate"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "birthDate")
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        guard let birthDate = dateFormatter.date(from: birthDateString) else{
            throw JsonValidationError.isNotValidInput(
            className: String(describing:type(of: self)),
            memberName: "birthDate")
        }
        
        
        guard let userName = driverDict["userName"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "userName")
        }
        
        
        guard let password = driverDict["password"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "password")
        }
        
        guard let addressJson = driverDict["address"] as? [String: String] else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "address")
        }
         
         guard let contactJson = driverDict["contact"] as? [String: String] else {
             throw JsonValidationError.isNotValidInput(
                 className: String(describing:type(of: self)),
                 memberName: "contact")
         }
         
         var contact:Contact?
         do{
             var address:Address?
             do{
                 address = try Address(addressDict: addressJson)
             }
             catch JsonValidationError.isNotValidInput(let className, let memberName) {
                 throw JsonValidationError.isNotValidInput(className: className, memberName: memberName)
             }
             contact = try Contact(contactDict: contactJson, address:address!)
         }
         catch JsonValidationError.isNotValidInput(let className, let memberName) {
             throw JsonValidationError.isNotValidInput(className: className, memberName: memberName)
         }
         
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
        let isDrivingHistoryClean = isDrivingHistoryCleanString == 1
        
        
        guard let salary = driverDict["salary"] as? Float else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "salary")
        }
        
        
         self.init(id: id,
                   firstName: firstName,
                   lastName: lastName,
                   gender: gender,
                   birthDate: birthDate,
                   userName: userName,
                   password: password,
                   contact: contact!,
                   drivingLicenceNumber: drivingLicenceNumber,
                   isDrivingHistoryClean: isDrivingHistoryClean,
                   salary: salary)
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
