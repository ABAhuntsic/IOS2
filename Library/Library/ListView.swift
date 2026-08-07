//
//  ListView.swift
//  Library
//
//  Created by Arthur Bachelet on 2026-08-07.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                ForEach(books) { book in
                    NavigationLink(value: book){
                        HStack {
                            Image(systemName: "book.closed.fill")
                                .foregroundStyle(.blue)
                            VStack(alignment: .leading) {
                                Text(book.title)
                                    .fontWeight(.semibold)
                                Text(book.author)
                                    .font(.caption)
                                    .foregroundStyle(.secondary)
                            }
                            Spacer()
                        }
                        .padding()
                        .background(.gray.opacity(0.1))
                        .cornerRadius(12)
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Ma liste")
    }
}

#Preview {
    ListView()
}
