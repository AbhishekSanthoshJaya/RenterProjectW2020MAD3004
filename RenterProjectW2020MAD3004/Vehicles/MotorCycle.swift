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
        print("\nVehicle ID              : \(vehicleId)", to: &logger)
        print("Description             : \(String(describing: description ?? ""))", to: &logger)
        print("Manufacturer            : \(manufacturer)", to: &logger)
        print("Type Of Fuel            : \(fuelType)", to: &logger)
        print("Top Speed               : \(topSpeed)", to: &logger)
        print("Mileage                 : \(mileage)", to: &logger)
        print("Number Of Seats         : \(numberOfSeat)", to: &logger)
    }
}
