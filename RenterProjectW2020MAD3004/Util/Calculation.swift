//
//  Calculation.swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-22.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation
func ageCalculation(birthDate: String) -> Int
{
    let formattedDate = DateFormatter()
    formattedDate.dateFormat = "dd/MMM/yyyy"
    let dateOfBirth = formattedDate.date(from: birthDate)
    let calendar: NSCalendar! = NSCalendar(calendarIdentifier: .gregorian)
    let now = Date()
    let calcAge = calendar.components(.year, from: dateOfBirth!, to: now, options: [])
    let age = calcAge.year
    return age!
}
