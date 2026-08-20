//
//  LibraryListView.swift
//  Seance4Demo
//
//  Created by Arthur Bachelet on 2026-08-13.
//

import SwiftUI

struct LibraryListView: View {
    var body: some View {
        List(myLibrary){ book in
            HStack{
                Image(systemName: "book.closed.fill")
                    .foregroundStyle(.blue)
                VStack(alignment: .leading){                    Text(book.title).fontWeight(.bold)
                    Text(book.author)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }
        }
        .listStyle(.insetGrouped)
    }
}

#Preview {
    LibraryListView()
}
