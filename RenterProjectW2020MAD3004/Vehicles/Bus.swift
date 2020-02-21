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
   
    init(vehicleId: String, description: String?, manufacturer: String, fuelType: FuelType, isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String?, numberOfSeat: Int, baseRate: Float, perKmRate: Float,busType: String, accessibilityServices: Bool, wifiAvailability: Bool, standingCapacity: Int)
  {
    self.vehicleId = vehicleId
    self.description = description
    self.manufacturer = manufacturer
    self.fuelType = fuelType
    self.isSelfDrive = isSelfDrive
    self.isInsured = isInsured
    self.insuranceProviderName = insuranceProviderName
    self.numberOfSeat = numberOfSeat
    self.baseRate = baseRate
    self.perKmRate = perKmRate
    self.busType = busType
    self.accessibilityServices = accessibilityServices
    self.wifiAvailability = wifiAvailability
    self.standingCapacity = standingCapacity
    
   }

    func display()
    {
           print("\n Vehicle ID           : \(vehicleId)")
           print("Standing Capacity       : \(standingCapacity) people")
           print("Bus Type                : \(busType)")
           print("Description             : \(String(describing: description))")
           print("Manufacturer            : \(manufacturer)")
           print("Type Of Fuel            : \(fuelType)")
        
    }
    
}

