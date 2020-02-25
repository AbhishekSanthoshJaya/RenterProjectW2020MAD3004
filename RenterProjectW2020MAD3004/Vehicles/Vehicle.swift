//
//  Vehicle.swift
//  RenterProjectW2020MAD3004
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

class Vehicle: IDisplayDelegate, TypeName , Hashable
{
    
    
     var vehicleId: String
     var description: String?
     var manufacturer:String
     var isSelfDrive: Bool
     var isInsured: Bool
     var insuranceProviderName: String?
     var numberOfSeat: Int
     var fuelType: FuelType
     var baseRate: Float
     var perKmRate: Float
     var driver: Driver?
     var hashValue: Int {
        return (vehicleId + typeName).hashValue
    }
    static func == (lhs: Vehicle, rhs: Vehicle) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
    init(vehicleId: String, description: String?, manufacturer: String, fuelType: FuelType,  isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String?, numberOfSeat: Int, baseRate: Float, perKmRate: Float, driver:Driver) {
        self.vehicleId = vehicleId
        self.description = description
        self.manufacturer = manufacturer
        self.isInsured = isInsured
        self.isSelfDrive = isSelfDrive
        self.insuranceProviderName = insuranceProviderName
        self.numberOfSeat = numberOfSeat
        self.fuelType = fuelType
        self.baseRate = baseRate
        self.perKmRate = perKmRate
        self.driver = driver
        
    }
    
    init(vehicleDict: [String: Any])  throws {
        guard let vehicleId = vehicleDict["vehicleId"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "vehicleId")
        }
        
        guard let description = vehicleDict["description"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "description")
        }
        
        guard let manufacturer = vehicleDict["manufacturer"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "manufacturer")
        }
        
        guard let fuelTypeString =  vehicleDict["fuelType"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "fuelType")
        }
        let fuelType = FuelType.getFuelType(fuelString: fuelTypeString)
        
        guard let isSelfDriveInt = vehicleDict["isSelfDrive"] as? Int else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "isSelfDrive")
        }
        let isSelfDrive = isSelfDriveInt == 1
        
        guard let isInsuredInt = vehicleDict["isInsured"] as? Int else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "isInsured")
        }
        let isInsured = isInsuredInt == 1
        
        guard let insuranceProviderName = vehicleDict["insuranceProviderName"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "insuranceProviderName")
        }
        
        guard let numberOfSeat = vehicleDict["numberOfSeat"] as? Int else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "numberOfSeat")
        }
        
        guard let baseRate = vehicleDict["baseRate"] as? Float else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "baseRate")
        }
        
        guard let perKmRate = vehicleDict["perKmRate"] as? Float else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "perKmRate")
        }
        
        guard let driver = vehicleDict["driverId"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "driverId")
        }
        let driverManager = ObjectManager.getInstance()
        var driverObj: Driver? = nil
        if let temp = driverManager.getPersonById(id: driver, typeName: Driver.typeSName) {
            driverObj = temp as! Driver
        }
        
        self.vehicleId = vehicleId
        self.description = description
        self.manufacturer = manufacturer
        self.isInsured = isInsured
        self.isSelfDrive = isSelfDrive
        self.insuranceProviderName = insuranceProviderName
        self.numberOfSeat = numberOfSeat
        self.fuelType = fuelType
        self.baseRate = baseRate
        self.perKmRate = perKmRate
        self.driver = driverObj
    
    }
    
    
    func display() {
        print("vehicle")
    }
}



