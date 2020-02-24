//
//  Gender .swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-20.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation
//Gender enum to specify genders for persons

public enum Gender
{
    case MALE,FEMALE,OTHER
    
    static func getGenderType(genderString: String) -> Gender{
        switch genderString.lowercased() {
        case "female":
            return Gender.FEMALE
        case "male":
            return Gender.MALE
        default:
            return Gender.OTHER
        }
    }
}
