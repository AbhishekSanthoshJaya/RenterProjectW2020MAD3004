//
//  Customer .swift
//  RenterProjectW2020MAD3004
//
//  Created by Raghav Bobal on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

/* Customer class which inherts person*/
class Customer : Person
{
    
    private lazy var vehicleRents = [String: VehicleRent]()
    var totalBill: Double  {
        get{
            var total: Double = 0
            for (_,rent) in self.vehicleRents{
                total += Double(rent.totalBill)
                
            }
            return total
        }
        
    }

    init(id: String, firstName: String, lastName: String, gender: Gender,birthDate: Date?,age:Int, userName: String, password: String, contact: Contact)
    {
        super.init(id: id, firstName: firstName, lastName: lastName, gender: gender, birthDate: birthDate, userName: userName, password: password, contact: contact)
    }
    
    init(customerDict: [String: Any]) throws {
        
        // get rents
        guard let rents = customerDict["rentsId"] as? [String] else {
            throw JsonValidationError.isNotValidInput(
                className: String(describing:type(of: self)),
                memberName: "rentsId")
        }
        let rentsManger = ObjectManager.getInstance()
        var rentsObjectList = [String: VehicleRent]()
        for rentId in rents{
            if let rent = rentsManger.getRentById(id: rentId){
                rentsObjectList.updateValue(rent, forKey: rentId)
            }
        }
        
        try super.init(personDict: customerDict)
        self.vehicleRents = rentsObjectList
    }
    
    
    override func display()
    {
        var logger = Log()
        print("\nID            : \(id)", to: &logger)
        print("First Name     : \(firstName)", to: &logger)
        print("Last Name      : \(lastName)", to: &logger)
        print("Gender         : \(gender)", to: &logger)
        print("Date of Birth  : \(birthDate ?? Date())", to: &logger)
        print("Age            : \(age)", to: &logger)
        print("Username       : \(userName)", to: &logger)

    }
    
     func display(withBookings: Bool)
    {
        var logger = Log()
        print("\nID            : \(id)", to: &logger)
        print("First Name     : \(firstName)", to: &logger)
        print("Last Name      : \(lastName)", to: &logger)
        print("Gender         : \(gender)", to: &logger)
        print("Date of Birth  : \((birthDate ?? Date()).printFormat())", to: &logger)
        print("Age            : \(age)", to: &logger)
        print("Username       : \(userName)", to: &logger)
        
        
        if withBookings{
            for (_,rent) in vehicleRents{
                rent.display()
            }
            print("\t*********TOTAL: \(totalBill.priceFormat())*********", to: &logger)
        }

    }
    
  
  func addVehicleRents(vehicleRent: VehicleRent)
    {
        if vehicleRents.keys.contains(vehicleRent.id)
      {
        print("\nERROR! VEHICLE Rent ALREADY RENTED")
      }
      else 
      {
        vehicleRents.updateValue(vehicleRent,forKey: vehicleRent.id)
      }
    }

}
