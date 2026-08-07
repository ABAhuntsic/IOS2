//
//  ContentView.swift
//  Trophy
//
//  Created by Arthur Bachelet on 2026-08-03.
//

import SwiftUI


enum Destination: Hashable {
    case collection
    case about
}


struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                ZStack(alignment: .topTrailing) {
                    Image(systemName: "trophy.fill")
                        .font(.system(size: 60))
                        .foregroundStyle(.yellow)

                    Text("3")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding(6)
                        .background(Circle().fill(.red))
                        .offset(x: 10, y: -10)
                }

                        Text("Trophées")
                            .font(.largeTitle)
                            .fontWeight(.bold)

                        HStack(spacing: 12) {
                            NavigationLink(value: Destination.collection) {
                                Label("Ma collection", systemImage: "star.fill")
                            }
                            .buttonStyle(.borderedProminent)

                            NavigationLink(value: Destination.about) {
                                Label("À propos", systemImage: "info.circle")
                            }
                            .buttonStyle(.bordered)
                        }
                    }
                    .padding()
                    .navigationDestination(for: Trophy.self) { trophy in
                        TrophyDetailView(trophy: trophy)
                    }
                    .navigationDestination(for: Destination.self){destination in
                        switch destination {
                        case .collection: CollectionView()
                        case .about: AboutView()
                        }
                    }
        }
    }
}

#Preview {
    ContentView()
}
