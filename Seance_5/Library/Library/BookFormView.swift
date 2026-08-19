//
//  BookFormView.swift
//  Library
//
//  Created by Arthur Bachelet on 2026-08-17.
//

import SwiftUI

struct BookFormView: View {
    @State private var draft: Book
    let viewModel: LibraryViewModel
    @Environment(\.dismiss) private var dismiss
    private let isEditing: Bool

    init(book: Book? = nil, viewModel: LibraryViewModel) {
        _draft = State(initialValue: book ?? Book(title: "", author: ""))
        self.viewModel = viewModel
        self.isEditing = book != nil
    }

    var body: some View {
        NavigationStack {
            Form {
                Section("Informations") {
                    TextField("Titre", text: $draft.title)
                    TextField("Auteur", text: $draft.author)
                }
                Section("Details") {
                    Toggle("Favori", isOn: $draft.isFavorite)
                    DatePicker("Lu le :", selection: $draft.dateAdded,
                               displayedComponents: .date)
                }
            }
            .navigationTitle(isEditing ? "Modifier" : "Nouveau livre")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Enregistrer") {
                        viewModel.save(draft)
                        dismiss()
                    }
                    .disabled(draft.title.trimmingCharacters(in: .whitespaces).isEmpty)
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button("Annuler") { dismiss() }
                }
            }
        }
    }
}

