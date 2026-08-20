//
//  TaskListView.swift
//  TaskManager
//
//  Created by Arthur Bachelet on 2026-08-18.
//

import SwiftUI

enum Destination: Hashable {
    case add
    case edit(Task)
}

struct TaskListView: View {
    @State private var viewModel = TaskViewModel()

   var body: some View {
       NavigationStack {
           List(viewModel.tasks) { task in
               NavigationLink(value: Destination.edit(task)) {
                   HStack {
                       Text(task.name)
                       Spacer()
                       if task.isUrgent {
                           Image(systemName: "exclamationmark.circle.fill")
                               .foregroundStyle(.red)
                       }
                   }
               }
           }
           .navigationTitle("Mes taches")
           .toolbar {
               ToolbarItem(placement: .primaryAction) {
                   NavigationLink(value: Destination.add) {
                       Label("Ajouter", systemImage: "plus")
                   }
               }
           }
           .navigationDestination(for: Destination.self) { destination in
               switch destination {
               case .add:
                   Lab3TaskFormView(viewModel: viewModel)
               case .edit(let task):
                   Lab3TaskFormView(task: task, viewModel: viewModel)
               }
           }
       }
   }
}

#Preview {
    TaskListView()
}
