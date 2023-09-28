//
//  File.swift
//  
//
//  Created by Siddhant Kumar on 28/09/23.
//

import Foundation

enum Log {
    enum LogLevel {
        case info,
        warning,
        error
        
        fileprivate var prefix: String {
            switch self {
            case .info:
                return "INFO"
            case .warning:
                return "WARN ⚠️"
            case .error:
                return "ALERT ❌"
            }
        }
    }
    
    struct Context {
        let file: String
        let function: String
        let line: Int
        
        var description: String {
            return "\((file as NSString).lastPathComponent):\(line) \(function)"
        }
    }
    
    fileprivate static func handleLog(level: LogLevel, str: String, shouldLogContext: Bool, context: Context) {
        var logComponents = ["[\(level.prefix)]", " -> \(str)"]
        if shouldLogContext {
            logComponents.insert("\(context.description)", at: 1)
        }
        
        #if DEBUG
        print(logComponents.joined(separator: " "))
        #endif
    }
    
    static public func log(_ str: StaticString, logLevel: Log.LogLevel, shouldLogContext: Bool , file: String, function: String, line: Int) {
        let context = Context(file: file, function: function, line: line)
        Log.handleLog(level: logLevel, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }
}
