public struct SwiftLogger {
    
    static public func info(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        Log.log(str, logLevel: .info, shouldLogContext: shouldLogContext, file: file, function: function, line: line)
    }
    
    static public func warning(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        Log.log(str, logLevel: .warning, shouldLogContext: shouldLogContext, file: file, function: function, line: line)
    }
    
    static public func error(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        Log.log(str, logLevel: .error, shouldLogContext: shouldLogContext, file: file, function: function, line: line)
    }
}
