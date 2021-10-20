//
//  MarvelAPI.swift
//  Alamofire
//
//  Created by Hellen on 19/10/21.
//

import Foundation

enum MarvelSection: String {
    case characters
    case comics
}

struct MarvelAPI {
    
    // MARK: - Public Properties
    
    static let version: String = "v1"
    
    static var publicKey = "836800b3e60991b6a27512a91e228a95"
    
    static var privateKey = "aea2bb1d2dc8c1e421fc55e50554de16cb9f33f3"
    
    static let baseURL: String = "https://gateway.marvel.com:443/\(MarvelAPI.version)"
    
}
