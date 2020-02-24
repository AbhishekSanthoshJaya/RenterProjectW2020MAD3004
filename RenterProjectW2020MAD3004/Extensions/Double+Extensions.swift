//
//  Double.swift
//  RenterProjectW2020MAD3004
//
//  Created by Prakash on 2020-02-24.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation


extension Double{
func priceFormat(locale: Locale =  Locale.current) -> String{
    let formatter = NumberFormatter()
    formatter.locale = locale
    formatter.numberStyle = .currency
    if let formattedPrice = formatter.string(from: self as NSNumber) {
        return formattedPrice
    }
    return ""
}
}
