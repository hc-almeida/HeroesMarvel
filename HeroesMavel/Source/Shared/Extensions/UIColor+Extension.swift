//
//  UIColor+Extension.swift
//  HeroesMavel
//
//  Created by Hellen on 19/10/21.
//

import UIKit

extension UIColor {
    
    // MARK: - Init
    
    convenience init(red: Int, green: Int, blue: Int) {
        self.init(
            red: CGFloat(red) / 255,
            green: CGFloat(green) / 255,
            blue: CGFloat(blue) / 255,
            alpha: 1.0)
    }
    
    // MARK: - Proportion Colors
    
    static let dark = UIColor(red: 1, green: 22, blue: 39)
    
    static let blueDark = UIColor(red: 0, green: 20, blue: 39)
    
    static let customRed = UIColor(red: 231, green: 29, blue: 54)
    
}
