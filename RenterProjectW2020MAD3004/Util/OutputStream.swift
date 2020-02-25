//
//  OutputStream.swift
//  RenterProjectW2020MAD3004
//
//  Created by Prakash on 2020-02-24.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation
struct Log: TextOutputStream {
    func write(_ string: String) {
        let dFormatter = DateFormatter()
        dFormatter.dateFormat = "yyyy-MM-dd"
        let date = Date()
        let currentMonth = dFormatter.string(from: date)
        // FILE GOES TO DOCUMENTS FOLDER
        let fm = FileManager.default
        let log = fm.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent(String(currentMonth) + "Log.txt")
        if let handle = try? FileHandle(forWritingTo: log) {
            handle.seekToEndOfFile()
            handle.write(string.data(using: .utf8)!)
            handle.closeFile()
        } else {
            try? string.data(using: .utf8)?.write(to: log)
        }
    }
}
