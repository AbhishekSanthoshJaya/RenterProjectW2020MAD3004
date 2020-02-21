//
//  main.swift
//  RenterProjectW2020MAD3004
//
//  Created by MacStudent on 2020-02-12.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

func readJSON(fileName: String) -> [[String: Any]]?
{
    let filepPath = Bundle.main.url(forResource: fileName, withExtension: "json")
    
        guard let path = filepPath else {
        print("Invalid File path found")
        return nil
    }
    
        guard let data = try? Data(contentsOf: path) else {
        print("Error while read Data from URL")
        return nil
    }
    
        guard let json = try? JSONSerialization.jsonObject(with: data, options: []) else {
        print("Error while reading JSON Data from file")
        return nil
    }
    
    if let objectDictionary = json as? [[String: Any]]
        {
            return objectDictionary
        }
    else
        {
            print("Could not form dictionary")
            return nil
        }
}

var c = readJSON(fileName:"CustomerData")
print(c)
