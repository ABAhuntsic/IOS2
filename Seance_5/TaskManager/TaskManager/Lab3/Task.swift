//
//  Task.swift
//  TaskManager
//
//  Created by Arthur Bachelet on 2026-08-18.
//

import Foundation

struct Task: Identifiable, Hashable {
    let id: UUID = UUID()
    var name: String
    var minutes: Int?
    var isUrgent: Bool = false
}
