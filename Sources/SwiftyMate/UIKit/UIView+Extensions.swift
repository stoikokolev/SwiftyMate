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
    
}
