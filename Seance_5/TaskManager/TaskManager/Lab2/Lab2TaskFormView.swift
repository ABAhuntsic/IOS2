//
//  Lab2TaskFormView.swift
//  TaskManager
//
//  Created by Arthur Bachelet on 2026-08-18.
//

import SwiftUI

struct Lab2TaskFormView: View {
    @State private var name = ""
    @State private var minutes = ""
    @State private var isUrgent = false
    @Environment(\.dismiss) private var dismiss

        var body: some View {
            NavigationStack {
                Form {
                    Section("Tache") {
                        TextField("Nom", text: $name)
                        TextField("Minutes estimees", text: $minutes)
                            .keyboardType(.numberPad)
                        Toggle("Urgent", isOn: $isUrgent)
                    }
                }
                .navigationTitle("Nouvelle tache")
                .toolbar {
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Enregistrer") {
                            dismiss()
                        }
                        .disabled(name.trimmingCharacters(in: .whitespaces).isEmpty)
                    }
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Annuler") {
                            dismiss()
                        }
                    }
                }
            }
        }

}

#Preview {
    Lab2TaskFormView()
}
