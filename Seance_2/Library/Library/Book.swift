//
//  Book.swift
//  Library
//
//  Created by Arthur Bachelet on 2026-08-07.
//

import Foundation

struct Book: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let author: String
}

let books = [
    Book(title: "1984", author: "George Orwell"),
    Book(title: "Dune", author: "Frank Herbert"),
    Book(title: "Fondation", author: "Isaac Asimov")
]
