//
//  Shop.swift
//  Shop
//
//  Created by Митрошка on 19.02.17.
//  Copyright © 2017 dimmy.pro. All rights reserved.
//

import Foundation

class Shop
{
    static let shared = Shop()
    
    var categories:[Category]
    
    var products:[Product]
    
    private init()
    {
        categories = [
            Category("Горячее", 1),
            Category("Напитки", 2)
        ]
        
        products = [
            Product("Борщ", 1, 250),
            Product("Солянка", 1, 300),
            Product("Чай", 2, 50),
            Product("Кофе", 2, 80)
        ]
    }
}
