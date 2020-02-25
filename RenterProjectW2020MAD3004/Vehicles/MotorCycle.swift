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
    var topSpeed: Int = 0
    var mileage: Int = 0
    
    init(vehicleId: String, description: String?, manufacturer: String, fuelType: FuelType, topSpeed: Int, mileage: Int, isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String?, numberOfSeat: Int, baseRate: Float, perKmRate: Float, driver: Driver)
  {
    
    self.topSpeed = topSpeed
    self.mileage = mileage
    super.init(vehicleId: vehicleId, description: description, manufacturer: manufacturer, fuelType: fuelType, isSelfDrive: isSelfDrive, isInsured: isInsured, insuranceProviderName: insuranceProviderName, numberOfSeat: numberOfSeat, baseRate: baseRate, perKmRate: perKmRate, driver: driver)
  }
    
   init(motorCycleDict: [String: Any]) throws {
        
        guard let topSpeed = motorCycleDict["topSpeed"] as? Int else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "topSpeed")
        }
        
        guard let mileage = motorCycleDict["mileage"] as? Int else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "mileage")
        }
        self.topSpeed = topSpeed
        self.mileage = mileage
    
        try super.init(vehicleDict: motorCycleDict)
        
    }
    
    override func display()
    {
        var logger = Log()
        print("\n\t\tVehicle ID              : \(vehicleId)", to: &logger)
        print("\t\tDescription             : \(String(describing: description ?? ""))", to: &logger)
        print("\t\tManufacturer            : \(manufacturer)", to: &logger)
        print("\t\tType Of Fuel            : \(fuelType)", to: &logger)
        print("\t\tTop Speed               : \(topSpeed)", to: &logger)
        print("\t\tMileage                 : \(mileage)", to: &logger)
        print("\t\tNumber Of Seats         : \(numberOfSeat)", to: &logger)
    }
}
