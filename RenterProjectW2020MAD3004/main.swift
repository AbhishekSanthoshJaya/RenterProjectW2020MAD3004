//
//  main.swift
//  RenterProjectW2020MAD3004
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation


var motorCyleReader = JsonHandler(fileName:"MotorCycleData")

if let motorCyclesArray = motorCyleReader.read(){
    for motorCycleDict in motorCyclesArray{
        
        do{
            var mm = try MotorCycle(motorCycleDict: motorCycleDict)
            mm.display()
            print("*****")
        }
        catch JsonValidationError.isNotValidInput(let msgg){
            print(" Couldnot create object. Error while reading from json: ")
            print(msgg)
        }
        
    }
}

var customerReader = JsonHandler(fileName:"CustomerData")

if let customerArray = customerReader.read(){
    for customerDict in customerArray{
        
        do{
            var cc = try Customer(customerDict: customerDict)
            cc.display()
            print("*****")
        }
        catch JsonValidationError.isNotValidInput(let msgg){
            print(" Couldnot create object. Error while reading from json: ")
            print(msgg)
        }
        
    }
}


