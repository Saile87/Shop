//
//  Hardware.swift
//  Shop
//
//  Created by Elias Breitenbach on 28.09.23.
//

import Foundation

protocol Product: Identifiable {
    var name: String { get }
    var id: Int { get }
    var price: Int { get }
    var manufacturer: String { get }
}

protocol Hardware: Product {
    var power: Int { get }
    var bluetooth: String? { get }
}

protocol Game: Product {
    var fsk: Int { get }
}

struct HardwareItem: Hardware {
    var bluetooth: String?
    var name: String
    var id: Int
    var manufacturer: String
    var price: Int
    var serialNumber: Int
    var power: Int
}

struct GameItem: Game {
    var fsk: Int
    var name: String
    var id:  Int
    var manufacturer: String
    var price: Int
}

