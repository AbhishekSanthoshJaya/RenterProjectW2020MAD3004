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
/* Function to generate the encryption key using User entered password*/

func getSalt(withPassword userPassword:String) throws -> String
{
    let randomData = RNCryptor.randomData(ofLength: 32)
    let cipherData = RNCryptor.encrypt(data: randomData, withPassword: userPassword)
    return cipherData.base64EncodedString()
}

/* Function to generated a secure password using
 genereated encryption key and user password*/

func generateSecurePassword(userPassword: String, salt: String) throws -> String
{
    let encryptedKey = try getSalt(withPassword: salt)
    let securePassword = userPassword.data(using: .utf8)!
    let cipherData = RNCryptor.encrypt(data: securePassword, withPassword: encryptedKey)
    return cipherData.base64EncodedString()
}

/* Function to decrypt the password if user changes password,
 simply decrypt the key with the old password and re-encrypt it with the new password.*/

func decryptPassword(securePassword: String, encryptKey: String) throws -> String
        {
        let encryptedPassword = Data.init(base64Encoded: securePassword)!
        let decryptedData = try RNCryptor.decrypt(data: encryptedPassword, withPassword: encryptKey)
        let decryptedString = String(data: decryptedData, encoding: .utf8)!
        return decryptedString
        }
}

