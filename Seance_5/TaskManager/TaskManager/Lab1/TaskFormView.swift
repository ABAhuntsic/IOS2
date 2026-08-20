//
//  TaskFormView.swift
//  TaskManager
//
//  Created by Arthur Bachelet on 2026-08-18.
//

import SwiftUI

struct TaskFormView: View {
    @State private var name = ""
    @State private var minutes = ""
    @State private var isUrgent = false

    var body: some View {
        Form {
            Section("Tache") {
                TextField("Nom", text: $name)
                TextField("Minutes estimees", text: $minutes)
                    .keyboardType(.numberPad)
                Toggle("Urgent", isOn: $isUrgent)
            }
        }
    }
}

#Preview {
    TaskFormView()
}
