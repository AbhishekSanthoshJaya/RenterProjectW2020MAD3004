//
//  Car.swift
//  RenterProjectW2020MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

class Car: Vehicle{
  private var carType: String = ""
  private var carColor: String = ""
   
  init(vehicleId: String, description: String? , manufacturer: String, isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String?, numberOfSeat: Int, baseRate: Float, perKmRate: Float, carType: String, carColor: String)
  {
    super.init(vehicleId: vehicleId, description: description, manufacturer: manufacturer, isSelfDrive: isSelfDrive,isInsured:isInsured,insuranceProviderName: insuranceProviderName, numberOfSeat: numberOfSeat, baseRate: baseRate, perKmRate: perKmRate)
    self.carType = carType
    self.carColor = carColor
  }
   
}
