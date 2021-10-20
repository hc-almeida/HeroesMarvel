//
//  Character.swift
//  HeroesMarvel
//
//  Created by Hellen on 20/10/21.
//

import Foundation

class Character: Decodable {
    
    // MARK: - Decodable Properties
    
    let id: Int
    
    let name: String
    
    let description: String
    
    let thumbnail: Thumbnail
    
    private enum CodingKeys: CodingKey {
        case id, name, description, thumbnail
    }
    
    // MARK: - Computed Properties
    
    var imageURL: String {
        let path = thumbnail.path ?? ""
        let `extension` = thumbnail.extension ?? ""
        return "\(path).\(`extension`)"
    }
    
    // MARK: - Init
    
    init(id: Int, name: String, description: String, thumbnail: Thumbnail) {
        self.id = id
        self.name = name
        self.description = description
        self.thumbnail = thumbnail
    }

}
