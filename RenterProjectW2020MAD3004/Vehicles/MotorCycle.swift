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
    
    init(vehicleId: String, description: String?, manufacturer: String, fuelType: FuelType, topSpeed: Int, mileage: Int, isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String?, numberOfSeat: Int, baseRate: Float, perKmRate: Float)
  {
    self.vehicleId = vehicleId
    self.description = description
    self.manufacturer = manufacturer
    self.fuelType = fuelType
    self.topSpeed = topSpeed
    self.mileage = mileage
    self.isSelfDrive = isSelfDrive
    self.isInsured = isInsured
    self.insuranceProviderName = insuranceProviderName
    self.numberOfSeat = numberOfSeat
    self.baseRate = baseRate
    self.perKmRate = perKmRate
  }
    
    convenience init(motorCycleDict: [String: Any]) throws {
        
        guard let vehicleId = motorCycleDict["vehicleId"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "vehicleId")
        }
        
        guard let description = motorCycleDict["description"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "description")
        }
        
        guard let manufacturer = motorCycleDict["manufacturer"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "manufacturer")
        }
        
        guard let fuelTypeString =  motorCycleDict["fuelType"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "fuelType")
        }
        let fuelType = FuelType.getFuelType(fuelString: fuelTypeString)
        
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
        guard let isSelfDriveInt = motorCycleDict["isSelfDrive"] as? Int else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "isSelfDrive")
        }
        let isSelfDrive = isSelfDriveInt == 1
        
        guard let isInsuredInt = motorCycleDict["isInsured"] as? Int else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "isInsured")
        }
        let isInsured = isInsuredInt == 1
        
        guard let insuranceProviderName = motorCycleDict["insuranceProviderName"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "insuranceProviderName")
        }
        
        guard let numberOfSeat = motorCycleDict["numberOfSeat"] as? Int else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "numberOfSeat")
        }
        
        guard let baseRate = motorCycleDict["baseRate"] as? Float else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "baseRate")
        }
        
        guard let perKmRate = motorCycleDict["perKmRate"] as? Float else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "perKmRate")
        }
        
      
        self.init(vehicleId: vehicleId ,
                  description: description,
                  manufacturer: manufacturer,
                   fuelType: fuelType,
                   topSpeed: topSpeed,
                   mileage: mileage,
                   isSelfDrive: isSelfDrive,
                   isInsured: isInsured,
                   insuranceProviderName: insuranceProviderName ,
                   numberOfSeat: numberOfSeat ,
                   baseRate: baseRate ,
                   perKmRate: perKmRate
                    )
    }
    
      func display()
    {
        print("\nVehicle ID              : \(vehicleId)")
        print("Description             : \(String(describing: description))")
        print("Manufacturer            : \(manufacturer)")
        print("Type Of Fuel            : \(fuelType)")
        print("Top Speed               : \(topSpeed)")
        print("Mileage                 : \(mileage)")
        print("Number Of Seats         : \(numberOfSeat)")
    }
}
