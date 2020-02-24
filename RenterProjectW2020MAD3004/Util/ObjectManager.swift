//
//  VehicleRepository.swift
//  RenterProjectW2020MAD3004
//
//  Created by Prakash on 2020-02-24.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

// Singleton struct to manage vehicles
struct ObjectManager{
    private init(){}
    
    private static var vehicleObjects = [Vehicle]()
    private static var personObjects = [Person]()
    private static var rentObjects = [VehicleRent]()
    var objectType: String = "Vehicle"
    
    
    
    private static var obj = ObjectManager()
    static func getInstance() -> ObjectManager{
        return obj
    }
    
    func getVehicleById( id: String, typeName: String = "all") -> Vehicle? {
        for vehicle in ObjectManager.vehicleObjects{
            if vehicle.vehicleId == id && (vehicle.typeName == typeName || typeName == "all"){
                return vehicle
            }
        }
        return nil
    }
    
    func getPersonById( id: String, typeName: String = Customer.typeSName) -> Person? {
        for person in ObjectManager.personObjects{
            if person.id == id && (person.typeName == typeName || typeName == "all"){
                return person
            }
        }
        return nil
    }
    
    func getRentById( id: String) -> VehicleRent? {
        for rent in ObjectManager.rentObjects{
            if rent.id == id {
                return rent
            }
        }
        return nil
    }
    
    
    
    func addObject(vehicle: Vehicle){
        ObjectManager.vehicleObjects.append(vehicle)
    }
    
    func addObject(person: Person){
        ObjectManager.personObjects.append(person)
    }
    
    func addObject(vehicleRent: VehicleRent){
        ObjectManager.rentObjects.append(vehicleRent)
    }
    
    func display(type: String = "all"){
        
        func displaySet(displayProtocalInstances: [ IDisplayDelegate]){
            if !displayProtocalInstances.isEmpty {
                for displayInstance in displayProtocalInstances{
                    displayInstance.display()
                }
            }
        }
        switch type.lowercased() {
            case "vehicle":
                displaySet(displayProtocalInstances: ObjectManager.vehicleObjects)
            case "person":
               displaySet(displayProtocalInstances: ObjectManager.personObjects)
            case "vehiclerent":
               displaySet(displayProtocalInstances: ObjectManager.rentObjects)
            default:
                displaySet(displayProtocalInstances: ObjectManager.vehicleObjects)
                displaySet(displayProtocalInstances: ObjectManager.personObjects)
                displaySet(displayProtocalInstances: ObjectManager.rentObjects)
            }
        
    }
    
}
