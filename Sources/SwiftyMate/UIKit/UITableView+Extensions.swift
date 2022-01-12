//
//  UITableView+Extensions.swift
//  
//
//  Created by Stoyko Kolev on 12.01.22.
//

import UIKit

extension UITableView {
    
    /// Registers ``UITableViewCell`` using class name.
    /// - Parameter name: ``UITableViewCell`` type.
    public func register<T: UITableViewCell>(cellWithClass name: T.Type) {
        register(T.self, forCellReuseIdentifier: String(describing: name))
    }
    
}
