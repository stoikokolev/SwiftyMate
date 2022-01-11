//
//  UIView+Extensions.swift
//  
//
//  Created by Stoyko Kolev on 12.01.22.
//

import UIKit

extension UIView {
    
    /// Adds `self` to a `parentView` and expands it to fit the parent's constraints.
    /// - Parameter parentView: ``UIView`` to be used as a container
    public func expand(in parentView: UIView) {
        parentView.addSubview(self)
        translatesAutoresizingMaskIntoConstraints = false
        
        topAnchor.constraint(equalTo: parentView.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: parentView.leadingAnchor).isActive = true
        widthAnchor.constraint(equalTo: parentView.widthAnchor).isActive = true
        heightAnchor.constraint(equalTo: parentView.heightAnchor).isActive = true
    }
    
    /// Rounds corners for its layer’s background.
    /// - Parameter radius: The radius to use when drawing rounded corners.
    public func addCornerRadius(_ radius: CGFloat = 5) {
        layer.cornerRadius = radius
        layer.masksToBounds = true
    }
    
    /// Adds border line with an adjustable width and color to `self`.
    /// - Parameters:
    ///   - width: The width of the layer’s border.
    ///   - color: The color of the layer’s border.
    public func addBorderLine(width: CGFloat = 1, color: UIColor = .black) {
        layer.borderWidth = width
        layer.borderColor = color.cgColor
    }
    
}
