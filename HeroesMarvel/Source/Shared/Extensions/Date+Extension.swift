//
//  Date+Extension.swift
//  Alamofire
//
//  Created by Hellen on 20/10/21.
//

import Foundation

extension Date {
    
    func toMillis() -> Int64 {
        return Int64(self.timeIntervalSince1970 * 1000)
    }
    
    func toMillisString() -> String {
        return String(toMillis())
    }
}
