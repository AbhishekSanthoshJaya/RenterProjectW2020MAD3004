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
    var kmDriven: Float = 0
    var totalBill: Float = 0
    var vehicle: Vehicle
    
    init(id: String,rentStartDate: Date, rentEndDate: Date, vehicle: Vehicle, kmDriven: Float){
        self.id = id
        self.rentEndDate = rentEndDate
        self.rentStartDate = rentStartDate
        self.vehicle = vehicle
        self.totalBill = calculateTotalBill()
        self.kmDriven = kmDriven
    }
    
   func calculateNumberOfDays() -> Int
    {
        return Calendar.current.dateComponents([.day], from: self.rentStartDate, to: self.rentEndDate).day!
    }

    func display(){
        var logger = Log()
        print("\nStart Date             : \(rentStartDate.printFormat())", to: &logger)
        print("End Date                : \(rentEndDate.printFormat())", to: &logger)
        print("Number Of Days          : \(numberOfDays)", to: &logger)
        print("KM Driven               : \(kmDriven.distanceFormat())", to: &logger)
        print("Total Bill              : \(totalBill.priceFormat())", to: &logger)
    }
    
    func calculateTotalBill() ->  Float{
        let baseRate = self.vehicle.baseRate
        let perKmRate = self.vehicle.perKmRate
        return baseRate + (perKmRate * Float(numberOfDays))
    }
}
