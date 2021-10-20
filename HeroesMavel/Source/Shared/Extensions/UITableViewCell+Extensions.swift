//
//  UITableViewCell+Extensions.swift
//  HeroesMavel
//
//  Created by Hellen on 19/10/21.
//

import UIKit

extension UITableViewCell {
    
    static func registerOn(_ tableView: UITableView) {
        let reuseIdentifier = String(describing: self.self)
        tableView.register(self.self, forCellReuseIdentifier: reuseIdentifier)
    }
}
