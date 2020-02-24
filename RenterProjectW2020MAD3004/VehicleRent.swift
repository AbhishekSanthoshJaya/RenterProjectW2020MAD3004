//
//  VehicleRent.swift
//  RenterProjectW2020MAD3004
//
//  Created by MacStudent on 2020-02-21.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

class VehicleRent: IDisplayDelegate, TypeName
{
    var id : String = "0"
    var rentStartDate: Date
    var rentEndDate: Date
    var numberOfDays: Int {get {self.calculateNumberOfDays()}}
    var kmDriven: Int = 0
    var totalBill: Float = 0
    var vehicle: Vehicle
    
    init(id: String,rentStartDate: Date, rentEndDate: Date, vehicle: Vehicle){
        self.id = id
        self.rentEndDate = rentEndDate
        self.rentStartDate = rentStartDate
        self.vehicle = vehicle
        self.totalBill = calculateTotalBill()
    }
    
   func calculateNumberOfDays() -> Int
    {
        return Calendar.current.dateComponents([.day], from: self.rentStartDate, to: self.rentEndDate).day!
    }

    func display(){
        print("\nStart Date             : \(rentStartDate.printFormat())")
        print("End Date                : \(rentEndDate.printFormat())")
        print("Number Of Days          : \(numberOfDays)")
        print("KM Driven               : \(kmDriven.distanceFormat())")
        print("Total Bill              : \(totalBill.priceFormat())")
    }
    
    func calculateTotalBill() ->  Float{
        let baseRate = self.vehicle.baseRate
        let perKmRate = self.vehicle.perKmRate
        return baseRate + (perKmRate * Float(numberOfDays))
    }
}
