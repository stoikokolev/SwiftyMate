//
//  Character+Extensions.swift
//  
//
//  Created by Stoyko Kolev on 12.01.22.
//

import Foundation

extension Character {
    
    /// Checks if character is emoji.
    /// - Example
    /// ```
    /// Character("😀").isEmoji -> true
    /// ```
    public var isEmoji: Bool {
        guard let scalarValue = String(self).unicodeScalars.first?.value else { return false }
        
        switch scalarValue {
        case 0x1F600...0x1F64F, // Emoticons
            0x1F300...0x1F5FF, // Misc Symbols and Pictographs
            0x1F680...0x1F6FF, // Transport and Map
            0x1F1E6...0x1F1FF, // Regional country flags
            0x2600...0x26FF, // Misc symbols
            0x2700...0x27BF, // Dingbats
            0xE0020...0xE007F, // Tags
            0xFE00...0xFE0F, // Variation Selectors
            0x1F900...0x1F9FF, // Supplemental Symbols and Pictographs
            127_000...127_600, // Various asian characters
            65024...65039, // Variation selector
            9100...9300, // Misc items
            8400...8447: // Combining Diacritical Marks for Symbols
            return true
        default:
            return false
        }
    }
    
}
