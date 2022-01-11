//
//  String+Extensions.swift
//  
//
//  Created by Stoyko Kolev on 12.01.22.
//

import Foundation

extension String {
    
    /// Adds a prefix to `self` if it does not exist.
    /// - Parameter prefix: The prefix to be added.
    /// - Returns: String with the given prefix.
    ///
    /// - Example
    /// ```
    /// let url = "www.github.com"
    /// let fullURL = url.withPrefix("https://")
    /// ```
    public func withPrefix(_ prefix: String) -> String {
        guard !hasPrefix(prefix) else { return self }
        
        return "\(prefix)\(self)"
    }
    
}
