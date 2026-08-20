//
//  LibraryGalleryView.swift
//  Seance4Demo
//
//  Created by Arthur Bachelet on 2026-08-13.
//

import SwiftUI

struct LibraryGalleryView: View {
    
    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(myLibrary) { book in
                    VStack {
                        Image(systemName: "book.closed.fill")
                            .font(.system(size: 40))
                            .foregroundStyle(.blue)
                        Text(book.title)
                            .font(.caption)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    LibraryGalleryView()
}
