//
//  ShopApp.swift
//  Shop
//
//  Created by Elias Breitenbach on 28.09.23.
//

import SwiftUI

@main
struct ShopApp: App {
    var body: some Scene {
        WindowGroup {
            MainView(game: GameItem(fsk: 0, name: "", id: 0, manufacturer: "", price: 0), hardware: HardwareItem(name: "", id: 1, manufacturer: "", price: 1, serialNumber: 1, power: 1), clothe: ClotheItem(manufacturer: "", name: "", id: 00, price: 00, material: ""))
        }
    }
}
