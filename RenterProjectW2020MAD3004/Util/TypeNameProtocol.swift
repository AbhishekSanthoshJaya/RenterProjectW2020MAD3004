//
//  TypeNameProtocol.swift
//  RenterProjectW2020MAD3004
//
//  Created by Prakash on 2020-02-24.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

protocol TypeName: AnyObject {
    static var typeSName: String { get }
    var typeName: String {get }
    
}

// Swift Objects
extension TypeName {
    static var typeSName: String {
        let type = String(describing: self)
        return type
    }
    
    var typeName: String {
        return Self.typeSName
    }
}
