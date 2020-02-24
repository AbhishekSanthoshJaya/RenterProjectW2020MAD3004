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

let writeString = "Write this text to the fileURL as text in iOS using Swift"
do {
    // Write to the file
    try writeString.write(to: fileURL, atomically: true, encoding: String.Encoding.utf8)
} catch let error as NSError {
    print("Failed writing to URL: \(fileURL), Error: " + error.localizedDescription)
}
//OUTPUT TO TXT END

var personManager = ObjectManager.getInstance()

//-------------  ARRAY OF DRIVER OBJECTS -------------
var driverReader = JsonHandler(fileName:"DriverData")
var driverArray = driverReader.read()

var driverObjects = Array<Driver>()
if let driverArray = driverReader.read(){
    for driverDict in driverArray {
        do {
            let o = try Driver(driverDict: driverDict)
            personManager.addObject(person: o)
        }
        catch JsonValidationError.isNotValidInput(let msgg){
            print("Could not create object. Error while reading from json: ")
            print(msgg)
        }
    }
}


var vehicleManger = ObjectManager.getInstance()
//-------------  ARRAY OF MOTORCYCLE OBJECTS -------------
var motorcyleReader = JsonHandler(fileName:"MotorCycleData")
var motorCyclesArray = motorcyleReader.read()

var mcObjects = Array<MotorCycle>()
if let motorCyclesArray = motorcyleReader.read(){
    for motorCycleDict in motorCyclesArray{

        do{
            let mc = try MotorCycle(motorCycleDict: motorCycleDict)
            vehicleManger.addObject(vehicle: mc)
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
            vehicleManger.addObject(vehicle: b)
        }
        catch JsonValidationError.isNotValidInput(let msgg){
            print("Could not create object. Error while reading from json: ")
            print(msgg)
        }
    }
}

//-------------  ARRAY OF CAR OBJECTS -------------
var carReader = JsonHandler(fileName:"CarData")
var carArray = carReader.read()

var carObjects = Array<Car>()
if let carArray = carReader.read(){
    for carDict in carArray {
        do {
            let c = try Car(carDict: carDict)
            vehicleManger.addObject(vehicle: c)
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
            personManager.addObject(person: o)
        }
        catch JsonValidationError.isNotValidInput(let msgg){
            print("Could not create object. Error while reading from json: ")
            print(msgg)
        }
    }
}











var vehicleRentManger = ObjectManager.getInstance()
//-------------  ARRAY OF VEHICLE RENT OBJECTS -------------
var vehicleRentObjects = Array<VehicleRent>()

// rent for car(SCBLF44J47C415338)
guard var vr1Vehicle = vehicleManger.getVehicleById(id: "SCBLF44J47C415338") else {
    print("no vehicle found")
    exit(1)
}
var vr1 = VehicleRent(id:"1",
                      rentStartDate: "2019-04-22".toDate(),
                      rentEndDate:"2019-04-24".toDate(),
                      vehicle: vr1Vehicle)
vehicleRentManger.addObject(vehicleRent: vr1)


// rent for bus(3VW517AT7FM076063)
guard var vr2Vehicle = vehicleManger.getVehicleById(id: "3VW517AT7FM076063") else {
    print("no vehicle found")
    exit(1)
}
var vr2 = VehicleRent(id:"2",
                      rentStartDate: "2019-09-22".toDate(),
                      rentEndDate:"2019-10-2".toDate(),
                      vehicle: vr2Vehicle)
vehicleRentManger.addObject(vehicleRent: vr2)



// rent for MotorCycle(1GKS1CE02ER511717)
guard var vr3Vehicle = vehicleManger.getVehicleById(id: "1GKS1CE02ER511717") else {
    print("no vehicle found")
    exit(1)
}
var vr3 = VehicleRent(id:"3",
                      rentStartDate: "2020-01-22".toDate(),
                      rentEndDate:"2020-1-22".toDate(),
                      vehicle: vr3Vehicle)
vehicleRentManger.addObject(vehicleRent: vr3)


// rent for MotorCycle(WAUVFAFH4DN164011)
guard var vr4Vehicle = vehicleManger.getVehicleById(id: "WAUVFAFH4DN164011") else {
    print("no vehicle found")
    exit(1)
}
var vr4 = VehicleRent(id:"4",
                      rentStartDate: "2020-02-22".toDate(),
                      rentEndDate:"2020-2-29".toDate(),
                      vehicle: vr4Vehicle)
vehicleRentManger.addObject(vehicleRent: vr4)


// rent for Bus(WAUKF98E67A648746)
guard var vr5Vehicle = vehicleManger.getVehicleById(id: "WAUKF98E67A648746") else {
    print("no vehicle found")
    exit(1)
}
var vr5 = VehicleRent(id:"5",
                      rentStartDate: "2020-02-19".toDate(),
                      rentEndDate:"2020-3-29".toDate(),
                      vehicle: vr5Vehicle)
vehicleRentManger.addObject(vehicleRent: vr5)


// rent for Bus(4T1BD1EB5DU398278)
guard var vr6Vehicle = vehicleManger.getVehicleById(id: "4T1BD1EB5DU398278") else {
    print("no vehicle found")
    exit(1)
}
var vr6 = VehicleRent(id:"6",
                      rentStartDate: "2020-01-19".toDate(),
                      rentEndDate:"2020-1-29".toDate(),
                      vehicle: vr6Vehicle)
vehicleRentManger.addObject(vehicleRent: vr6)

// rent for car(YV440MBK0F1011572)
guard var vr7Vehicle = vehicleManger.getVehicleById(id: "YV440MBK0F1011572") else {
    print("no vehicle found")
    exit(1)
}
var vr7 = VehicleRent(id:"7",
                      rentStartDate: "2019-01-19".toDate(),
                      rentEndDate:"2019-1-23".toDate(),
                      vehicle: vr7Vehicle)
vehicleRentManger.addObject(vehicleRent: vr7)


// rent for car(1D7RB1CT2BS745200)
guard var vr8Vehicle = vehicleManger.getVehicleById(id: "1D7RB1CT2BS745200") else {
    print("no vehicle found")
    exit(1)
}
var vr8 = VehicleRent(id:"8",
                      rentStartDate: "2020-01-19".toDate(),
                      rentEndDate:"2020-1-23".toDate(),
                      vehicle: vr8Vehicle)
vehicleRentManger.addObject(vehicleRent: vr8)



//-------------  ARRAY OF CUSTOMER OBJECTS -------------
var customerReader = JsonHandler(fileName:"CustomerData")
var customerArray = customerReader.read()

var customerObjects = Array<Customer>()
if let customerArray = customerReader.read(){
    for customerDict in customerArray {
        do {
            let o = try Customer(customerDict: customerDict)
            personManager.addObject(person: o)
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
    
}


personManager.display()
