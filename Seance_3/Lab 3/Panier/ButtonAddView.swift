//
//  ButtonAddView.swift
//  Panier
//
//  Created by Arthur Bachelet on 2026-08-12.
//

import SwiftUI

struct ButtonAddView: View {
    
    @Binding var value: Int
    
    var body: some View {
        Button("Ajouter au panier") {
            value += 1
        }
        .buttonStyle(.borderedProminent)
    }
}

