//
//  main.swift
//  RenterProjectW2020MAD3004
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation
var logger = Log()


var personManager = ObjectManager.getInstance()

//-------------  ARRAY OF DRIVER OBJECTS -------------
var driverReader = CustomFileHandler(fileName:"DriverData")
var driverArray = driverReader.read()

var driverObjects = Array<Driver>()
if let driverArray = driverReader.read(){
    for driverDict in driverArray {
        do {
            let o = try Driver(driverDict: driverDict)
            personManager.addObject(person: o, typeName: Driver.typeSName)
            driverObjects.append(o)
        }
        catch JsonValidationError.isNotValidInput(let msgg){
            print("Could not create object. Error while reading from json: ", to: &logger)
            print(msgg)
        }
    }
}


var vehicleManger = ObjectManager.getInstance()
//-------------  ARRAY OF MOTORCYCLE OBJECTS -------------
var motorcyleReader = CustomFileHandler(fileName:"MotorCycleData")
var motorCyclesArray = motorcyleReader.read()

var mcObjects = Array<MotorCycle>()
if let motorCyclesArray = motorcyleReader.read(){
    for motorCycleDict in motorCyclesArray{

        do{
            let mc = try MotorCycle(motorCycleDict: motorCycleDict)
            vehicleManger.addObject(vehicle: mc, typeName: MotorCycle.typeSName)
            mcObjects.append(mc)
        }
        catch JsonValidationError.isNotValidInput(let msgg){
            print("Could not create object. Error while reading from json: ", to: &logger)
            print(msgg)
        }
    }
}
//mcObjects[0].display()


//-------------  ARRAY OF BUS OBJECTS -------------
var busReader = CustomFileHandler(fileName:"BusData")
var busArray = busReader.read()

var busObjects = Array<Bus>()
if let busArray = busReader.read(){
    for busDict in busArray {
        do {
            let b = try Bus(busDict: busDict)
            vehicleManger.addObject(vehicle: b, typeName: Bus.typeSName)
            busObjects.append(b)
        }
        catch JsonValidationError.isNotValidInput(let msgg){
            print("Could not create object. Error while reading from json: ", to: &logger)
            print(msgg)
        }
    }
}

//-------------  ARRAY OF CAR OBJECTS -------------
var carReader = CustomFileHandler(fileName:"CarData")
var carArray = carReader.read()

var carObjects = Array<Car>()
if let carArray = carReader.read(){
    for carDict in carArray {
        do {
            let c = try Car(carDict: carDict)
            vehicleManger.addObject(vehicle: c, typeName: Car.typeSName)
            carObjects.append(c)
        }
        catch JsonValidationError.isNotValidInput(let msgg){
            print("Could not create object. Error while reading from json: ", to: &logger)
            print(msgg)
        }
    }
}
// carObjects[0].display()

//-------------  ARRAY OF OWNER OBJECTS -------------
var ownerReader = CustomFileHandler(fileName:"OwnerData")
var ownerArray = ownerReader.read()

var ownerObjects = Array<Owner>()
if let ownerArray = ownerReader.read(){
    for ownerDict in ownerArray {
        do {
            let o = try Owner(ownerDict: ownerDict)
            personManager.addObject(person: o, typeName: Owner.typeSName)
            ownerObjects.append(o)
        }
        catch JsonValidationError.isNotValidInput(let msgg){
            print("Could not create object. Error while reading from json: ", to: &logger)
            print(msgg)
        }
    }
}



var vehicleRentManger = ObjectManager.getInstance()
//-------------  ARRAY OF VEHICLE RENT OBJECTS -------------
var vehicleRentObjects = Array<VehicleRent>()

// rent for car(SCBLF44J47C415338)
guard var vr1Vehicle = vehicleManger.getVehicleById(id: "SCBLF44J47C415338") else {
    print("no vehicle found", to: &logger)
    exit(1)
}
var vr1 = VehicleRent(id:"1",
                      rentStartDate: "2019-04-22".toDate(),
                      rentEndDate:"2019-04-24".toDate(),
                      vehicle: vr1Vehicle, kmDriven: 22)
vehicleRentManger.addObject(vehicleRent: vr1)
vehicleRentObjects.append(vr1)


// rent for bus(3VW517AT7FM076063)
guard var vr2Vehicle = vehicleManger.getVehicleById(id: "3VW517AT7FM076063") else {
    print("no vehicle found", to: &logger)
    exit(1)
}
var vr2 = VehicleRent(id:"2",
                      rentStartDate: "2019-09-22".toDate(),
                      rentEndDate:"2019-10-2".toDate(),
                      vehicle: vr2Vehicle, kmDriven: 34)
vehicleRentManger.addObject(vehicleRent: vr2)
vehicleRentObjects.append(vr2)



// rent for MotorCycle(1GKS1CE02ER511717)
guard var vr3Vehicle = vehicleManger.getVehicleById(id: "1GKS1CE02ER511717") else {
    print("no vehicle found", to: &logger)
    exit(1)
}
var vr3 = VehicleRent(id:"3",
                      rentStartDate: "2020-01-22".toDate(),
                      rentEndDate:"2020-1-22".toDate(),
                      vehicle: vr3Vehicle, kmDriven: 11)
vehicleRentManger.addObject(vehicleRent: vr3)
vehicleRentObjects.append(vr3)

