//
//  Person.swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation
 
protocol Person : IDisplayDelegate
{
     func display()
     var id: String {get set}
     var firstName: String {get set}
     var lastName: String {get set}
     var gender: Gender.Type {get set}
     var birthDate: Date? {get set}
     var age: Int {get set}
     var userName: String {get set}
     var password: String {get set}
     var contact: Contact {get set}
     var address: Address {get set}
    
    //init(id: String, firstName: String, lastName: String, gender: Gender.Type, birthDate: Date?, age: Int, userName: String, password: String, contact: Contact, address : Address)
}
