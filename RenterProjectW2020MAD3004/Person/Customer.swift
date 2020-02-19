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
    private lazy var vehicleRents = [String: Vehicle]()

    override init(id: String, firstName: String, lastName: String, gender: Gender.Type,birthDate: Date?, age: Int, userName: String, password: String, contact: Contact, address : Address)
 {
    super.init(id: id, firstName: firstName, lastName: lastName, gender: gender, birthDate: birthDate, age: age, userName: userName, password: password, contact: contact, address : address)
 }
    //ToDo add a dictionary for the vehicle rent
}
