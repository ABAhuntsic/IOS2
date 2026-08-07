//
//  DetailView.swift
//  Library
//
//  Created by Arthur Bachelet on 2026-08-07.
//

import SwiftUI

struct DetailView: View {
    let book: Book
    @State private var showInfos = false
    
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "book.closed.fill")
                .font(.system(size: 60))
                .foregroundStyle(.blue)
            Text(book.title)
                .font(.title)
                .fontWeight(.bold)
            Text(book.author)
                .foregroundStyle(.secondary)
            
            Button("Info"){
                showInfos = true
            }
            .buttonStyle(.bordered)
            . sheet ( isPresented : $showInfos ) {
                NavigationStack {
                    Text ( " Vous pouvez retrouver ici plus d'informations sur vos ouvrages. " )
                    . padding ()
                    . navigationTitle ( " A propos " )
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Fermer") {
                                showInfos = false
                            }
                        }
                    }
                }
            }
        }
        .padding()
        .navigationTitle("Detail")
    }
}
