//
//  VehicleRepository.swift
//  RenterProjectW2020MAD3004
//
//  Created by Prakash on 2020-02-24.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

// Singel
struct VehicleManager{
    private init(){}
    
    private static var vehicleObjects = Array<Vehicle>()
    
    private static var obj = VehicleManager()
    static func getInstance() -> VehicleManager{
        return obj
    }
}
