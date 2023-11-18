//
//  HardwareView.swift
//  Shop
//
//  Created by Elias Breitenbach on 17.11.23.
//

import SwiftUI

struct HardwareView: View {
    
    var hardware: any Hardware
    
    let hardwares: [any Hardware] = [HardwareItem(name: "Logitech Keyboard", id: 15, manufacturer: "Logitech", price: 50, serialNumber: 321, power: 10),
                                     HardwareItem(bluetooth: "Aviable", name: "RK68 Keyboard", id: 6, manufacturer: "Royal Kludge", price: 50, serialNumber: 123, power: 10),
                                     HardwareItem(bluetooth: "Aviable", name: "Logitech Funk Maus", id: 2, manufacturer: "Logitech", price: 44, serialNumber: 5432, power: 10),
                                     HardwareItem(name: "Logitech Kabel Maus", id: 5, manufacturer: "Apple", price: 66, serialNumber: 12344, power: 2),
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(hardwares, id: \.id) { hardware in
                        NavigationLink(destination: ProductView(product: hardware)) {
                            Text("\(hardware.name)")
                            
                        }
                    }
                }
            }
            .navigationTitle("Hardware")
        }
    }
}

#Preview {
    HardwareView(hardware: HardwareItem(name: "", id: 1, manufacturer: "", price: 1, serialNumber: 1, power: 1))
}
