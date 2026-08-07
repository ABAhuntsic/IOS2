//
//  AboutView.swift
//  Trophy
//
//  Created by Arthur Bachelet on 2026-08-03.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
            VStack(spacing: 16) {
                Image(systemName: "info.circle.fill")
                    .font(.system(size: 50))
                    .foregroundStyle(.blue)

                Text("À propos")
                    .font(.title)
                    .fontWeight(.bold)

                Text("Une app de démonstration pour la séance 2.")
                    .font(.body)
                    .foregroundStyle(.secondary)
            }
            .padding()
            .navigationTitle("À propos")
        }
}

#Preview {
    AboutView()
}
