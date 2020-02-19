//
//  Person.swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation
 
class Person : IDisplayDelegate
{
    func display()
    {
        //todo Write code for display function
    }
    private var id: String
    private var firstName: String
    private var lastName: String
    private var gender: Gender.Type
    private var birthDate: Date?
    private var age: Int
    private var userName: String
    private var password: String
    private var contact: Contact
    private var address: Address
    
    init(id: String, firstName: String, lastName: String, gender: Gender.Type, birthDate: Date?, age: Int, userName: String, password: String, contact: Contact, address : Address)
       {
           self.id = id
           self.firstName = firstName
           self.lastName = lastName
           self.gender = gender
           self.birthDate = birthDate
           self.age = age
           self.userName = userName
           self.password = password

       }
}
