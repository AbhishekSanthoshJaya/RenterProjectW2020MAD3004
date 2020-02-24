//
//  VehicleRent.swift
//  RenterProjectW2020MAD3004
//
//  Created by MacStudent on 2020-02-21.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

class VehicleRent: IDisplayDelegate
{
    var rentStartDate: Date
    var rentEndDate: Date
    var numberOfDays: Int = 0
    var kmDriven: Int = 0
    var totalBill: Float = 0
    var vehicle: Vehicle?
    
    init(rentStartDate: Date, rentEndDate: Date, vehicle: Vehicle){
        self.rentEndDate = rentEndDate
        self.rentStartDate = rentStartDate
        self.vehicle = vehicle
    }
    
    func display(){
        print("\nStart Date             : \(rentStartDate)")
        print("End Date                : \(rentEndDate)")
        print("Number Of Days          : \(numberOfDays)")
        print("KM Driven               : \(kmDriven)")
        print("Total Bill              : \(totalBill)")
    }
}
