//
//  PasswordUtil.swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-20.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

struct PasswordUtil

{
    static private let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    static func getSalt() -> String{
        return String((0..<10).map{ _ in PasswordUtil.letters.randomElement()! })
    }
    
    static func getHashedPassword(salt: String, plainPassword: String) ->  String{
        return salt + plainPassword
    }

    static func validate(salt: String, hashedPassword: String, userInputPassword: String) -> Bool{
        return getHashedPassword(salt: salt, plainPassword: userInputPassword) == hashedPassword
    }
}

