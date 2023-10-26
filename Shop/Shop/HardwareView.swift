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
        Text("\(keyboard.brand)")
        Text("\(keyboard.id)")
        Text("\(keyboard.serialNumber)")
        Text("\(keyboard.price)€")
    }
}

struct MouseView: View {
    
    var mouse: Mouse
    
    var body: some View {
        
        Text("\(mouse.name)")
        Text("\(mouse.brand)")
        Text("\(mouse.id)")
        Text("\(mouse.serialNumber)")
        Text("\(mouse.price)€")
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

#Preview {
    CallOfDutyView(cod: CallOfDuty(name: "COD", id: 8989, serialNumber: 0000, brand: "Activision", price: 70))
}

#Preview {
    MouseView(mouse: Mouse(name: "Logitech", id: 4545, brand: "MK15", price: 40, serialNumber: 6767, power: 3))
}

#Preview {
    KeyboardView(keyboard: Keyboard(name: "Tastatur", id: 139349, brand: "RK68", price: 70, serialNumber: 390909, power: 12))
}

