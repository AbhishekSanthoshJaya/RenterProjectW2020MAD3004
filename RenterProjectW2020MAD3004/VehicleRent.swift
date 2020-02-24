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
    var id : String = "0"
    var rentStartDate: Date
    var rentEndDate: Date
    var numberOfDays: Int = 0
    var kmDriven: Int = 0
    var totalBill: Float = 0
    var vehicle: Vehicle?
    
    init(id: String,rentStartDate: Date, rentEndDate: Date, vehicle: Vehicle){
        self.id = id
        self.rentEndDate = rentEndDate
        self.rentStartDate = rentStartDate
        self.numberOfDays = calculateNumberOfDays(rentStartDate: rentStartDate, rentEndDate: rentEndDate) 
        self.vehicle = vehicle
        self.totalBill = calculateTotalBill() //Method to be written
    }
    
   func calculateNumberOfDays(rentStartDate: Date, rentEndDate:Date) -> Int
    {
        return Calendar.current.dateComponents([.day], from: self.rentStartDate, to: self.rentEndDate).day!
    }

    func display(){
        print("\nStart Date             : \(rentStartDate)")
        print("End Date                : \(rentEndDate)")
        print("Number Of Days          : \(numberOfDays)")
        print("KM Driven               : \(kmDriven)")
        print("Total Bill              : \(totalBill)")
    }
    
    func calculateTotalBill() ->  Float{
        return 0
    }
}
