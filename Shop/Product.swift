//
//  Product.swift
//  Shop
//
//  Created by Митрошка on 19.02.17.
//  Copyright © 2017 dimmy.pro. All rights reserved.
//

import Foundation

class Product
{
    var name:String = ""
    var cat:Int = 0
    var price:Int = 0
//    var id:Int = 0
    
    init(_ name:String, _ cat:Int, _ price:Int)
    {
        self.name = name;
        /*self.id = id;*/
        self.cat = cat;
        self.price = price
    }
}
