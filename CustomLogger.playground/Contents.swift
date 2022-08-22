import UIKit

enum Log {
    static func debug(
        _ data: @autoclosure () -> Any?,
        file: String = #file,
        line: UInt = #line
    ) {
        print("\n\n[DEBUG][START]: \(String(describing: data() ?? "nil")) \n\n[FILE]: \(extractFileName(from: file)) \n[LINE]: \(line) \n[END]\n")
    }
    
    static func error(
        _ data: @autoclosure () -> Any?,
        file: String = #file,
        line: UInt = #line
    ) {
        print("\n\n[ERROR][START]: \(String(describing: data() ?? "nil")) \n\n[FILE]: \(extractFileName(from: file)) \n[LINE]: \(line) \n[END]\n")
    }
    
    private static func extractFileName(from path: String) -> String {
        return path.components(separatedBy: "/").last ?? ""
    }
}

Log.debug(Date())
Log.error("Error")

