//
//  Book.swift
//  Library
//
//  Created by Arthur Bachelet on 2026-08-17.
//

import Foundation

struct Book: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var author: String
    var isFavorite: Bool = false
    var dateAdded: Date = Date()
}

struct BookContext: Identifiable {
    var id = UUID()
    var book: Book?
}
