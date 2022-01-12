//
//  DispatchQueue+Extensions.swift
//  
//
//  Created by Stoyko Kolev on 12.01.22.
//

import Dispatch

extension DispatchQueue {
    
    /// Runs passed closure asynchronous after certain time interval.
    /// - Parameters:
    ///   - delay: The time interval after which the closure will run.
    ///   - qos: Quality of service at which the work item should be executed.
    ///   - flags: Flags that control the execution environment of the work item.
    ///   - work: The closure to run after certain time interval.
    /// - Example
    /// ```
    /// DispatchQueue.main.asyncAfter(delay: 2) {
    ///     print("Don't need to use deadline: now() + 2.")
    /// }
    /// ```
    public func asyncAfter(delay: Double,
                           qos: DispatchQoS = .unspecified,
                           flags: DispatchWorkItemFlags = [],
                           execute work: @escaping () -> Void) {
        asyncAfter(deadline: .now() + delay, qos: qos, flags: flags, execute: work)
    }
    
}
