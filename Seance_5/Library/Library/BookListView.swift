//
//  BookListView.swift
//  Library
//
//  Created by Arthur Bachelet on 2026-08-17.
//

import SwiftUI

struct BookListView: View {
    @State private var viewModel = LibraryViewModel()
    @State private var bookContext: BookContext?
    
    var body: some View {
        NavigationStack {
            List(viewModel.books) { book in
                Button {
                    bookContext = BookContext(book: book)
                } label: {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(book.title).fontWeight(.semibold)
                            Text(book.author).font(.footnote)
                            Text(book.dateAdded, style: .date)
                                .font(.caption2)
                                .foregroundStyle(.secondary)
                        }
                        Spacer()
                        if book.isFavorite {
                            Image(systemName: "heart.fill")
                                .foregroundStyle(.red)
                        }
                    }
                }
            }
            .navigationTitle("Ma bibliotheque")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Ajouter", systemImage: "plus") {
                        bookContext = BookContext(book: nil)
                    }
                }
            }
            .sheet(item: $bookContext ) { context in
                BookFormView(book: context.book, viewModel: viewModel)
            }
        }
    }
}

#Preview {
    BookListView()
}
