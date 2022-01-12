//
//  UITextField+Extensions.swift
//  
//
//  Created by Stoyko Kolev on 12.01.22.
//

import UIKit

extension UITextField {
    
    // MARK: - Properties
    
    /// Checks if text field is empty.
    public var isEmpty: Bool {
        text?.isEmpty == true
    }
    
    // MARK: - Functions
    
    /// Clears text.
    public func clear() {
        text = ""
        attributedText = NSAttributedString(string: "")
    }
    
    /// Sets placeholder text color.
    /// - Parameter color: Placeholder text color.
    public func setPlaceHolderColor(_ color: UIColor) {
        guard let placeholder = placeholder,
              !placeholder.isEmpty else { return }
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor: color])
    }
    
}
