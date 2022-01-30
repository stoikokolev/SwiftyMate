//
//  Int+Extensions.swift
//  
//
//  Created by Stoyko Kolev on 12.01.22.
//

import Foundation

extension Int {
    
    // MARK: - Properties
    
    /// Random integer between min and max (inclusive).
    /// - Parameters:
    ///   - min: The minimum value to return (default is 0).
    ///   - max: The maximum value to return.
    /// - Returns: Random integer.
    /// - Example
    /// ```
    /// print(Int.random(max: 130)) -> "91"
    /// ```
    public static func random(min: Int = 0, max: Int) -> Int {
        Int(arc4random_uniform(UInt32((max - min) + 1))) + min
    }
    
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
    
    /// Checks if given integer is even.
    public var isEven: Bool {
        self % 2 == 0
    }
    
    /// Checks if given integer is odd.
    public func isOdd: Bool {
        !isEven()
    }
    
    /// Computes the factirial of the given number.
    public var factorial: Int {
        self == 0 ? 1 : self * (self - 1).factorial
    }
    
    // MARK: - Functions
    
}
