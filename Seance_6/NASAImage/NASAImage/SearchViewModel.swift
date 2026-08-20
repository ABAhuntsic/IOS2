//
//  SearchViewModel.swift
//  NASAImage
//
//  Created by Arthur Bachelet on 2026-08-18.
//

import Foundation
@Observable
class SearchViewModel {
    var items: [NASAItem] = []
    var isLoading = false
    var errorMessage: String?

    func search(term: String) async {
        isLoading = true
        errorMessage = nil

        do {
            var components = URLComponents(string: "https://images-api.nasa.gov/search")!
            components.queryItems = [
                URLQueryItem(name: "q", value: term),
                URLQueryItem(name: "media_type", value: "image")
            ]
            print("Components : \(components)")
            print("URL construite : \(String(describing: components.url))")
            guard let url = components.url else { throw URLError(.badURL) }

            let (data, _) = try await URLSession.shared.data(from: url)
            let response = try JSONDecoder().decode(NASASearchResponse.self, from: data)
            items = response.collection.items
        } catch {
            print(error)
            errorMessage = "Impossible de charger les resultats."
        }

        isLoading = false
    }
}
