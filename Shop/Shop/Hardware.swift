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
    
}

protocol Hardware: Product {
    var power: Int { get }
}

protocol Games: Product {
    var serialNumber: Int { get }
    var brand: String { get }
}

struct Keyboard: Hardware {
    var name: String
    var id: Int
    var brand: String
    var price: Int
    var serialNumber: Int
    var power: Int
}

struct Mouse: Hardware {
    var name: String
    var id: Int
    var brand: String
    var price: Int
    var serialNumber: Int
    var power: Int
}

struct CallOfDuty: Games {
    var name: String
    var id:  Int
    var serialNumber: Int
    var brand: String
    var price: Int
}

struct Fifa23: Games {
    var name: String
    var id:  Int
    var serialNumber: Int
    var brand: String
    var price: Int
}
