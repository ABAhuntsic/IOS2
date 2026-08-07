//
//  ContentView.swift
//  Library
//
//  Created by Arthur Bachelet on 2026-08-07.
//

import SwiftUI

enum Destination: Hashable {
    case search
    case list
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack ( spacing : 20) {
                Image ( systemName : " book.fill " )
                    .font(.system( size : 60) )
                    .foregroundStyle(.blue)
                Text("Ma Bibliotheque")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                HStack(spacing : 12) {
                    NavigationLink(value : Destination.search ) {
                    Label( "Rechercher", systemImage : "magnifyingglass" )
                }
                    .buttonStyle(.borderedProminent )
                NavigationLink(value:Destination.list ) {
                    Label("Ma liste" , systemImage : "books.vertical.fill")
                }
                    . buttonStyle (. bordered )
                }
            }
            . padding ()
            .navigationDestination(for: Destination.self) { destination in
                switch destination {
                case .search: Text("Recherche (a venir)")
                case .list: ListView()
                }
            }
            .navigationDestination(for: Book.self) { book in
                DetailView(book: book)
            }
        }
    }
}

#Preview {
    ContentView()
}
