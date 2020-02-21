//
//  MotorCycle.swift
//  RenterProjectW2020MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

import Foundation

class MotorCycle: Vehicle

{
    var fuelType: FuelType
    var vehicleId: String
    var description: String?
    var manufacturer: String
    var isSelfDrive: Bool
    var isInsured: Bool
    var insuranceProviderName: String?
    var numberOfSeat: Int
    var baseRate: Float
    var perKmRate: Float
    var topSpeed: Int = 0
    var mileage: Int = 0
   
   init(vehicleId: String, description: String?, manufacturer: String, fuelType: FuelType, isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String?, numberOfSeat: Int, baseRate: Float, perKmRate: Float, topSpeed: Int, mileage: Int)
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
    self.topSpeed = topSpeed
    self.mileage = mileage
  }
      func display()
    {
        print("\n Vehicle ID           : \(vehicleId)")
        print("Description             : \(String(describing: description))")
        print("Manufacturer            : \(manufacturer)")
        print("Type Of Fuel            : \(fuelType)")
        print("Top Speed               : \(topSpeed)")
        print("Number Of Seats         : \(numberOfSeat)")
    }
   
}
