//
//  NetworkService.swift
//  NASAImage
//
//  Created by Arthur Bachelet on 2026-08-20.
//

import Foundation

enum NetworkError: Error {
    case invalidResponse
    case invalidURL
}

struct NetworkService {
    func fetch<T: Decodable>(_ request: URLRequest, as type: T.Type) async throws -> T {
        let (data, response) = try await URLSession.shared.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
            throw NetworkError.invalidResponse
        }
        
        return try JSONDecoder().decode(T.self, from: data)
    }
}
