//
//  UINavigationBar+Extensions.swift
//  
//
//  Created by Stoyko Kolev on 12.01.22.
//

import UIKit

extension UINavigationBar {
    
    /// Sets `NavigationBar` title color and font.
    /// - Parameters:
    ///   - font: Title font.
    ///   - color: Title text color (default is black).
    public func setTitleFont(_ font: UIFont, color: UIColor = .black) {
        var attributes = [NSAttributedString.Key: Any]()
        attributes[.font] = font
        attributes[.foregroundColor] = color
        titleTextAttributes = attributes
    }
    
    /// Sets `NavigationBar` background and text colors.
    /// - Parameters:
    ///   - background: Background color.
    ///   - text: Text color.
    public func setColors(background: UIColor, text: UIColor) {
        isTranslucent = false
        backgroundColor = background
        barTintColor = background
        setBackgroundImage(UIImage(), for: .default)
        tintColor = text
        titleTextAttributes = [.foregroundColor: text]
    }
    
    /// Makes `NavigationBar` transparent.
    /// - Parameter tint: The tint color to apply to the navigation items and bar button items. (default is .white).
    public func makeTransparent(withTint tint: UIColor = .white) {
        isTranslucent = true
        backgroundColor = .clear
        barTintColor = .clear
        tintColor = tint
        titleTextAttributes = [.foregroundColor: tint]
        setBackgroundImage(UIImage(), for: .default)
        shadowImage = UIImage()
    }
    
}
