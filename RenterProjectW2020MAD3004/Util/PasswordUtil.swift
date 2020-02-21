//
//  PasswordUtil.swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-20.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation
import CryptoKit


/* Function to generate the encryption key using User entered password*/

func generateEncryptionKey(withPassword userPassword:String) throws -> String
{
    let randomData = RNCryptor.randomData(ofLength: 32)
    let cipherData = RNCryptor.encrypt(data: randomData, withPassword: userPassword)
    return cipherData.base64EncodedString()
}

/* Function to generated a secure password using
 genereated encryption key and user password*/

func genereateSecurePassword(userPassword: String, encryptKey: String) throws -> String
{
    let encryptedKey = try generateEncryptionKey(withPassword: encryptKey)
    let securePassword = userPassword.data(using: .utf8)!
    let cipherData = RNCryptor.encrypt(data: securePassword, withPassword: encryptedKey)
    return cipherData.base64EncodedString()
}

