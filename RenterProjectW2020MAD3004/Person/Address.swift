//
//  Address .swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

public class Address
{
    private var country: String
    private var city: String
    private var pincode: String
    private var streetName: String
    
    init(country: String, city: String, pincode: String, streetName: String)
    {
        self.country = country
        self.city = city
        self.pincode = pincode
        self.streetName = streetName
    }

}
