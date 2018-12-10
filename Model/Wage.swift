//
//  Wage.swift
//  Window-Shopper
//
//  Created by MacBook Pro on 12/2/18.
//  Copyright © 2018 Diaa SAlAm. All rights reserved.
//

import Foundation

class Wage{
    class func getHoure(forWage wage: Double, andPrice price:Double) -> Int {
        return Int(ceil(price/wage))
    }
}
