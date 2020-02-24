//
//  VehicleRepository.swift
//  RenterProjectW2020MAD3004
//
//  Created by Prakash on 2020-02-24.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

// Singleton struct to manage vehicles
struct VehicleManager{
    private init(){}
    
    private static var vehicleObjects = Array<Vehicle>()
    
    private static var obj = VehicleManager()
    static func getInstance() -> VehicleManager{
        return obj
    }
    
    static func getVehicleById( id: String) -> Vehicle? {
        for vehicle in vehicleObjects{
            if vehicle.vehicleId == id{
                return vehicle
            }
        }
        return nil
    }
}
