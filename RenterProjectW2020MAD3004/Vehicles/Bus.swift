//
//  Bus.swift
//  RenterProjectW2020MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//
import Foundation

 class Bus: Vehicle
{
       
       var busType: String = ""
       var accessibilityServices: Bool
       var wifiAvailability: Bool
       var standingCapacity: Int = 0
   
    init(vehicleId: String, description: String?, manufacturer: String, fuelType: FuelType, isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String?, numberOfSeat: Int, baseRate: Float, perKmRate: Float,busType: String, accessibilityServices: Bool, wifiAvailability: Bool, standingCapacity: Int, driver: Driver)
  {

    self.busType = busType
    self.accessibilityServices = accessibilityServices
    self.wifiAvailability = wifiAvailability
    self.standingCapacity = standingCapacity
    super.init(vehicleId: vehicleId, description: description, manufacturer: manufacturer, fuelType: fuelType, isSelfDrive: isSelfDrive, isInsured: isInsured, insuranceProviderName: insuranceProviderName, numberOfSeat: numberOfSeat, baseRate: baseRate, perKmRate: perKmRate, driver:  driver)
    
   }
    
    
    init(busDict: [String: Any]) throws {
        
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
        guard let standingCapacity = busDict["standingCapacity"] as? Int else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "standingCapacity")
        }
        
        self.busType = busType
        self.accessibilityServices = accessibilityServices
        self.wifiAvailability = wifiAvailability
        self.standingCapacity = standingCapacity
        try super.init(vehicleDict: busDict)
    
    }
    
    override func display()
    {
            var logger = Log()

           print("\n\t\tVehicle ID              : \(vehicleId)", to: &logger)
           print("\t\tBus Type                : \(busType)", to: &logger)
           print("\t\tDescription             : \(String(describing: description ?? ""))", to: &logger)
           print("\t\tManufacturer            : \(manufacturer)", to: &logger)
           print("\t\tType Of Fuel            : \(fuelType)", to: &logger)
           print("\t\tAccessibility Services  : \(accessibilityServices)", to: &logger)
           print("\t\tStanding Capacity       : \(standingCapacity) people", to: &logger)        
    }
    
}

