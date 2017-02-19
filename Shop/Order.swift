//
//  Order.swift
//  Shop
//
//  Created by Митрошка on 19.02.17.
//  Copyright © 2017 dimmy.pro. All rights reserved.
//

import Foundation

class Order
{
    static let shared = Order()
    
    var products:[Product] = []
    
    public func add(product:Product)
    {
        products.append(product)
    }
}
