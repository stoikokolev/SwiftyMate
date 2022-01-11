//
//  Bool+Extensions.swift
//  
//
//  Created by Stoyko Kolev on 12.01.22.
//

import Foundation

extension Bool {
    
    /// Returns 1 if true, or 0 if false.
    ///
    ///     false.int -> 0
    ///     true.int -> 1
    ///
    public var int: Int {
        self ? 1 : 0
    }
    
    /// Returns "true" if true, or "false" if false.
    ///
    ///     false.string -> "false"
    ///     true.string -> "true"
    ///
    public var string: String {
        self ? "true" : "false"
    }
    
}
