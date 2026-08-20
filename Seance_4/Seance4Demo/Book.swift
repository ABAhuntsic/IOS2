//
//  Book.swift
//  Seance4Demo
//
//  Created by Arthur Bachelet on 2026-08-13.
//

import Foundation

struct Book: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let author: String
}

let myLibrary = [
    Book(title: "1984", author: "George Orwell"),
    Book(title: "Dune", author: "Frank Herbert"),
    Book(title: "Fondation", author: "Isaac Asimov"),
    Book(title: "Neuromancien", author: "William Gibson")
]
