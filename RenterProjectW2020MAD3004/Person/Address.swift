//
//  Address .swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

/*Address class to manage the city,country,pin and
 street name for customer,owner and driver */
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
    
    convenience init(addressDict: [String: String]) throws {
        guard let country = addressDict["country"] else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "country")
        }
        
        guard let city = addressDict["city"] else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "city")
        }
        
        
        guard let pincode = addressDict["pincode"] else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "pincode")
        }
        
        
        guard let streetName = addressDict["streetName"] else {
                   throw JsonValidationError.isNotValidInput(
                       className: String(describing:type(of: self)),
                       memberName: "streetName")
               }
        
        self.init(country: country, city: city, pincode: pincode, streetName: streetName)
        
    }

}
