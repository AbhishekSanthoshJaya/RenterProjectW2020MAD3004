//
//  Vehicle.swift
//  RenterProjectW2020MAD3004
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

protocol Vehicle: IDisplayDelegate
{
     func display()
     var vehicleId: String{ get set}
     var description: String?{ get set}
     var manufacturer:String{ get set}
     var isSelfDrive: Bool{ get set}
     var isInsured: Bool{ get set}
     var insuranceProviderName: String?{ get set}
     var numberOfSeat: Int{ get set}
     var fuelType: FuelType.Type {get set}
     var baseRate: Float{ get set}
     var perKmRate: Float{ get set}
}
//  init(vehicleId: String, description: String?, manufacturer: String, fuelType: FuelType.Type, isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String?, numberOfSeat: Int, baseRate: Float, perKmRate: Float) {
//        self.vehicleId = vehicleId
//        self.description = description
//        self.manufacturer = manufacturer
//        self.fuelType = fuelType
//        self.isSelfDrive = isSelfDrive
//        self.isInsured = isInsured
//        self.insuranceProviderName = insuranceProviderName
//        self.numberOfSeat = numberOfSeat
//        self.baseRate = baseRate
//        self.perKmRate = perKmRate
//    }
    