// rent for MotorCycle(WAUVFAFH4DN164011)
guard var vr4Vehicle = vehicleManger.getVehicleById(id: "WAUVFAFH4DN164011") else {
    print("no vehicle found", to: &logger)
    exit(1)
}
var vr4 = VehicleRent(id:"4",
                      rentStartDate: "2020-02-22".toDate(),
                      rentEndDate:"2020-2-29".toDate(),
                      vehicle: vr4Vehicle, kmDriven: 55)
vehicleRentManger.addObject(vehicleRent: vr4)
vehicleRentObjects.append(vr4)


// rent for Bus(WAUKF98E67A648746)
guard var vr5Vehicle = vehicleManger.getVehicleById(id: "WAUKF98E67A648746") else {
    print("no vehicle found", to: &logger)
    exit(1)
}
var vr5 = VehicleRent(id:"5",
                      rentStartDate: "2020-02-19".toDate(),
                      rentEndDate:"2020-3-29".toDate(),
                      vehicle: vr5Vehicle, kmDriven: 45)
vehicleRentManger.addObject(vehicleRent: vr5)
vehicleRentObjects.append(vr5)


// rent for Bus(4T1BD1EB5DU398278)
guard var vr6Vehicle = vehicleManger.getVehicleById(id: "4T1BD1EB5DU398278") else {
    print("no vehicle found", to: &logger)
    exit(1)
}
var vr6 = VehicleRent(id:"6",
                      rentStartDate: "2020-01-19".toDate(),
                      rentEndDate:"2020-1-29".toDate(),
                      vehicle: vr6Vehicle,kmDriven: 90)
vehicleRentManger.addObject(vehicleRent: vr6)
vehicleRentObjects.append(vr6)

// rent for car(YV440MBK0F1011572)
guard var vr7Vehicle = vehicleManger.getVehicleById(id: "YV440MBK0F1011572") else {
    print("no vehicle found", to: &logger)
    exit(1)
}
var vr7 = VehicleRent(id:"7",
                      rentStartDate: "2019-01-19".toDate(),
                      rentEndDate:"2019-1-23".toDate(),
                      vehicle: vr7Vehicle, kmDriven: 3)
vehicleRentManger.addObject(vehicleRent: vr7)
vehicleRentObjects.append(vr7)


// rent for car(1D7RB1CT2BS745200)
guard var vr8Vehicle = vehicleManger.getVehicleById(id: "1D7RB1CT2BS745200") else {
    print("no vehicle found", to: &logger)
    exit(1)
}
var vr8 = VehicleRent(id:"8",
                      rentStartDate: "2020-01-19".toDate(),
                      rentEndDate:"2020-1-23".toDate(),
                      vehicle: vr8Vehicle,
                    kmDriven: 34)
vehicleRentManger.addObject(vehicleRent: vr8)
vehicleRentObjects.append(vr8)



//-------------  ARRAY OF CUSTOMER OBJECTS -------------
var customerReader = CustomFileHandler(fileName:"CustomerData")
var customerArray = customerReader.read()

var customerObjects = Array<Customer>()
if let customerArray = customerReader.read(){
    for customerDict in customerArray {
        do {
            let o = try Customer(customerDict: customerDict)
            personManager.addObject(person: o)
            customerObjects.append(o)
        }
        catch JsonValidationError.isNotValidInput(let msgg){
            print("Could not create object. Error while reading from json: ", to: &logger)
            print(msgg, to: &logger)
        }
        catch{
            let nsError = error as NSError
            print(nsError.localizedDescription, to: &logger)
        }
    }
    
}


//personManager.display()


// Queries


/*
 Show all vehicles
 */
print("Displaying All vehicles", to: &logger)
print("*****************************************************", to: &logger)
vehicleManger.display(type: Vehicle.typeSName)
print("*****************************************************\n\n", to: &logger)


/*
 Show all customers with their bookings
 */
print("Displaying All Customers with their bookings", to: &logger)
print("*****************************************************", to: &logger)
for customer in customerObjects{
    customer.display(withBookings: true)
}
print("*****************************************************\n\n", to: &logger)



/*
 Show all owners with their vehicles
 */
print("Displaying All Owners with their vehicles", to: &logger)
print("*****************************************************", to: &logger)
for owner in ownerObjects{
    owner.display(withVehicles: true)
}
print("*****************************************************\n\n", to: &logger)



/*
 current live bookings
 */
print("Displaying All live bookings", to: &logger)
print("*****************************************************", to: &logger)
for rent in vehicleRentObjects{
    if rent.isLive(){
        rent.display()
    }
}
print("*****************************************************\n\n", to: &logger)


/*
 Vehicles that are not rented yet
 */

// get live bookings
print("Displaying All not booked Vehicles", to: &logger)
print("*****************************************************", to: &logger)
var allBookedVehicles = Set<Vehicle>()
for rent in vehicleRentObjects{
    if rent.isLive(){
        allBookedVehicles.insert(rent.vehicle)
    }
}

var allVehicles = Set<Vehicle>()
for vehicle in carObjects{
    allVehicles.insert(vehicle)
}
for vehicle in busObjects{
    allVehicles.insert(vehicle)
}
for vehicle in mcObjects{
    allVehicles.insert(vehicle)
}

var notBookedVehicles = allVehicles.subtracting(allBookedVehicles)
for v in notBookedVehicles{
    v.display()
}
print("*****************************************************\n\n", to: &logger)
