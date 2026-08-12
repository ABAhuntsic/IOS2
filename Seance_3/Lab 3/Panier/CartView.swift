//
//  CartView.swift
//  Panier
//
//  Created by Arthur Bachelet on 2026-08-12.
//

import SwiftUI

struct CartView: View {
    
    let viewModel: CartViewModel
    
    var body: some View {
        Text("Articles au panier : \(viewModel.numberOfItem)")
            .navigationTitle("Panier")
    }
}
