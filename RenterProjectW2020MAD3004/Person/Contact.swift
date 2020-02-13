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
    internal init(mobileNumber: String, emailId: String)
    {
        self.mobileNumber = mobileNumber
        self.emailId = emailId
    }
    
    private var mobileNumber: String
    private var emailId: String
    //private var address: Address
}
