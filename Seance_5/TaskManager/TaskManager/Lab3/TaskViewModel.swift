//
//  TaskViewModel.swift
//  TaskManager
//
//  Created by Arthur Bachelet on 2026-08-18.
//

import Foundation

@Observable
class TaskViewModel {
    var tasks: [Task] = []

    func save(_ task: Task) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index] = task
        } else {
            tasks.append(task)
        }
    }
}
