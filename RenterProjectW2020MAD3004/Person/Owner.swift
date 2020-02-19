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
    private var companyTitle: String
    private var landLineNumber: String
    private var url: String
    private var vehicleList = [String: Vehicle]()

    init(id: String, firstName: String, lastName: String, gender: Gender, birthDate: Date?, age: Int, userName: String, password: String, contact: Contact, address : Address, companyTitle: String, landLineNumber: String, url: String)
    
    {
    self.companyTitle = companyTitle
    self.landLineNumber = landLineNumber
    self.url = url
    super.init(id: id, firstName: firstName, lastName: lastName, gender: gender, birthDate: birthDate, age: age, userName: userName, password: password, contact: contact, address : address)
    }
    
}
