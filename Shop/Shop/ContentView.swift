//
//  ContentView.swift
//  Shop
//
//  Created by Elias Breitenbach on 28.09.23.
//

import SwiftUI

struct ContentView: View {
    
    let hardwares: [Hardware] = [Keyboard(id: 1, brand: "RK68", price: 50, color: "White", serialNumber: 99),
                                 Mouse(id: 2, brand: "Logitech", price: 44, Color: "Black", serialNumber: 98),
                                 CallOfDuty(id: 3, serialNumber: 97, brand: "Activison", price: 55),
                                 Fifa23(id: 4, serialNumber: 96, brand: "EASports", price: 60)
    ]
    
    var body: some View {
        VStack {
            List {
                TextField("Bro", text: $hardwares)
            }
        }
    }
}






#Preview {
    ContentView()
}
