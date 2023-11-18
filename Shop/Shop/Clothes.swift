//
//  Clothes.swift
//  Shop
//
//  Created by Elias Breitenbach on 28.09.23.
//

import Foundation



protocol Clothe: Product {
    var size: String? { get }
    var material: String { get }
    var width: Int? { get }
    var length: Int? { get }

}

struct ClotheItem: Clothe {
    var manufacturer: String
    var size: String?
    var width: Int?
    var length: Int?
    var name: String
    var id: Int
    var price: Int
    var material: String
}

