//
//  TrophyDetailView.swift
//  Trophy
//
//  Created by Arthur Bachelet on 2026-08-03.
//

import SwiftUI

struct TrophyDetailView: View {
    
    let trophy : Trophy
   
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: trophy.icone)
                .font(.system(size: 80))
                .foregroundStyle(.yellow)
            
            Text(trophy.titre)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Trophée débloqué !")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .padding()
        .navigationTitle("Détail")
    }
}

#Preview {
    TrophyDetailView(trophy: trophies[0])
}
