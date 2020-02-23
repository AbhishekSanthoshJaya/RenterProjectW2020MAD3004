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
    var birthDate: String
    var age: Int
    var userName: String
    var password: String
    var contact: Contact
    private lazy var vehicleRents = [String: Vehicle]()

     init(id: String, firstName: String, lastName: String, gender: Gender,birthDate: String, age: Int, userName: String, password: String, contact: Contact)
    {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.birthDate = birthDate
        self.age = ageCalculation(birthDate: birthDate)
        self.userName = userName
        self.password = password
        self.contact = contact
    }
    
    convenience init(customerDict: [String: Any]) throws {
        
        guard let id = customerDict["id"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "id")
        }
        
        
        guard let firstName = customerDict["firstName"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "firtName")
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
        let gender = Gender.getGenderType(genderString: genderString)
        
        
        
        guard let birthDateString = customerDict["birthDate"] as? String else {
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
        
        
        guard let userName = customerDict["userName"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "userName")
        }
        
        
        guard let password = customerDict["password"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "password")
        }
        
        guard let addressJson = customerDict["address"] as? [String: String] else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "address")
        }
        
        
        
        
        
        
        guard let contactJson = customerDict["contact"] as? [String: String] else {
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
        
        
        
        self.init(id: id,
                  firstName: firstName,
                  lastName: lastName,
                  gender: gender,
                  birthDate: birthDate,
                  userName: userName,
                  password: password,
                  contact: contact!
                  )
        
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
