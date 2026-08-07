//
//  TrophyModel.swift
//  Trophy
//
//  Created by Arthur Bachelet on 2026-08-03.
//

import Foundation

struct Trophy: Identifiable, Hashable {
    let id = UUID()
    let titre: String
    let icone: String
}

let trophies = [
    Trophy(titre: "Premier pas", icone: "figure.walk"),
    Trophy(titre: "Marathonien", icone: "figure.run"),
    Trophy(titre: "Champion", icone: "crown.fill")
]
