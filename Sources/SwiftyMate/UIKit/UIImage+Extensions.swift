//
//  UIImage+Extensions.swift
//  
//
//  Created by Stoyko Kolev on 6.02.22.
//

import UIKit

extension UIImage {
    
    /// Rounds image corners.
    /// - Parameters:
    ///   - cornerRadius: The radius to use when drawing rounded corners (default is `nil`).
    ///   - borderWidth: The width of the image border (default is zero).
    ///   - borderColor: The color of the image border (default is .clear).
    /// - Returns: Image with rounded corners.
    public func rounded(cornerRadius: CGFloat? = nil,
                        borderWidth: CGFloat = .zero,
                        borderColor: UIColor = .clear) -> UIImage {
        let diameter = min(size.width, size.height)
        let isLandscape = size.width > size.height
        
        let xOffset = isLandscape ? (size.width - diameter) / 2 : .zero
        let yOffset = isLandscape ? .zero : (size.height - diameter) / 2
        
        let imageSize = CGSize(width: diameter, height: diameter)
        
        return UIGraphicsImageRenderer(size: imageSize).image { _ in
            let roundedPath = UIBezierPath(roundedRect: CGRect(origin: .zero, size: imageSize),
                                           cornerRadius: cornerRadius ?? diameter / 2)
            roundedPath.addClip()
            draw(at: CGPoint(x: -xOffset, y: -yOffset))
            guard borderWidth > .zero else { return }
            
            borderColor.setStroke()
            roundedPath.lineWidth = borderWidth
            roundedPath.stroke()
        }
    }
    
}
