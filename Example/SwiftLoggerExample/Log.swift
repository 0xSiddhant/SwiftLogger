//
//  Log.swift
//  SwiftLoggerExample
//
//  Created by Siddhant Kumar on 28/09/23.
//

import Foundation
import SwiftLogger

struct Log {
    private init() { }
    
    static public func info(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        SwiftLogger.info(str, shouldLogContext: shouldLogContext, file: file, function: function, line: line)
    }
    
    static public func warning(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        SwiftLogger.warning(str, shouldLogContext: shouldLogContext, file: file, function: function, line: line)
    }
    
    static public func error(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        SwiftLogger.error(str, shouldLogContext: shouldLogContext, file: file, function: function, line: line)
    }
}
