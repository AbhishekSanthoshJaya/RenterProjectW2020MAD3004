//
//  main.swift
//  RenterProjectW2020MAD3004
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

func readJSON(fileName: String)
{
    let filepPath = Bundle.main.url(forResource: fileName, withExtension: "json")
    
    guard let path = filepPath else {
        print("Invalid File path found")
        return
    }
    
    guard let data = try? Data(contentsOf: path) else {
        print("Error while read Data from URL")
        return
    }
    
    guard let json = try? JSONSerialization.jsonObject(with: data, options: []) else {
        print("Error while reading JSON Data from file")
        return
    }
    
    //print(json)
    
    if let userDictionary = json as? [String: Any]
    {
        //print(userDictionary)
        let id = userDictionary["id"] ?? "No ID Found"
        print(id)
        //Like wise fetch all other values except address and company as it's another dictionary
        if let addressDictionary = userDictionary["address"] as? [String: Any]
        {
            print(addressDictionary["city"]!)
            
        }
        
    }

