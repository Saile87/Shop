//
//  ContentView.swift
//  Shop
//
//  Created by Elias Breitenbach on 28.09.23.
//

import SwiftUI

struct ContentView: View {
    
    
//    let products: [any Product] = [Keyboard(name: "Tastatur", id: 1, brand: "RK68", price: 50, serialNumber: 99, power: 10),
//                                   Mouse(name: "Maus", id: 2, brand: "Logitech", price: 44, serialNumber: 98, power: 5),
//                                   CallOfDuty(name: "Call Of Duty", id: 3, serialNumber: 97, brand: "Activison", price: 55),
//                                   Fifa24(name: "Fifa 24", id: 4, serialNumber: 96, brand: "EASports", price: 60)
//    ]
    
    //    func showProducts(_ product: any Product) {
    //        print(product.id)
    //    }
    
//    func showProducts<T: Product>(_ product: T) {
//        print(product.id)
//    }
//    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Wilkommen im W&E Shop")
                    .font(.title2)
                List {

//                ForEach(products, id: \.id) { product in
//                    Text("\(product.name)")
//                }
                
                    NavigationLink(destination: KeyboardView(keyboard: Keyboard(name: "Tastatur", id: 1, brand: "RK68", price: 3, serialNumber: 4, power: 5))) {
                    Text("Tastatur")
                    }
                    
                    NavigationLink(destination: MouseView(mouse: Mouse(name: "Logitech", id: 5757, brand: "MK15", price: 40, serialNumber: 6767, power: 3))) {
                        Text("Maus")
                    }
                    NavigationLink(destination: CallOfDutyView(cod: CallOfDuty(name: "COD", id: 8989, serialNumber: 0000, brand: "Activision", price: 70))) {
                        Text("Call of Duty")
                    }
                    
                    NavigationLink(destination: Fifa24View(fifa: Fifa24(name: "Fifa 24", id: 8899, serialNumber: 1122, brand: "EASports", price: 70))) {
                        Text("Fifa 24")
                    }
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
