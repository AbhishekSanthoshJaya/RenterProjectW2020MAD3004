//
//  Car.swift
//  RenterProjectW2020MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

class Car: Vehicle
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
    var carType: String
    var carColor: String
   
    init(vehicleId: String, description: String?, manufacturer: String, fuelType: FuelType, carColor: String, carType: String, isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String?, numberOfSeat: Int, baseRate: Float, perKmRate: Float)
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
    self.carType=carType
    self.carColor=carColor
  }
    
    convenience init(carDict: [String: Any]) throws {
        
        guard let vehicleId = carDict["vehicleId"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "vehicleId")
        }
        
        guard let description = carDict["description"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "description")
        }
        
        guard let manufacturer = carDict["manufacturer"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "manufacturer")
        }
        
        guard let fuelTypeString =  carDict["fuelType"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "fuelType")
        }
        let fuelType = FuelType.getFuelType(fuelString: fuelTypeString)
        
        guard let carType = carDict["carType"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "carType")
        }
        
        guard let carColor = carDict["carColor"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "carColor")
        }
        guard let isSelfDriveInt = carDict["isSelfDrive"] as? Int else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "isSelfDrive")
        }
        let isSelfDrive = isSelfDriveInt == 1
        
        guard let isInsuredInt = carDict["isInsured"] as? Int else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "isInsured")
        }
        let isInsured = isInsuredInt == 1
        
        guard let insuranceProviderName = carDict["insuranceProviderName"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "insuranceProviderName")
        }
        
        guard let numberOfSeat = carDict["numberOfSeat"] as? Int else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "numberOfSeat")
        }
        
        guard let baseRate = carDict["baseRate"] as? Float else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "baseRate")
        }
        
        guard let perKmRate = carDict["perKmRate"] as? Float else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "perKmRate")
        }
        
      
        self.init(vehicleId: vehicleId ,
                  description: description,
                  manufacturer: manufacturer,
                   fuelType: fuelType,
                   carColor: carColor,
                   carType: carType,
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
        print("\n Vehicle ID           : \(vehicleId)")
        print("Description             : \(String(describing: description))")
        print("manufacturer            : \(manufacturer)")
        print("Type of fuel            : \(fuelType)")
        print("Car Type                : \(carType)")
        print("Car Color               : \(carColor)")

    }
    
}
