//
//  Contact.swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation


public class Contact
{
    private var mobileNumber: String
    private var emailId: String
    private var address: Address
    
    internal init(mobileNumber: String, emailId: String, address: Address)
       {
        self.mobileNumber = mobileNumber
        self.emailId = emailId
        self.address = address
       }
    
    
    convenience init(contactDict: [String: String], address: Address) throws {
        
        guard let mobileNumber = contactDict["mobileNumber"] else {
                   throw JsonValidationError.isNotValidInput(
                       className: String(describing:type(of: self)),
                       memberName: "mobileNumber")
               }
        
        guard let emailId = contactDict["emailId"] else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "emailId")
        }
        
        self.init(mobileNumber: mobileNumber, emailId: emailId, address: address)
    }

        
}

