//
//  NASAModels.swift
//  NASAImage
//
//  Created by Arthur Bachelet on 2026-08-20.
//

import Foundation


struct NASAItemData: Codable, Hashable {
    let nasaId: String
    let title: String
    let description: String?
    let center: String?
    
    enum CodingKeys: String, CodingKey {
        case nasaId = "nasa_id"
        case title, description, center
    }
}

struct NASALink: Codable,Hashable{
    let href: String
    let rel: String?
    let render: String
}

struct NASAItem: Codable, Identifiable, Hashable {
    let data: [NASAItemData]
    let links: [NASALink]?
    
    var id: String {
        data.first?.nasaId ?? UUID().uuidString
    }
}

struct NASACollection: Codable {
    let items: [NASAItem]
}

struct NASASearchResponse: Codable {
    let collection: NASACollection
}
