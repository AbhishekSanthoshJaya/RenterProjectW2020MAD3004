//
//  PasswordUtil.swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-20.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation
import CryptoKit


/* Function to generate the encryption key*/

func generateEncryptionKey(withPassword password:String) throws -> String
{
    let randomData = RNCryptor.randomData(ofLength: 32)
    let cipherData = RNCryptor.encrypt(data: randomData, withPassword: password)
    return cipherData.base64EncodedString()
}

