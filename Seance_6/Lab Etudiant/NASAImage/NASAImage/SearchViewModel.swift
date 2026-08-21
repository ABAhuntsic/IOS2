//
//  SearchViewModel.swift
//  NASAImage
//
//  Created by Arthur Bachelet on 2026-08-20.
//

import Foundation

@Observable
class SearchViewModel {
    var items: [NASAItem] = []
    var isLoading: Bool = false
    var errorMessage: String?
    
    private let network = NetworkService()
    
    func buildRequest(term: String) throws -> URLRequest {
        var components = URLComponents(string: "https://images-api.nasa.gov/search")!
        components.queryItems = [
            URLQueryItem(name:"q" , value: term ),
            URLQueryItem(name:"media_type", value: "image")
        ]
        
        guard let url = components.url else {
            throw NetworkError.invalidURL
        }
        
        return URLRequest(url: url)
    }
    
    func search(term: String) async {
        isLoading = true
        errorMessage = nil
        
        do {
            let request = try buildRequest(term: term)
            let response: NASASearchResponse = try await network.fetch(request, as: NASASearchResponse.self)
            items = response.collection.items
        } catch let error as NetworkError {
            switch error {
            case .invalidURL:
                errorMessage = "L'URL est invalide"
            case .invalidResponse:
                errorMessage = "Réponse invalide du serveur"
            
            }
        } catch is URLError {
            errorMessage = "Problème de connexion"
        } catch is DecodingError {
            errorMessage = "Format de la réponse inattendu"
        } catch {
            errorMessage = "Erreur inattendue"
        }
        
        
        isLoading = false
    }
}
