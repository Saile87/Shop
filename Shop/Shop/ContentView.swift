//
//  ContentView.swift
//  Shop
//
//  Created by Elias Breitenbach on 28.09.23.
//

import SwiftUI

struct ContentView: View {
    
    let products: [any Product] = [Keyboard(name: "RK68", id: 1, brand: "RK68", price: 50, serialNumber: 99, power: 10),
                                   Mouse(name: "MK10", id: 2, brand: "Logitech", price: 44, serialNumber: 98, power: 5),
                                   CallOfDuty(name: "Activison", id: 3, serialNumber: 97, brand: "Activison", price: 55),
                                   Fifa23(name: "EASports", id: 4, serialNumber: 96, brand: "EASports", price: 60)
    ]
    
//    func showProducts(_ product: any Product) {
//        print(product.id)
//    }
    
    func showProducts<T: Product>(_ product: T) {
        print(product.id)
    }
    
    var body: some View {
        VStack {
            List {
                ForEach(products, id: \.id) { product in
                    Text("name: \(product.name)")
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
