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
    required init() {}
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
   
   init(carType: String, carColor: String)
  {
 
    self.carType=carType
    self.carColor=carColor
  }
   
    func display()
    {
        print("\n Vehicle ID           : \(vehicleId)")
        print("Description             : \(String(describing: description))")
        print("manufacturer            : \(manufacturer)")
        print("Type of fuel            : \(fuelType)")
        print("Car Type                : \(carType)")
        print("Car Color                     : \(carColor)")

    }
    
}
