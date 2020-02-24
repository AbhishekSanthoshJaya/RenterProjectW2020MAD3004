//
//  Reader.swift
//  RenterProjectW2020MAD3004
//
//  Created by Prakash on 2020-02-21.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation


struct CustomFileHandler {
    var fileName: String
    var filePath: URL
     
    init(fileName: String, filePath: URL = URL(fileURLWithPath: ".")) {
        self.fileName = fileName
        self.filePath = filePath
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            self.filePath = dir.appendingPathComponent(fileName)
        }
    }
    
    func read() -> [[String: Any]]? {
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
    
    
    mutating  func write(text: String){
        
        do{
            try text.write(to: self.filePath, atomically: false, encoding: .utf8)
        }
        catch {
            print("Error occured while writing to file")
            let nsError = error as NSError
            print(nsError.localizedDescription)
        }
    }
    
}

