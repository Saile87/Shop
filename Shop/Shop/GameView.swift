//
//  ContentView.swift
//  Shop
//
//  Created by Elias Breitenbach on 28.09.23.
//

import SwiftUI

struct GameView: View {
    
    var game: any Game
    
    let games: [any Game] = [GameItem(fsk: 18, name: "Call Of Duty", id: 3, manufacturer: "Activison", price: 55),
                             GameItem(fsk: 0, name: "Fifa 24", id: 4, manufacturer: "EASports", price: 60)
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(games, id: \.id) { game in
                        NavigationLink(destination: ProductView(product: game)) {
                            Text("\(game.name)")
                            
                        }
                    }
                }
            }
            .navigationTitle("Games")
        }
    }
}



#Preview {
    GameView(game: GameItem(fsk: 0000, name: "0000", id: 0000, manufacturer: "0000", price: 0000))
}
