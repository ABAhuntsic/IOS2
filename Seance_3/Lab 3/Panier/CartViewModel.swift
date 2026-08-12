//
//  CartViewModel.swift
//  Panier
//
//  Created by Arthur Bachelet on 2026-08-12.
//

import Foundation

@Observable
class CartViewModel {
    var numberOfItem = 0
    func add() {
        numberOfItem += 1
    }
}
