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

if let motorCyclesArray = motercyleReader.read(){
    for motorCycleDict in motorCyclesArray{
        var mm = MotorCycle(motorCycleDict: motorCycleDict)
        mm.display()
        print("*****")
    }
}

