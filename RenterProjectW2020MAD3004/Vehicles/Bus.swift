//
//  Bus.swift
//  RenterProjectW2020MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//
import Foundation

public class Bus: Vehicle
{
    
       required init() {}
       var vehicleId: String
       var description: String?
       var manufacturer: String
       var isSelfDrive: Bool
       var isInsured: Bool
       var insuranceProviderName: String?
       var numberOfSeat: Int
       var fuelType: FuelType
       var baseRate: Float
       var perKmRate: Float
       var busType: String = ""
       var accessibilityServices: Bool
       var wifiAvailability: Bool
       var standingCapacity: Int = 0
   
   init(busType: String, accessibilityServices: Bool, wifiAvailability: Bool, standingCapacity: Int)
  {
    self.busType = busType
    self.accessibilityServices = accessibilityServices
    self.wifiAvailability = wifiAvailability
    self.standingCapacity = standingCapacity
    }

    func display()
    {      print("Maximum standing capacity is    : \(standingCapacity) people")
           print("Bus type                : \(busType)")
           print("\n Vehicle ID           : \(vehicleId)")
           print("Description             : \(String(describing: description))")
           print("manufacturer            : \(manufacturer)")
           print("Type of fuel            : \(fuelType)")
        
    }
    
}










//vehicleId: String, description: String? , manufacturer: String, isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String?, numberOfSeat: Int, baseRate: Float, perKmRate: Float,
