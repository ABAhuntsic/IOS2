//
//  FavoriteScreenComposed.swift
//  Lab3
//
//  Created by Arthur Bachelet on 2026-08-12.
//

import SwiftUI

struct FavoriteScreenComposed: View {
    @State private var likeItem1 = false
    @State private var likeItem2 = false
    var body: some View {
        HStack(spacing: 40){
            VStack {
                Text("Article 1")
                LikeButton(like: $likeItem1)
            }
            VStack{
                Text("Article 2")
                LikeButton(like: $likeItem2)
            }
        }
    }
}

#Preview {
    FavoriteScreenComposed()
}
