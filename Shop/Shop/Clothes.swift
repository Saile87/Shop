//
//  Clothes.swift
//  Shop
//
//  Created by Elias Breitenbach on 28.09.23.
//

import Foundation



protocol Clothe: Product {
    var size: String { get }
    var brand: String { get }
}

protocol Accessory: Product {
    var price: Int { get }
    var material: String { get }
}

struct Hoodie: Clothe, Accessory {
    var name: String
    var id: Int
    var material: String
    var size: String
    var brand: String
    var price: Int
}

struct Shirt: Clothe, Accessory {
    var name: String
    var id: Int
    var material: String
    var size: String
    var brand: String
    var price: Int
}

struct Belt: Clothe, Accessory {
    var name: String
    var id: Int
    var material: String
    var size: String
    var brand: String
    var price: Int
}
