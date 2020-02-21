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
    required init()
    {}
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
   
  init(vehicleId: String, description: String? , manufacturer: String, isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String?, numberOfSeat: Int, baseRate: Float, perKmRate: Float, topSpeed: Int, mileage: Int)
  {
    self.topSpeed = topSpeed
    self.mileage = mileage
  }
      func display()
    {
        print("\n Vehicle ID           : \(vehicleId)")
        print("Description             : \(String(describing: description))")
        print("manufacturer            : \(manufacturer)")
        print("Type of fuel            : \(fuelType)")
        print("Top speed               : \(topSpeed)")
        print("Number Of seats         : \(numberOfSeat)")
    }
   
}
