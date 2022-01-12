//
//  Int+Extensions.swift
//  
//
//  Created by Stoyko Kolev on 12.01.22.
//

import Foundation

extension Int {
    
    /// Checks if given integer is prime or not.
    /// - Warning: Using big numbers can be computationally expensive!
    public var isPrime: Bool {
        guard self != 2 else { return true }
        
        guard self > 1,
              self % 2 != 0 else { return false }
        
        let base = Int(sqrt(Double(self)))
        for number in Swift.stride(from: 3, through: base, by: 2) where self % number == 0 { return false }
        return true
    }
    
}
