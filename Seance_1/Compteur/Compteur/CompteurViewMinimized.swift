//
//  CompteurViewMinimized.swift
//  Compteur
//
//  Created by Arthur Bachelet on 2026-07-23.
//

import SwiftUI

struct CompteurViewMinimized: View {
    @State private var compteur = 0
    var body : some View {
        Button("J’ai clique \( compteur ) fois" ) {
            compteur += 1
        }
        .foregroundStyle( compteur >= 10 ? .red : .primary)
        Button("Reinitialiser") {
            compteur = 0
        }
    }
}

#Preview {
    CompteurViewMinimized()
}
