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
                return "ℹ️"
            case .warning:
                return "⚠️"
            case .error:
                return "❌"
            }
        }
    }
    
    struct Context {
        let file: String
        let function: String
        let line: Int
        
        var description: String {
            return "[\((file as NSString).lastPathComponent):\(line) \(function)] "
        }
    }
    
    static fileprivate var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd hh:mm:ss"
        formatter.locale = Locale.current
        formatter.timeZone = TimeZone.current
        return formatter
    }
    
    fileprivate static func handleLog(level: LogLevel, str: String, shouldLogContext: Bool, context: Context) {
        var logComponents = [Date().toString(), "[\(level.prefix)]"]
        if shouldLogContext {
            logComponents.insert("\(context.description)", at: 1)
        }
        logComponents.append(" -> \(str)")
        
        #if DEBUG
        print(logComponents.joined(separator: " "))
        #endif
    }
    
    static public func log(_ str: StaticString, logLevel: Log.LogLevel, shouldLogContext: Bool , file: String, function: String, line: Int) {
        let context = Context(file: file, function: function, line: line)
        Log.handleLog(level: logLevel, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }
}

internal extension Date {
    func toString() -> String {
        return Log.dateFormatter.string(from: self as Date)
    }
}
