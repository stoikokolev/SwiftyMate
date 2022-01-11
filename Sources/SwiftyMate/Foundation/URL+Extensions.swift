//
//  URL+Extensions.swift
//  
//
//  Created by Stoyko Kolev on 11.01.22.
//

import Foundation

extension URL {
    
    /// Indicates if data is encrypted with a digital certificate.
    public var isSecured: Bool {
        scheme == "https"
    }
    
}
