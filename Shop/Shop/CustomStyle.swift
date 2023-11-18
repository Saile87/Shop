//
//  CostomStyle.swift
//  Shop
//
//  Created by Elias Breitenbach on 29.10.23.
//

import SwiftUI

struct CustomStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .bold()
            .foregroundColor(.black)
    }
}

extension View {
    func customStyle() -> some View {
        self.modifier(CustomStyle())
    }
}
