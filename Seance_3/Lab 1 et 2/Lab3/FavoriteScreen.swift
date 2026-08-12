//
//  FavoriteScreen.swift
//  Lab3
//
//  Created by Arthur Bachelet on 2026-08-12.
//

import SwiftUI

struct FavoriteScreen: View {
    @State private var like = false
    
    var body: some View {
        VStack{
            Button{
                like.toggle()
            } label: {
                Image(systemName: like ? "heart.fill" : "heart")
                    .foregroundStyle(like ? .red : .gray)
                    .font(.largeTitle)
            }
        }
    }
}

#Preview {
    FavoriteScreen()
}
