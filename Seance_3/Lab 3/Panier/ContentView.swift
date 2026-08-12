//
//  ContentView.swift
//  Panier
//
//  Created by Arthur Bachelet on 2026-08-12.
//

import SwiftUI

enum Destination: Hashable {
    case shop
    case cart
}

struct ContentView: View {
    
    @State private var viewModel = CartViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(value: Destination.shop){
                    Text("Aller à la boutique")
                }
                .buttonStyle(.borderedProminent)
                NavigationLink(value: Destination.cart){
                    Text("Voir mon panier")
                }
                .buttonStyle(.bordered)
            }
            .navigationDestination(for: Destination.self ){ destination in
                switch destination {
                case .shop: ShopView(viewModel: viewModel)
                case .cart: CartView(viewModel: viewModel)
                }
                
            }
            
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
