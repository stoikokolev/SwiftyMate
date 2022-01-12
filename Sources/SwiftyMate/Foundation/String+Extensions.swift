//
//  String+Extensions.swift
//  
//
//  Created by Stoyko Kolev on 12.01.22.
//

import Foundation

extension String {
    
    // MARK: - Properties
    
    /// Checks if string contains only letters.
    /// - Example
    /// ```
    /// "alphabetic string".isAlphabetic -> true
    /// "n0t alphab3tic str1ng".isAlphabetic -> false
    ///```
    public var isAlphabetic: Bool {
        let hasLetters = rangeOfCharacter(from: .letters, options: .numeric) != nil
        let hasDigits = rangeOfCharacter(from: .decimalDigits, options: .literal) != nil
        return hasLetters && !hasDigits
    }
    
    /// Checks if string only contains digits.
    /// - Example
    /// ```
    /// "300".isDigits -> true
    /// "1.9TDI".isDigits -> false
    /// "30O".isDigits -> false
    /// ```
    public var isDigits: Bool {
        CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: self))
    }
    
    /// Checks if string is valid email format.
    /// - Example
    /// ```
    /// "harry@potter.com".isValidEmail -> true
    /// ```
    public var isValidEmail: Bool {
        let regex =
        "^(?:[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[\\p{L}0-9](?:[a-z0-9-]*[\\p{L}0-9])?\\.)+[\\p{L}0-9](?:[\\p{L}0-9-]*[\\p{L}0-9])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[\\p{L}0-9-]*[\\p{L}0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])$"
        return range(of: regex, options: .regularExpression) != nil
    }
    
    // MARK: - Functions
    
    /// Adds a prefix to `self` if it does not exist.
    /// - Parameter prefix: The prefix to be added.
    /// - Returns: String with the given prefix.
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
