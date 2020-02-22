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
    
    var age: Int = 0
    var id: String
    var firstName: String
    var lastName: String
    var gender: Gender
    var birthDate: Date?
    var userName: String
    var password: String
    var contact: Contact
    var companyTitle: String
    var url: String
    var vehicleList = [String: Vehicle]()
       
    
    
    init(id: String, firstName: String, lastName: String, gender: Gender, birthDate: Date?,  userName: String, password: String, contact: Contact, companyTitle: String,  url: String)
    {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.birthDate = birthDate
        self.userName = userName
        self.password = password
        self.contact = contact
        self.companyTitle = companyTitle
        self.url = url
    }
    
   
    convenience init(ownerDict: [String: Any]) throws{
        
       guard let id =  ownerDict["id"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "id")
        }
               
       guard let firstName = ownerDict["firstName"] as? String else {
           throw JsonValidationError.isNotValidInput(
               className: String(describing:type(of: self)),
               memberName: "firtName")
       }
       
       guard let lastName = ownerDict["lastName"] as? String else {
           throw JsonValidationError.isNotValidInput(
               className: String(describing:type(of: self)),
               memberName: "lastName")
       }
       
       guard let genderString =  ownerDict["gender"] as? String else {
           throw JsonValidationError.isNotValidInput(
               className: String(describing:type(of: self)),
               memberName: "gender")
       }
       let gender = Gender.getGenderType(genderString: genderString)
       
       
       
       guard let birthDateString = ownerDict["birthDate"] as? String else {
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
       
       
       guard let userName = ownerDict["userName"] as? String else {
           throw JsonValidationError.isNotValidInput(
               className: String(describing:type(of: self)),
               memberName: "userName")
       }
       
       
       guard let password = ownerDict["password"] as? String else {
           throw JsonValidationError.isNotValidInput(
               className: String(describing:type(of: self)),
               memberName: "password")
       }
       
       guard let addressJson = ownerDict["address"] as? [String: String] else {
           throw JsonValidationError.isNotValidInput(
               className: String(describing:type(of: self)),
               memberName: "address")
       }
        
        guard let contactJson = ownerDict["contact"] as? [String: String] else {
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
        
        guard let companyTitle = ownerDict["companyTitle"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "companyTitle")
        }
        
        guard let url = ownerDict["url"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "url")
        }
        self.init(id: id,
                  firstName: firstName,
                  lastName: lastName,
                  gender: gender,
                  birthDate: birthDate,
                  userName: userName,
                  password: password,
                  contact: contact!,
                  companyTitle: companyTitle,
                  url: url)
        
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
}
