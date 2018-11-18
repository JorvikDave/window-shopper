//
//  wage.swift
//  window-shopper
//
//  Created by Dave Marshall on 18/11/2018.
//  Copyright © 2018 Jorvik Solutions Ltd. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
