//
//  Owner.swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

/* Customer class which inherts person*/
class Owner : Person
{
    
    var companyTitle: String
    var url: String
    var vehicleList = [String: Vehicle]()
    
    init(id: String, firstName: String, lastName: String, gender: Gender, birthDate: Date?, age:Int,
        userName: String, password: String, contact: Contact, companyTitle: String,  url: String,
        vehicleList: [String: Vehicle])
    {
        self.companyTitle = companyTitle
        self.url = url
        self.vehicleList = vehicleList
        super.init(id: id, firstName: firstName, lastName: lastName, gender: gender, birthDate: birthDate, userName: userName, password: password, contact: contact)
    }
    
    init(ownerDict: [String: Any]) throws{
    
        
        guard let companyTitle = ownerDict["companyTitle"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "companyTitle")
        }
        
        guard let url = ownerDict["url"] as? String else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "url")
        }
        
        // getVehicles
        guard let vehicles = ownerDict["vehicles"] as? [String] else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "vehicles")
        }
        vehicleManger = ObjectManager.getInstance()
        var vehicleObjectList = [String: Vehicle]()
        for vehicleId in vehicles{
            if let vehicle = vehicleManger.getVehicleById(id: vehicleId){
                vehicleObjectList.updateValue(vehicle, forKey: vehicleId)
            }
        }
        
        self.companyTitle = companyTitle
        self.url = url
        self.vehicleList = vehicleObjectList
        try super.init(personDict: ownerDict)
        
    }
    
    
    
    override func display()
    {
        var logger = Log()
        print("\nID          \t: \(id)", to: &logger)
        print("First Name     : \(firstName)", to: &logger)
        print("Last Name      : \(lastName)", to: &logger)
        print("Gender         : \(gender)", to: &logger)
        print("Date of Birth  : \((birthDate ?? Date()).printFormat())", to: &logger)
        print("Age            : \(age)", to: &logger)
        print("Username       : \(userName)", to: &logger)
        
    }
    
    func display(withVehicles: Bool){
        self.display()
        if withVehicles{
            print("Vehicles Owned :\n", to: &logger)
            for i in vehicleList
            {
              print("\t\t", to: &logger)
              print(i.value.display(), to: &logger)
            }
        }
    }

    func addVehicle(vehicleId: String, vehicle: Vehicle)
    {
      if vehicleList.keys.contains(vehicleId)
      {
        print("\nERROR! VEHICLE ALREADY IN LIST", to: &logger)
      }
      else 
      {
        vehicleList.updateValue(vehicle,forKey: vehicleId)
      }
    }
}
