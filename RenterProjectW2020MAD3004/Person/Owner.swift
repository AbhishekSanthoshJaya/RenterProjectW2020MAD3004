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

    internal init(companyTitle: String, landLineNumber: String, url: String)
    {
    self.companyTitle = companyTitle
    self.landLineNumber = landLineNumber
    self.url = url
    }
    
}
