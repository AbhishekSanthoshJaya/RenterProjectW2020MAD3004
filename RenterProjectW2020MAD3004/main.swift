//
//  main.swift
//  RenterProjectW2020MAD3004
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

//OUTPUT TO TXT START
let fileName = "ouput"
let DocumentDirURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)

let fileURL = DocumentDirURL.appendingPathComponent(fileName).appendingPathExtension("txt")
print("FilePath: \(fileURL.path)")

let writeString = "Write this text to the fileURL as text in iOS using Swift"
do {
    // Write to the file
    try writeString.write(to: fileURL, atomically: true, encoding: String.Encoding.utf8)
} catch let error as NSError {
    print("Failed writing to URL: \(fileURL), Error: " + error.localizedDescription)
}
//OUTPUT TO TXT END

//-------------  ARRAY OF MOTORCYCLE OBJECTS -------------
var motorcyleReader = JsonHandler(fileName:"MotorCycleData")
var motorCyclesArray = motorcyleReader.read()

var mcObjects = Array<MotorCycle>()
if let motorCyclesArray = motorcyleReader.read(){
    for motorCycleDict in motorCyclesArray{

        do{
            let mc = try MotorCycle(motorCycleDict: motorCycleDict)
            mcObjects.append(mc)
        }
        catch JsonValidationError.isNotValidInput(let msgg){
            print("Could not create object. Error while reading from json: ")
            print(msgg)
        }
    }
}
//mcObjects[0].display()

//-------------  ARRAY OF BUS OBJECTS -------------
var busReader = JsonHandler(fileName:"BusData")
var busArray = busReader.read()

var busObjects = Array<Bus>()
if let busArray = busReader.read(){
    for busDict in busArray {
        do {
            let b = try Bus(busDict: busDict)
            busObjects.append(b)
        }
        catch JsonValidationError.isNotValidInput(let msgg){
            print("Could not create object. Error while reading from json: ")
            print(msgg)
        }
    }
}
//busObjects[0].display()

//-------------  ARRAY OF CAR OBJECTS -------------
var carReader = JsonHandler(fileName:"CarData")
var carArray = carReader.read()

var carObjects = Array<Car>()
if let carArray = carReader.read(){
    for carDict in carArray {
        do {
            let c = try Car(carDict: carDict)
            carObjects.append(c)
        }
        catch JsonValidationError.isNotValidInput(let msgg){
            print("Could not create object. Error while reading from json: ")
            print(msgg)
        }
    }
}
// carObjects[0].display()

//-------------  ARRAY OF OWNER OBJECTS -------------
var ownerReader = JsonHandler(fileName:"OwnerData")
var ownerArray = ownerReader.read()

var ownerObjects = Array<Owner>()
if let ownerArray = ownerReader.read(){
    for ownerDict in ownerArray {
        do {
            let o = try Owner(ownerDict: ownerDict)
            ownerObjects.append(o)
        }
        catch JsonValidationError.isNotValidInput(let msgg){
            print("Could not create object. Error while reading from json: ")
            print(msgg)
        }
    }
}


//-------------  ARRAY OF DRIVER OBJECTS -------------
var driverReader = JsonHandler(fileName:"DriverData")
var driverArray = driverReader.read()

var driverObjects = Array<Driver>()
if let driverArray = driverReader.read(){
    for driverDict in driverArray {
        do {
            let o = try Driver(driverDict: driverDict)
            driverObjects.append(o)
        }
        catch JsonValidationError.isNotValidInput(let msgg){
            print("Could not create object. Error while reading from json: ")
            print(msgg)
        }
    }
}


//-------------  ARRAY OF CUSTOMER OBJECTS -------------
var customerReader = JsonHandler(fileName:"CustomerData")
var customerArray = customerReader.read()

var customerObjects = Array<Customer>()
if let customerArray = customerReader.read(){
    for customerDict in customerArray {
        do {
            let o = try Customer(customerDict: customerDict)
            customerObjects.append(o)
        }
        catch JsonValidationError.isNotValidInput(let msgg){
            print("Could not create object. Error while reading from json: ")
            print(msgg)
        }
        catch{
            let nsError = error as NSError
            print(nsError.localizedDescription)
        }
    }
    
driverObjects[1].display()
}



func getVehicleById(id: String) -> Vehicle? {
    func searchObject(objArr: [Vehicle], id: String) -> Vehicle? {
        for vehicle in objArr{
            if vehicle.vehicleId == id{
                return vehicle
            }
        }
        return nil
    }
    
    if let carFound = searchObject(objArr: carObjects, id: id){
        return carFound
    }
    if let busFound = searchObject(objArr: busObjects, id: id){
        return busFound
    }
    if let mcFound = searchObject(objArr: mcObjects, id: id){
        return mcFound
    }
    print("Couldnt find vehicle with id : \(id)")
    return nil
}


//-------------  ARRAY OF VEHICLE OBJECTS -------------
var vehicleRentObjects = Array<VehicleRent>()

// rent for car(SCBLF44J47C415338)
guard var vr1Vehicle = getVehicleById(id: "SCBLF44J47C415338") else {
    print("no vehicle found")
    exit(1)
}
var vr1 = VehicleRent(rentStartDate: "2019-04-22".toDate(),
                      rentEndDate:"2019-04-24".toDate(),
                      vehicle: vr1Vehicle)
vehicleRentObjects.append(vr1)


// rent for bus(3VW517AT7FM076063)
guard var vr2Vehicle = getVehicleById(id: "3VW517AT7FM076063") else {
    print("no vehicle found")
    exit(1)
}
var vr2 = VehicleRent(rentStartDate: "2019-09-22".toDate(),
                      rentEndDate:"2019-10-2".toDate(),
                      vehicle: vr2Vehicle)
vehicleRentObjects.append(vr2)



// rent for MotorCycle(1GKS1CE02ER511717)
guard var vr3Vehicle = getVehicleById(id: "1GKS1CE02ER511717") else {
    print("no vehicle found")
    exit(1)
}
var vr3 = VehicleRent(rentStartDate: "2020-01-22".toDate(),
                      rentEndDate:"2020-1-22".toDate(),
                      vehicle: vr3Vehicle)
vehicleRentObjects.append(vr3)


// rent for MotorCycle(WAUVFAFH4DN164011)
guard var vr4Vehicle = getVehicleById(id: "WAUVFAFH4DN164011") else {
    print("no vehicle found")
    exit(1)
}
var vr4 = VehicleRent(rentStartDate: "2020-02-22".toDate(),
                      rentEndDate:"2020-2-29".toDate(),
                      vehicle: vr4Vehicle)
vehicleRentObjects.append(vr4)


print(vehicleRentObjects)
