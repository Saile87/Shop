//
//  ClotheView.swift
//  Shop
//
//  Created by Elias Breitenbach on 17.11.23.
//

import SwiftUI

struct ClotheView: View {
    
    var clothe: any Clothe
    
    let clothes: [any Clothe] = [ClotheItem(manufacturer: "adidas", size: "M", name: "adidas-Hoodie", id: 12, price: 40,                            material: "Baumwolle"),
                                 ClotheItem(manufacturer: "adidas", size: "M", width: 32, length: 32, name: "adidas-Hose", id: 7878, price: 55, material: "Polyester")
    ]
    
    var body: some View {
            NavigationView {
                VStack {
                    List {
                        ForEach(clothes, id: \.id) { clothe in
                            NavigationLink(destination: ProductView(product: clothe)) {
                                Text("\(clothe.name)")
                                
                            }
                        }
                    }
                }
                .navigationTitle("Klamotten")
            }
        }
    }


#Preview {
    ClotheView(clothe: ClotheItem(manufacturer: "", name: "0", id: 0, price: 0, material: ""))
}
