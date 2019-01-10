//
//  Wege.swift
//  Window-Shoper
//
//  Created by Rajesh on 09/01/2019.
//  Copyright © 2019 Rajesh. All rights reserved.
//

import Foundation
class Wege{
    class func getHours(forWege wegeVal: Double, andPrice price: Double)-> Int{
        return Int(ceil(price / wegeVal))
    }
}
