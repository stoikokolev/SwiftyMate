//
//  UITableViewCell+Extensions.swift
//  
//
//  Created by Stoyko Kolev on 11.01.22.
//

import UIKit

extension UITableViewCell {
    
    /// Type name as string used to identify the reusable cell.
    public static var identifier: String {
        String(describing: self)
    }
    
}
