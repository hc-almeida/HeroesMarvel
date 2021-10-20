//
//  APIError.swift
//  Alamofire
//
//  Created by Hellen on 20/10/21.
//

import Foundation

enum APIError: Error {
    case networkError
    case decodeError
    case databaseError
}

extension APIError: LocalizedError {
    
    var errorDescription: String? {
        switch self {
        case .networkError:
            return "Desculpe, ocorreu um erro ao conectar aos servidores."
        case .decodeError:
            return "Desculpe, algo deu errado."
        case .databaseError:
            return "Desculpe, ocorreu um erro com o banco de dados."
        }
    }
}
