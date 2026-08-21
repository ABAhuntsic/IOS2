//
//  SearchView.swift
//  NASAImage
//
//  Created by Arthur Bachelet on 2026-08-20.
//

import SwiftUI

struct SearchView: View {
    @State private var viewModel = SearchViewModel()
    @State private var searchTerm: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Rechercher (ex: nebula)", text: $searchTerm)
                    .padding()
                    .onSubmit {
                        Task{
                            await viewModel.search(term: searchTerm)
                        }
                    }
                
                if viewModel.isLoading {
                    ProgressView("Recherche en cours...")
                } else if let error = viewModel.errorMessage {
                    Text(error).foregroundStyle(.red)
                } else {
                    List(viewModel.items) { item in
                        HStack {
                            AsyncImage(url: URL(string: item.links?.first?.href ?? "")) { image in
                                image.resizable().scaledToFill()
                            } placeholder: {
                                ProgressView()
                            }.frame(width: 60, height: 60)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                            
                            Text(item.data.first?.title ?? "Sans titre")
                        }
                    }
                    
                }
            }.navigationTitle("Images NASA")
        }
    }
}

#Preview {
    SearchView()
}
