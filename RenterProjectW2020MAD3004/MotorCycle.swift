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
  private var topSpeed: Int = 0
  private var mileage: Int = 0
   
  init(vehicleId: String, description: String? , manufacturer: String, isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String?, numberOfSeat: Int, baseRate: Float, perKmRate: Float, topSpeed: Int, mileage: Int)
  {
    self.topSpeed = topSpeed
    self.mileage = mileage
    super.init(vehicleId: vehicleId, description: description, manufacturer: manufacturer, isSelfDrive: isSelfDrive,isInsured:isInsured,insuranceProviderName: insuranceProviderName, numberOfSeat: numberOfSeat, baseRate: baseRate, perKmRate: perKmRate)
  }
   
}
