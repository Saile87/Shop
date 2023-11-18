//
//  ProductView.swift
//  Shop
//
//  Created by Elias Breitenbach on 09.11.23.
//

import SwiftUI

struct ProductView: View {
    
    var product: any Product
    
    var body: some View {
        
        NavigationView {
            VStack {
                List {
                    
                    Text("Name: \(product.name)")
                    Text("Preis: \(product.price)")
                    Text("Hersteller: \(product.manufacturer)")
                    Text("ID: \(product.id)")
                    
                    switch product {
                    case let hardware as HardwareItem:
                        Text("Power: \(hardware.power)")
                        Text("Seriennummer: \(hardware.serialNumber)")
                        HStack {
                            Text("Bluetooth:")
                            Spacer()
                            
                            if (hardware.bluetooth) != nil {
                                Text("✅")
                            } else {
                                Text("❌")
                            }
                        }
                        
                    case let games as GameItem:
                        Text("FSK: \(games.fsk)")
                        
                    case let clothe as ClotheItem:
                        
                        
                                
                                
                                if (clothe.size) != nil {
                                    Text("Größe: \(clothe.size ?? "nix")")
                                } else {
                                    Text("")
                                }
                                
                                if (clothe.length) != nil {
                                    Text("Länge: \(clothe.length ?? 0)")
                                } else {
                                    Text("")
                                }
                                
                                if (clothe.width) != nil {
                                    Text("Weite: \(clothe.width ?? 0)")
                                } else {
                                    Text("")
                                    
                                }
                            
                        
                    default:
                        EmptyView()
                        
                    }
                }
                .customStyle()
            }
            .navigationTitle("\(product.name)")
        }
    }
}

#Preview {
    ProductView(product: HardwareItem(name: "Hardware", id: 1, manufacturer: "", price: 1, serialNumber: 1, power: 1))
}

#Preview {
    ProductView(product: GameItem(fsk: 1, name: "Games", id: 1, manufacturer: "Test", price: 1))
}

#Preview {
    ProductView(product: ClotheItem(manufacturer: "", size: "M", width: 1, length: 1, name: "Clothes", id: 1, price: 1, material: ""))
}
