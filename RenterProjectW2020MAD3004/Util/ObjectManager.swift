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
    
    private static var vehicleObjects = [String :Vehicle]()
    private static var personObjects = [String :Person]()
    private static var rentObjects = [String :VehicleRent]()
    var objectType: String = "Vehicle"
    
    
    
    private static var obj = ObjectManager()
    static func getInstance() -> ObjectManager{
        return obj
    }
    
    static func getVehicleById( id: String) -> Vehicle? {
        for (_,vehicle) in vehicleObjects{
            if vehicle.vehicleId == id{
                return vehicle
            }
        }
        return nil
    }
    
    static func getPersonById( id: String) -> Person? {
        for (_,person) in personObjects{
            if person.id == id{
                return person
            }
        }
        return nil
    }
    
    static func getRentById( id: String) -> VehicleRent? {
        for (_,rent) in rentObjects{
            if rent.id == id{
                return rent
            }
        }
        return nil
    }
    
    
    
    func addObject(vehicle: Vehicle){
        ObjectManager.vehicleObjects.updateValue(vehicle , forKey: vehicle.vehicleId)
    }
    
    func addObject(person: Person){
        ObjectManager.personObjects.updateValue(person , forKey: person.id)
    }
    
    func addObject(vehicleRent: VehicleRent){
        ObjectManager.rentObjects.updateValue(vehicleRent , forKey: vehicleRent.id)
    }
    
    func display(type: String = "all"){
        
        func displaySet(displayProtocalInstances: [String: IDisplayDelegate]){
            for(_,displayInstance) in displayProtocalInstances{
                displayInstance.display()
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
