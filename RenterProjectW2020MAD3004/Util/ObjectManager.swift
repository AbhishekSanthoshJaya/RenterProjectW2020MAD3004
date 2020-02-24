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
    
    static var vehicleObjects = [String: [Vehicle]]()
    static var personObjects = [String: [Person]]()
    static var rentObjects = [VehicleRent]()
    var objectType: String = "Vehicle"
    
    
    
    private static var obj = ObjectManager()
    static func getInstance() -> ObjectManager{
        return obj
    }
    
    func getVehicleById( id: String, typeName: String = "all") -> Vehicle? {
        if typeName == "all"{
            let vechObjs = ObjectManager.vehicleObjects[Car.typeSName] ?? []
            for vehicle in vechObjs{
                if vehicle.vehicleId == id && (vehicle.typeName == typeName || typeName == "all"){
                    return vehicle
                }
            }
            let vechObjs2 = ObjectManager.vehicleObjects[Bus.typeSName] ?? []
                       for vehicle in vechObjs2{
                           if vehicle.vehicleId == id && (vehicle.typeName == typeName || typeName == "all"){
                               return vehicle
                           }
            }
            
            let vechObjs3 = ObjectManager.vehicleObjects[MotorCycle.typeSName] ?? []
                       for vehicle in vechObjs3{
                           if vehicle.vehicleId == id && (vehicle.typeName == typeName || typeName == "all"){
                               return vehicle
                           }
                       }
        }
        else{
            let vechObjs = ObjectManager.vehicleObjects[typeName] ?? []
            for vehicle in vechObjs{
                if vehicle.vehicleId == id && (vehicle.typeName == typeName || typeName == "all"){
                    return vehicle
                }
            }
        }
        
        
        return nil
    }
    
    func getPersonById( id: String, typeName: String = Customer.typeSName) -> Person? {
        let personObjs = ObjectManager.personObjects[typeName] ?? []
        for person in personObjs{
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
    
    
    
    func addObject(vehicle: Vehicle, typeName: String = Car.typeSName){
        if ObjectManager.vehicleObjects[typeName] == nil {
            ObjectManager.vehicleObjects.updateValue([Vehicle](), forKey: typeName)
        }
        ObjectManager.vehicleObjects[typeName]?.append(vehicle)
    }
    
    func addObject(person: Person, typeName: String = Customer.typeSName){
        if ObjectManager.personObjects[typeName] == nil {
            ObjectManager.personObjects.updateValue([Person](), forKey: typeName)
        }
        ObjectManager.personObjects[typeName]?.append(person)
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
                displaySet(displayProtocalInstances: ObjectManager.vehicleObjects[Car.typeSName] ?? [])
                displaySet(displayProtocalInstances: ObjectManager.vehicleObjects[Bus.typeSName] ?? [])
                displaySet(displayProtocalInstances: ObjectManager.vehicleObjects[MotorCycle.typeSName] ?? [])
            
            case "person":
                displaySet(displayProtocalInstances: ObjectManager.personObjects[Customer.typeSName] ?? [])
                displaySet(displayProtocalInstances: ObjectManager.personObjects[Owner.typeSName] ?? [])
            
                displaySet(displayProtocalInstances: ObjectManager.personObjects[Driver.typeSName] ?? [])
            case "vehiclerent":
               displaySet(displayProtocalInstances: ObjectManager.rentObjects)
            default:
                displaySet(displayProtocalInstances: ObjectManager.vehicleObjects[Car.typeSName] ?? [])
                displaySet(displayProtocalInstances: ObjectManager.vehicleObjects[Bus.typeSName] ?? [])
                displaySet(displayProtocalInstances: ObjectManager.vehicleObjects[MotorCycle.typeSName] ?? [])
                displaySet(displayProtocalInstances: ObjectManager.personObjects[Customer.typeSName] ?? [])
                displaySet(displayProtocalInstances: ObjectManager.personObjects[Owner.typeSName] ?? [])
            
                displaySet(displayProtocalInstances: ObjectManager.personObjects[Driver.typeSName] ?? [])
                displaySet(displayProtocalInstances: ObjectManager.rentObjects)

            }
        
    }
    
    
    
}
