//
//  Validation.swift
//  RenterProjectW2020MAD3004
//
//  Created by Prakash on 2020-02-21.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

//Exceptions for email,phone number and invalid errors

enum EmailValidationError: Error{
    case isNotValidEmail(email: String)
    case isEmpty(email: String)
    case isNotValidLength(email: String)
}

enum PhoneNumberValidationError: Error{
    case voiletsMinLength(number: String)
    case voiletsMaxLength(number: String)
}

public enum JsonValidationError: Error
{
    case isNotValidInput(className: String, memberName: String)
}


//Structure for email and phone number validations

struct Validations {
    private static let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    
    static func email(email: String) throws {
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegex)
        if !emailPred.evaluate(with: email){
            throw EmailValidationError.isNotValidEmail(email: email)
        }
        
        if email.isEmpty{
            throw EmailValidationError.isEmpty(email: email)
        }
        
        if email.count > 254
        {
            throw EmailValidationError.isNotValidLength(email: email)
        }
    }
    
    
    static func mobileNumber(number: String) throws {
        if number.count < 7 {
            throw PhoneNumberValidationError.voiletsMinLength(number: number)
        }
        
        if number.count > 16 {
            throw PhoneNumberValidationError.voiletsMaxLength(number: number)
        }
    }
    
    
}
