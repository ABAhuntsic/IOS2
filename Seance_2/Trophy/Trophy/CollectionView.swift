//
//  CollectionView.swift
//  Trophy
//
//  Created by Arthur Bachelet on 2026-08-03.
//

import SwiftUI

struct CollectionView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                ForEach(trophies) { trophee in
                    NavigationLink(value: trophee) {
                        HStack {
                            Image(systemName: trophee.icone)
                                .foregroundStyle(.yellow)
                            Text(trophee.titre)
                            Spacer()
                        }
                        .padding()
                        .background(.gray.opacity(0.1))
                        .cornerRadius(12)
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Ma collection")
    }
}

#Preview {
    CollectionView()
}
