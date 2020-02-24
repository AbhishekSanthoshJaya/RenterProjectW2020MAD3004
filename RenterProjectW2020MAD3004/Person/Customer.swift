//
//  Customer .swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

class Customer : Person
{
    
    private lazy var vehicleRents = [String: Vehicle]()

    init(id: String, firstName: String, lastName: String, gender: Gender,birthDate: Date?,age:Int, userName: String, password: String, contact: Contact)
    {
        super.init(id: id, firstName: firstName, lastName: lastName, gender: gender, birthDate: birthDate, userName: userName, password: password, contact: contact)
    }
    
    init(customerDict: [String: Any]) throws {
        try super.init(personDict: customerDict)
    }
    
    
    override func display()
    {
        print("\nID            : \(id)")
        print("First Name     : \(firstName)")
        print("Last Name      : \(lastName)")
        print("Gender         : \(gender)")
        print("Date of Birth  : \(birthDate ?? Date())")
        print("Age            : \(age)")
        print("Username       : \(userName)")
        for i in vehicleRents
        {
          print("\t\t")
          print(i.value.display())
        }

    }
  
  func addVehicleRents(vehicleId: String, vehicle: Vehicle)
    {
      if vehicleRents.keys.contains(vehicleId)
      {
        print("\nERROR! VEHICLE ALREADY RENTED")
      }
      else 
      {
        vehicleRents.updateValue(vehicle,forKey: vehicleId)
      }
    }

}
