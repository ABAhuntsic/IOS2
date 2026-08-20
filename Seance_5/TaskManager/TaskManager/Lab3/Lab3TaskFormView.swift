//
//  Lab3TaskFormView.swift
//  TaskManager
//
//  Created by Arthur Bachelet on 2026-08-18.
//

import SwiftUI

struct Lab3TaskFormView: View {
    @State private var draft: Task
    let viewModel: TaskViewModel
    @Environment(\.dismiss) private var dismiss
    private let isEditing: Bool

    init(task: Task? = nil, viewModel: TaskViewModel) {
        _draft = State(initialValue: task ?? Task(name: ""))
        self.viewModel = viewModel
        self.isEditing = task != nil
    }

    var body: some View {
        Form {
                Section("Tache") {
                    TextField("Nom", text: $draft.name)
                    TextField("Minutes estimees", value: $draft.minutes, format: .number)
                        .keyboardType(.numberPad)
                    Toggle("Urgent", isOn: $draft.isUrgent)
                }
        }
        .navigationTitle(isEditing ? "Modifier" : "Nouvelle tache")
        .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Enregistrer") {
                        viewModel.save(draft)
                        dismiss()
                    }
                    .disabled(draft.name.trimmingCharacters(in: .whitespaces).isEmpty)
                }
        }
    }
}
