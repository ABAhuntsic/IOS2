//
//  LibraryViewModel.swift
//  Library
//
//  Created by Arthur Bachelet on 2026-08-17.
//

import Foundation

@Observable
class LibraryViewModel {
    var books: [Book] = [Book(title: "1984", author: "George Orwell")]

    func save(_ book: Book) {
        if let index = books.firstIndex(where: { $0.id == book.id }) {
            books[index] = book
        } else {
            books.append(book)
        }
    }
}
