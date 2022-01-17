//
//  Collection+Extensions.swift
//  
//
//  Created by Stoyko Kolev on 12.01.22.
//

import Foundation

extension Collection {
    
    /// Safe protects the array from out of bounds by use of optional.
    /// - Parameter index: Index of element to access.
    /// - Example
    /// ```
    /// let array = ["Harry", "Ron"]
    /// array[safe: 0] -> "Harry"
    /// array[safe: 10] -> nil
    /// ```
    public subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
    
}
