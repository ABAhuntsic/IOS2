//
//  LikeButton.swift
//  Lab3
//
//  Created by Arthur Bachelet on 2026-08-12.
//

import SwiftUI

struct LikeButton: View {
    
    @Binding var like: Bool
    
    var body: some View {
        Button{
            like.toggle()
        } label: {
            Image(systemName: like ? "heart.fill" : "heart")
                .foregroundStyle(like ? .red : .gray)
                .font(.largeTitle)
        }
    }
}
