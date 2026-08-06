//
//  ProductSheetView.swift
//  Fiche Produit
//
//  Created by Arthur Bachelet on 2026-07-23.
//

import SwiftUI

struct ProductSheetView: View {
    var body : some View {
            Image("Headphones")
                .resizable()
                .frame( width: 60, height: 60 )
                .scaledToFit()
                .padding()
                .background(.gray.opacity(0.1))
                .clipShape(Circle())
            Text("Casque audio sans fil")
                .font(.headline)
                .padding()
            Text("89,99 $")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.bottom)
                .padding(.top, 1)
            Button("Ajouter au panier") {
                print ("Ajoute")
            }
            .buttonStyle(.borderedProminent)
    }
}

#Preview {
    ProductSheetView()
}
