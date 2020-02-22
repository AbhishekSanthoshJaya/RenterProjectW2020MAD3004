//
//  main.swift
//  RenterProjectW2020MAD3004
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

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

//-------------  ARRAY OF BUS OBJECTS -------------
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
//carObjects[0].display()

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
