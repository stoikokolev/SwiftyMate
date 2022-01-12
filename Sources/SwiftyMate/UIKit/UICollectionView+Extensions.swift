//
//  UICollectionView+Extensions.swift
//  
//
//  Created by Stoyko Kolev on 12.01.22.
//

import UIKit

extension UICollectionView {
    
    /// Registers ``UICollectionViewCell`` using class name.
    /// - Parameter name: ``UICollectionViewCell`` type.
    public func register<T: UICollectionViewCell>(cellWithClass name: T.Type) {
        register(T.self, forCellWithReuseIdentifier: String(describing: name))
    }
    
}
