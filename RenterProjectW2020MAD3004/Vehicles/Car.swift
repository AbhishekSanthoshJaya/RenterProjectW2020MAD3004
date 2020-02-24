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
    var carType: String
    var carColor: String
    
   
    init(vehicleId: String, description: String?, manufacturer: String, fuelType: FuelType, carColor: String, carType: String, isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String?, numberOfSeat: Int, baseRate: Float, perKmRate: Float, driver: Driver)
  {
    self.carType=carType
    self.carColor=carColor
    super.init(vehicleId: vehicleId, description: description, manufacturer: manufacturer,
               fuelType: fuelType, isSelfDrive: isSelfDrive, isInsured: isInsured, insuranceProviderName: insuranceProviderName, numberOfSeat: numberOfSeat, baseRate: baseRate, perKmRate: perKmRate, driver: driver)
    
  }
    
   init(carDict: [String: Any]) throws {
        
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
    self.carType=carType
    self.carColor=carColor
    try super.init(vehicleDict: carDict)
        
    }
    
    override func display()
    {
        print("\nVehicle ID              : \(vehicleId)")
        print("Description             : \(description ?? "")")
        print("Manufacturer            : \(manufacturer)")
        print("Type of fuel            : \(fuelType)")
        print("Car Type                : \(carType)")
        print("Car Color               : \(carColor)")
    }
    
}
