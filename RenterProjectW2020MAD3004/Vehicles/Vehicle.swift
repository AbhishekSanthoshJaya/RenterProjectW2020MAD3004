//
//  Vehicle.swift
//  RenterProjectW2020MAD3004
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

protocol Vehicle: IDisplayDelegate, TypeName
{
     func display()
     var vehicleId: String{ get set}
     var description: String?{ get set}
     var manufacturer:String{ get set}
     var isSelfDrive: Bool{ get set}
     var isInsured: Bool{ get set}
     var insuranceProviderName: String?{ get set}
     var numberOfSeat: Int{ get set}
     var fuelType: FuelType {get set}
     var baseRate: Float{ get set}
     var perKmRate: Float{ get set}

}



