//
//  UISwitch+Extensions.swift
//  
//
//  Created by Stoyko Kolev on 12.01.22.
//

import UIKit

extension UISwitch {
    
    /// Toggles the state of ``UISwitch``.
    /// - Parameter animated: Indicates if the flipping is animated (default is true).
    public func toggle(animated: Bool = true) {
        setOn(!isOn, animated: animated)
    }
    
}
