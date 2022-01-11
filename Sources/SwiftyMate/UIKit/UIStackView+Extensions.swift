//
//  UIStackView+Extensions.swift
//  
//
//  Created by Stoyko Kolev on 11.01.22.
//

import UIKit

extension UIStackView {
    
    /// Removes arranged subview.
    /// - Parameter view: ``UIView`` to remove.
    public func remove(view: UIView) {
        removeArrangedSubview(view)
        view.removeFromSuperview()
    }
    
    /// Removes all arranged subviews.
    public func removeArrangedSubviews() {
        arrangedSubviews.forEach { remove(view: $0) }
    }
    
}
