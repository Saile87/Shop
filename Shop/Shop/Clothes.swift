//
//  Clothes.swift
//  Shop
//
//  Created by Elias Breitenbach on 28.09.23.
//

import Foundation

protocol Clothes {
    var size: String { get }
    var brand: String { get }
}

protocol Accessoires {
    var price: Int { get }
    var material: String { get }
}

struct Hoodie: Clothes, Accessoires {
    var material: String
    var size: String
    var brand: String
    var price: Int
}

struct Shirt: Clothes, Accessoires {
    var material: String
    var size: String
    var brand: String
    var price: Int
}

struct Belt: Clothes, Accessoires {
    var material: String
    var size: String
    var brand: String
    var price: Int
}
