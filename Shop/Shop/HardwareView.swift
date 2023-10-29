//
//  HardwareView.swift
//  Shop
//
//  Created by Elias Breitenbach on 22.10.23.
//

import SwiftUI


struct KeyboardView: View {
    
    var keyboard: Keyboard
    
    var body: some View {

        Text("\(keyboard.name)")
            .font(.title2)
            .bold()
        Spacer()
                List {
            Text("Typ: \(keyboard.brand)")
            Text("ID: \(keyboard.id)")
            Text("Serien Nr.: \(keyboard.serialNumber)")
            Text("Preis: \(keyboard.price)€")
            Text("Leistung: \(keyboard.power)")
        }
    }
}

struct MouseView: View {
    
    var mouse: Mouse
    
    var body: some View {
        
        Text("\(mouse.name)")
            .font(.title2)
                .bold()
            Spacer()
                  List {
                Text("Typ: \(mouse.brand)")
                Text("ID: \(mouse.id)")
                Text("Serien Nr.: \(mouse.serialNumber)")
                Text("Preis: \(mouse.price)€")
                Text("Leistung: \(mouse.power)")
            }
    }
}

struct CallOfDutyView: View {
    
    var cod: CallOfDuty
    
    var body: some View {
        
        
        
        Text("\(cod.name)")

        Text("\(cod.brand)")
        Text("\(cod.id)")
        Text("\(cod.serialNumber)")
        Text("\(cod.price)€")
    }
}

struct Fifa24View: View {
    
    var fifa: Fifa24
    
    var body: some View {
        
        Text("\(fifa.name)")
            .font(.title2)
            .bold()
        Spacer()
        List {
            Text("Typ: \(fifa.name)")
            Text("ID: \(fifa.id)")
            Text("Hersteller: \(fifa.brand)")
            Text("Serien Nr.: \(fifa.serialNumber)")
            Text("Preis: \(fifa.price)€")
        }
    }
}

#Preview {
    Fifa24View(fifa: Fifa24(name: "Fifa 24", id: 9988, serialNumber: 1122, brand: "EASports", price: 70))
}

#Preview {
    CallOfDutyView(cod: CallOfDuty(name: "COD", id: 8989, serialNumber: 0000, brand: "Activision", price: 70))
}

#Preview {
    MouseView(mouse: Mouse(name: "Logitech", id: 4545, brand: "MK15", price: 40, serialNumber: 6767, power: 3))
}

#Preview {
    KeyboardView(keyboard: Keyboard(name: "Tastatur", id: 139349, brand: "RK68", price: 70, serialNumber: 390909, power: 12))
}

