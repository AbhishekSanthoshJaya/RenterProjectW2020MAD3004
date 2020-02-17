//
//  Customer .swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

public class Customer : Person
{
 private lazy var vehicleRents: [String: Vehicle]()

 init(id: String, firstName: String, lastName: String, gender: Gender,birthDate: Date?, age: Int, userName: String, password: String, contact: Contact, address : Address) 
 {
   super.init(id: String, firstName: String, lastName: String, gender: Gender,birthDate: Date?, age: Int, userName: String, password: String, contact: Contact, address : Address)
 }
    //ToDo add a dictionary for the vehicle rent
}
