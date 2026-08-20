//
//  LibraryAdaptativeGaleryView.swift
//  Seance4Demo
//
//  Created by Arthur Bachelet on 2026-08-13.
//

import SwiftUI

struct LibraryAdaptativeGaleryView: View {
    var body: some View {
        GeometryReader{ geometrie in
            let width = geometrie.size.width
            let columnNumber = Int(width/150)
            let columns = Array(
                repeating: GridItem(.flexible()),
                count: max(columnNumber, 1)
            )
            
            ScrollView{
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(myLibrary){ book in
                        VStack{
                            Image(systemName: "book.closed.fill")
                                .font(.system(size: 40))
                                .foregroundColor(.blue)
                            Text(book.title)
                                .font(.caption)
                        }
                        .padding()
                        .background(.gray.opacity(0.3))
                        .cornerRadius(12)
                        
                    }
                }
            }
            
            
        }
    }
}

#Preview {
    LibraryAdaptativeGaleryView()
}
