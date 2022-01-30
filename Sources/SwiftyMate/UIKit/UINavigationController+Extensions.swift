//
//  UINavigationController+Extensions.swift
//  
//
//  Created by Stoyko Kolev on 30.01.22.
//

import UIKit

extension UINavigationController {
    
    /// Makes navigation bar transparent.
    /// - Parameter tint: The tint color to apply to the navigation items and bar button items. (default is .white).
    public func makeTransparent(withTint tint: UIColor = .white) {
        navigationBar.makeTransparent(withTint: tint)
    }
    
}
