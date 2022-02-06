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
    
    /// Adds array of subviews to `self`.
    /// - Parameter subviews: array of subviews to add to self.
    public func addSubviews(_ subviews: [UIView]) {
        subviews.forEach { addSubview($0) }
    }
    
    /// Removes all subviews in `self`.
    public func removeSubviews() {
        subviews.forEach { $0.removeFromSuperview() }
    }
    
    /// Shakes.
    /// - Parameters:
    ///   - count: Shakes count (default is 3).
    ///   - duration: Shake duration (default is 0.2).
    ///   - translation: Shake translation. Default is 5.
    public func shake(count: Float = 3, duration: TimeInterval = 0.2, translation: Float = 5) {
        let animation = CABasicAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        animation.repeatCount = count
        animation.duration = duration / TimeInterval(animation.repeatCount)
        animation.autoreverses = true
        animation.byValue = translation
        
        layer.add(animation, forKey: "shake")
    }
    
    /// Pulses.
    /// - Parameters:
    ///   - count: Pulse count (default is 1).
    ///   - duration: Pulse duration (default is 1).
    public func pulse(count: Int = 1, duration: TimeInterval = 1) {
        let animation = CABasicAnimation(keyPath: "opacity")
        animation.duration = duration
        animation.fromValue = 0
        animation.toValue = 1
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        animation.autoreverses = true
        animation.repeatCount = Float(count)
        
        layer.add(animation, forKey: "pulse")
    }
    
}
