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
    private var province: String
    private var city: String
    private var pincode: String
    private var latitude: String
    private var longitude: String
    private var streetName: String
    
    internal init(country: String, province: String, city: String, pincode: String, latitude: String, longitude: String, streetName: String)
    {
        self.country = country
        self.province = province
        self.city = city
        self.pincode = pincode
        self.latitude = latitude
        self.longitude = longitude
        self.streetName = streetName
    }

}