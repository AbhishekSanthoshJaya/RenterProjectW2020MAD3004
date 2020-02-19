//
//  Bus.swift
//  RenterProjectW2020MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//
import Foundation

public class Bus: Vehicle{
  private var busType: String = ""
  private var accessibilityServices: Bool
  private var wifiAvailability: Bool
  private var standingCapacity: Int = 0
   
  init(vehicleId: String, description: String? , manufacturer: String, isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String?, numberOfSeat: Int, baseRate: Float, perKmRate: Float, busType: String, accessibilityServices: Bool, wifiAvailability: Bool, standingCapacity: Int)
  {
    self.busType = busType
    self.accessibilityServices = accessibilityServices
    self.wifiAvailability = wifiAvailability
    self.standingCapacity = standingCapacity
    super.init(vehicleId: vehicleId, description: description, manufacturer: manufacturer, isSelfDrive: isSelfDrive,isInsured:isInsured,insuranceProviderName: insuranceProviderName, numberOfSeat: numberOfSeat, baseRate: baseRate, perKmRate: perKmRate)
  }
}
