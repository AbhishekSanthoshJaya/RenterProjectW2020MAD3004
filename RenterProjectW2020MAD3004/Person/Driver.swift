//
//  Driver.swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

public class Driver : Person
{
    private var drivingLicenceNumber: String
    private var isDrivingHistoryClean: String
    private var salary: Float
    
    init(id: String, firstName: String, lastName: String, gender: Gender, birthDate: Date?, age: Int, userName: String, password: String, contact: Contact, address : Address, drivingLicenceNumber: String, isDrivingHistoryClean: String, salary: Float)
    {
        super.init(id: id, firstName: firstName, lastName: lastName, gender: gender, birthDate: birthDate, age: age, userName: userName, password: password, contact: contact, address : address)
        self.drivingLicenceNumber = drivingLicenceNumber
        self.isDrivingHistoryClean = isDrivingHistoryClean
        self.salary = salary
    }

}
