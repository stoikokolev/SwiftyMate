//
//  Date+Extensions..swift
//  
//
//  Created by Stoyko Kolev on 11.01.22.
//

import Foundation

extension Date {
    
    /// Difference between `self` and `otherDate` in days.
    /// - Parameter otherDate: Date to compare with `self`
    /// - Returns: The result of calculating the difference from `self` to `otherDate` in days.
    public func days(between otherDate: Date) -> Int {
        let calendar = Calendar.current
        let startOfSelf = calendar.startOfDay(for: self)
        let startOfOther = calendar.startOfDay(for: otherDate)
        let components = calendar.dateComponents([.day], from: startOfSelf, to: startOfOther)
        
        return abs(components.day ?? .zero)
    }
    
}
