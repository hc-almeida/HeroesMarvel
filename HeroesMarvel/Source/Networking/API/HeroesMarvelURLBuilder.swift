//
//  HeroesMarvelURLBuilder.swift
//  Alamofire
//
//  Created by Hellen on 20/10/21.
//

import Foundation


class HeroesMarvelURLBuilder {
    
    // MARK: - Private Properties
    
    private var url: String
    
    // MARK: - Inits
    
    init(resource: MarvelSection) {
        self.url = "\(MarvelAPI.baseURL)/public/\(resource.rawValue)"
        setupURL()
    }
    
    // MARK: - Public Functions
    
    func set(offset: Int) -> HeroesMarvelURLBuilder {
        self.url += "&offset=\(offset)"
        return self
    }
    
    func set(textSearch: String) -> HeroesMarvelURLBuilder {
        self.url += "&nameStartsWith=\(textSearch)"
        return self
    }
    
    func set(characters: Int) -> HeroesMarvelURLBuilder {
        self.url += "&characters=\(characters)"
        return self
    }
    
    func build() -> String {
        return url
    }
    
    // MARK: - Private Functions
    
    private func setupURL() {
        let apiKey = MarvelAPI.publicKey
        let privateKey = MarvelAPI.privateKey
        let timeStamp = Date().toMillisString()
        let hash = (timeStamp + privateKey + apiKey).md5
        self.url += "?apikey=\(apiKey)&hash=\(hash)&ts=\(timeStamp)"
    }
}
