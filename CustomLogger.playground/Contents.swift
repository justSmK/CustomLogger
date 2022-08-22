import UIKit

enum Log {
    static func debug(
        _ data: @autoclosure () -> Any?,
        file: String = #file,
        line: UInt = #line
    ) {
        
    }
    
    static func error(
        _ data: @autoclosure () -> Any?,
        file: String = #file,
        line: UInt = #line
    ) {
        
    }
}

Log.debug(Data())
Log.error("Error")
