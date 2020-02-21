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
    convenience init(busDict: [String: Any]) throws {
        
        guard let vehicleId = busDict["vehicleId"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "vehicleId")
        }
        
        guard let description = busDict["description"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "description")
        }
        
        guard let manufacturer = busDict["manufacturer"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "manufacturer")
        }
        
        guard let fuelTypeString =  busDict["fuelType"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "fuelType")
        }
        let fuelType = FuelType.getFuelType(fuelString: fuelTypeString)
        
        guard let accessibilityServices = busDict["accessibilityServices"] as? Bool else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "accessibilityServices")
        }
        
        guard let busType = busDict["busType"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "busType")
        }
        
        guard let wifiAvailability = busDict["wifiAvailability"] as? Bool else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "wifiAvailability")
        }
        guard let isSelfDriveInt = busDict["isSelfDrive"] as? Int else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "isSelfDrive")
        }
        let isSelfDrive = isSelfDriveInt == 1
        
        guard let isInsuredInt = busDict["isInsured"] as? Int else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "isInsured")
        }
        let isInsured = isInsuredInt == 1
        
        guard let insuranceProviderName = busDict["insuranceProviderName"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "insuranceProviderName")
        }
        
        guard let numberOfSeat = busDict["numberOfSeat"] as? Int else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "numberOfSeat")
        }
        
        guard let baseRate = busDict["baseRate"] as? Float else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "baseRate")
        }
        
        guard let perKmRate = busDict["perKmRate"] as? Float else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "perKmRate")
        }
        guard let standingCapacity = busDict["standingCapacity"] as? Int else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "standingCapacity")
        }
        
      
        self.init(vehicleId: vehicleId ,
                  description: description,
                  manufacturer: manufacturer,
                   fuelType: fuelType,
                   isSelfDrive: isSelfDrive,
                   isInsured: isInsured,
                   insuranceProviderName: insuranceProviderName,
                   numberOfSeat: numberOfSeat,
                   baseRate: baseRate,
                   perKmRate: perKmRate,
                   busType: busType,
                   accessibilityServices: accessibilityServices,
                   wifiAvailability: wifiAvailability,
                   standingCapacity: standingCapacity
                 )
    }
    
    func display()
    {
           print("\nVehicle ID              : \(vehicleId)")
           print("Bus Type                : \(busType)")
           print("Description             : \(String(describing: description))")
           print("Manufacturer            : \(manufacturer)")
           print("Type Of Fuel            : \(fuelType)")
           print("Accessibility Services  : \(accessibilityServices)")
           print("Standing Capacity       : \(standingCapacity) people")
        
    }
    
}

