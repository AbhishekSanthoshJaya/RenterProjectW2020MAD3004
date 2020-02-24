//
//  PasswordUtil.swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-20.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation
import CryptoKit



class passwordUtil

{
/* Function to generate random encoded data*/

func getEncKey(ofLength length:Int) throws -> String
{
    let randomData = RNCryptor.randomData(ofLength: 32)
    return randomData.base64EncodedString()
}

/* Function to generate a secure password using
 random encoded data and password*/

func generateSecurePassword(password: String) throws -> String
{
    let encryptedKey = try getEncKey(ofLength:32)
    let cipherData = password.data(using: .utf8)!
    let securePassword = RNCryptor.encrypt(data: cipherData, withPassword: encryptedKey)
    return securePassword.base64EncodedString()
}

//to make validation function
}

