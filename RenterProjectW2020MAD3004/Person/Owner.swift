//
//  Owner.swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

public class Owner : Person
{
    private var companyTitle: String
    private var landLineNumber: String
    private var url: String
    //todo - add a dictionary for vehicle list after the vehicle class is completed

    init(id: String, firstName: String, lastName: String, gender: Gender, birthDate: Date?, age: Int, userName: String, password: String, contact: Contact, address : Address, companyTitle: String, landLineNumber: String, url: String)
    
    {
    super.init(id: String, firstName: String, lastName: String, gender: Gender, birthDate: Date?, age: Int, userName: String, password: String, contact: Contact, address : Address)
    self.companyTitle = companyTitle
    self.landLineNumber = landLineNumber
    self.url = url
    }
    
}
