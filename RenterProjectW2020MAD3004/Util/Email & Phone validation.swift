//
//  Email & Phone validation.swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-22.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation
public func isValid(emailAddressString: String) -> Bool
 {
     var returnValue = true
     let emailRegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
do
 {
     let regex = try NSRegularExpression(pattern: emailRegEx)
     let nsString = emailAddressString as NSString
     let results = regex.matches(in: emailAddressString, range: NSRange(location: 0, length: nsString.length))
     
     if results.count == 0
     {
         returnValue = false
     }
 }
 catch let error as NSError
 {
     print("invalid regex: \(error.localizedDescription)")
     returnValue = false
 }
 
 return  returnValue
 }




