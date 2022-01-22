//
//  UIImageView+Extensions.swift
//  
//
//  Created by Stoyko Kolev on 22.01.22.
//

import UIKit

extension UIImageView {
    
    /// Gets all the images from a `gif` file and adds it to the imageView `animationImages`.
    /// - Parameters:
    ///   - view: ``UIView`` where `gif` imageView will be visualized.
    ///   - resourceName: The name of `gif` resource file.
    /// - Returns: ``UIImageView`` with configured `animationImages`.
    /// - Example
    /// ```
    /// guard let gifImageView = UIImageView.fromGif(in: parentView,
    ///                                                  resourceName: "giphy") else { return }
    /// view.addSubview(gifImageView)
    /// gifImageView.startAnimating()
    /// ```
    /// - Note: Gif resource should be added as a file in the project, not in the `Assets` catalog.
    /// - Warning: Release the memory as soon as the animation is no longer needed as follows:
    /// ```
    /// gifImageView.animationImages = nil
    /// ```
    public static func fromGif(in view: UIView, resourceName: String) -> UIImageView? {
        guard let path = Bundle.main.path(forResource: resourceName, ofType: "gif") else {
            print("Gif does not exist at that path")
            return nil
        }
        
        let url = URL(fileURLWithPath: path)
        guard let gifData = try? Data(contentsOf: url),
              let source =  CGImageSourceCreateWithData(gifData as CFData, nil) else { return nil }
        
        var images = [UIImage]()
        let imageCount = CGImageSourceGetCount(source)
        for i in 0 ..< imageCount {
            guard let image = CGImageSourceCreateImageAtIndex(source, i, nil) else { continue }
            
            images.append(UIImage(cgImage: image))
        }
        
        let gifImageView = UIImageView(frame: view.frame)
        gifImageView.animationImages = images
        return gifImageView
    }
    
}
