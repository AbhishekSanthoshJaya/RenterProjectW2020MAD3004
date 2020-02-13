//
//  Person.swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

public enum Gender
{
    case MALE, FEMALE,OTHER
}
 
class Person : IDisplayDelegate
{
    private var id: String
    private var firstName: String
    private var lastName: String
    private var gender: Gender
    private var birthDate: Date?
    private var age: Int
    private var userName :String
    private var password: String
    private var contact: Contact

}
