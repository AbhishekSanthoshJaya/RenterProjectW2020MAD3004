//
//  main.swift
//  RenterProjectW2020MAD3004
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

var motercyleReader = JsonHandler(fileName:"MotorCycleData")
var motorCyclesArray = motercyleReader.read()

var busReader = JsonHandler(fileName:"BusData")
var busArray = busReader.read()

var CarObjects = Array<Car>()
//if let motorCyclesArray = motercyleReader.read(){
//    for motorCycleDict in motorCyclesArray{
//
//        do{
//            let mm = try MotorCycle(motorCycleDict: motorCycleDict)
//            mm.display()
//            print("*****")
//        }
//        catch JsonValidationError.isNotValidInput(let msgg){
//            print("Could not create object. Error while reading from json: ")
//            print(msgg)
//        }
//    }
//}
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
busObjects[0].display()

//var carReader = JsonHandler(fileName:"CarData")
//var carArray = carReader.read()
//
//if let carArray = carReader.read(){
//    for carDict in carArray {
//        do {
//            let c = try Car(carDict: carDict)
//            c.display()
//        }
//        catch JsonValidationError.isNotValidInput(let msgg){
//            print("Could not create object. Error while reading from json: ")
//            print(msgg)
//        }
//    }
//}
