//
//  ShopView.swift
//  Panier
//
//  Created by Arthur Bachelet on 2026-08-12.
//

import SwiftUI

struct ShopView: View {
    
    @Bindable var viewModel: CartViewModel
    
    var body: some View {
        VStack{
            ButtonAddView(value: $viewModel.numberOfItem)
            Text("Valeur : \(viewModel.numberOfItem)")
        }
        .navigationTitle("Boutique")
    }
}
