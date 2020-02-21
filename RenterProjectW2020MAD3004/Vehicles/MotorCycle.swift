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
   
    init(){
        self.fuelType = FuelType.PETROL
        self.vehicleId = "1"
        self.manufacturer = "toyota"
        self.isSelfDrive = true
        self.isInsured = true
        self.numberOfSeat = 2
        self.baseRate = 40
        self.perKmRate = 5
    }
    
   init(vehicleId: String, description: String?, manufacturer: String, fuelType: FuelType, isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String?, numberOfSeat: Int, baseRate: Float, perKmRate: Float)
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
  }
    
    convenience init(motorCycleDict: [String: Any]) {
        self.init(vehicleId: motorCycleDict["vehicleId"]  as! String ,
                  description: motorCycleDict["description"] as? String, manufacturer: motorCycleDict["manufacturer"] as! String,
                   fuelType: FuelType.getFuelType(fuelString: motorCycleDict["fuelType"] as! String ),
                   isSelfDrive: motorCycleDict["isSelfDrive"] as! Int == 1,
                   isInsured: motorCycleDict["isInsured"] as! Int   == 1,
                   insuranceProviderName: motorCycleDict["insuranceProviderName"] as? String ,
                   numberOfSeat: motorCycleDict["numberOfSeat"] as! Int ,
                   baseRate: motorCycleDict["baseRate"] as! Float ,
                   perKmRate: motorCycleDict["perKmRate"] as! Float
                    )
    }
    
      func display()
    {
        print("\n Vehicle ID           : \(vehicleId)")
        print("Description             : \(String(describing: description))")
        print("Manufacturer            : \(manufacturer)")
        print("Type Of Fuel            : \(fuelType)")
        print("Top Speed               : \(topSpeed)")
        print("Number Of Seats         : \(numberOfSeat)")
    }
   
}
