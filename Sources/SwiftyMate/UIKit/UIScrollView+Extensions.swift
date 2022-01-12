//
//  UIScrollView+Extensions.swift
//  
//
//  Created by Stoyko Kolev on 12.01.22.
//

import UIKit

extension UIScrollView {
    
    /// Scrolls to the top-most content offset.
    /// - Parameter animated: Indicates if scrolling is animated (default is true).
    public func scrollToTop(animated: Bool = true) {
        setContentOffset(CGPoint(x: contentOffset.x, y: -contentInset.top), animated: animated)
    }
    
    /// Scrolls to the left-most content offset.
    /// - Parameter animated: Indicates if scrolling is animated (default is true).
    public func scrollToLeft(animated: Bool = true) {
        setContentOffset(CGPoint(x: -contentInset.left, y: contentOffset.y), animated: animated)
    }
    
    /// Scrolls to the bottom-most content offset.
    /// - Parameter animated: Indicates if scrolling is animated (default is true).
    public func scrollToBottom(animated: Bool = true) {
        setContentOffset(
            CGPoint(x: contentOffset.x, y: max(0, contentSize.height - bounds.height) + contentInset.bottom),
            animated: animated)
    }
    
    /// Scrolls to the right-most content offset.
    /// - Parameter animated: Indicates if scrolling is animated (default is true).
    public func scrollToRight(animated: Bool = true) {
        setContentOffset(
            CGPoint(x: max(0, contentSize.width - bounds.width) + contentInset.right, y: contentOffset.y),
            animated: animated)
    }
    
}
