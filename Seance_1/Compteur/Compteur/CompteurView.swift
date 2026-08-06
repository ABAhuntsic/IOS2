//
//  CompteurView.swift
//  Compteur
//
//  Created by Arthur Bachelet on 2026-07-23.
//

import SwiftUI

struct CompteurView : View {
    @State private var compteur = 0
    func incrementer() {
        compteur += 1
    }
    func reset(){
        compteur = 0
    }
    private var couleur : Color {
        if compteur >= 10 {
            return .red
        }
        else {
            return .primary
        }
    }
    var body : some View {
        Button("J'ai cliqué \(compteur) fois ", action: incrementer)
            .foregroundStyle(couleur)
        Button("Reinitialiser", role: .destructive, action: reset)
            .buttonStyle(.borderedProminent)
    }
}

#Preview {
    CompteurView()
}
