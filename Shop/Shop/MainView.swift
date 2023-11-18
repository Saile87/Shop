//
//  Category.swift
//  Shop
//
//  Created by Elias Breitenbach on 14.11.23.
//

import SwiftUI

struct MainView: View {
    
    //    var product: any Product
    var game: any Game
    var hardware: any Hardware
    var clothe: any Clothe
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    NavigationLink(destination: GameView(game: game)) {
                        Text("Games\(game.name)")
                    }
                    
                    NavigationLink(destination: HardwareView(hardware: hardware)) {
                        Text("Hardwares \(hardware.name)")
                    }
                    
                    NavigationLink(destination: ClotheView(clothe: clothe)) {
                        Text("Klamotten \(clothe.name)")
                    }
                }
                .navigationTitle("W&E Shop")
            }
        }
    }
}


#Preview {
    MainView(game: GameItem(fsk: 4, name: "", id: 9, manufacturer: "", price: 9), hardware: HardwareItem(name: "", id: 4, manufacturer: "", price: 4, serialNumber: 4, power: 4), clothe: ClotheItem(manufacturer: "", name: "", id: 0, price: 0, material: ""))
}
