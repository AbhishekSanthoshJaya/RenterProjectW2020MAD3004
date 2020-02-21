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
    
    var gender: Gender
    var id: String
    var firstName: String
    var lastName: String
    var birthDate: Date?
    var age: Int
    var userName: String
    var password: String
    var contact: Contact
    var address: Address
    private lazy var vehicleRents = [String: Vehicle]()

     init(id: String, firstName: String, lastName: String, gender: Gender,birthDate: Date?, age: Int, userName: String, password: String, contact: Contact, address : Address)
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
    
    convenience init(customerDict: [String: Any]) throws {
        
        guard let id = customerDict["id"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "id")
        }
        
        
        guard let firtname = customerDict["firtname"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "firtname")
        }
        
        guard let lastName = customerDict["lastName"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "lastName")
        }
        
        guard let genderString =  customerDict["gender"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "gender")
        }
        let gender = Gender.getGenderType(genderString)
        
        
        
        guard let isSelfDriveInt = customerDict["isSelfDrive"] as? Int else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "isSelfDrive")
        }
        let isSelfDrive = isSelfDriveInt == 1
        
        guard let isInsuredInt = customerDict["isInsured"] as? Int else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "isInsured")
        }
        let isInsured = isInsuredInt == 1
        
        guard let insuranceProviderName = customerDict["insuranceProviderName"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "insuranceProviderName")
        }
        
        guard let numberOfSeat = customerDict["numberOfSeat"] as? Int else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "numberOfSeat")
        }
        
        guard let baseRate = customerDict["baseRate"] as? Float else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "baseRate")
        }
        
        guard let perKmRate = customerDict["perKmRate"] as? Float else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "perKmRate")
        }
        
      
        self.init(id: id,
                  firstName: firtname,
                  lastName: lastName,
                  gender: gender,
                  birthDate: birthDate,
                  age: age,
                  userName: userName,
                  password: password,
                  contact: contact,
                  address : address)
        
    }
    
    
    func display()
    {
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
