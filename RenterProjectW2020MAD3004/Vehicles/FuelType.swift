//
//  FuelType.swift
//  RenterProjectW2020MAD3004
//
//  Created by MacStudent on 2020-02-18.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

public enum FuelType
{
    case PETROL,DIESEL,ELECTRIC
    
    static func getFuelType(fuelString: String) -> FuelType {
        switch fuelString.lowercased() {
            case "petrol":
                return FuelType.PETROL
            case "diesel":
                return FuelType.DIESEL
            default:
                return FuelType.ELECTRIC
        }
    }
}
