//
//  Hardware.swift
//  Shop
//
//  Created by Elias Breitenbach on 28.09.23.
//

import Foundation

protocol Hardware {
    var id: Int { get }
    var price: Int { get }
}

protocol Games {
    var serialNumber: Int { get }
    var brand: String { get }
}

struct Keyboard: Hardware, Games {
    var id: Int
    var brand: String
    var price: Int
    var color: String
    var serialNumber: Int
}

struct Mouse: Hardware, Games {
    var id: Int
    var brand: String
    var price: Int
    var Color: String
    var serialNumber: Int
}

struct CallOfDuty: Hardware, Games {
    var id:  Int
    var serialNumber: Int
    var brand: String
    var price: Int
}

struct Fifa23: Hardware, Games {
    var id:  Int
    var serialNumber: Int
    var brand: String
    var price: Int
}
