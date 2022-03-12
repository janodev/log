@testable import Log
import XCTest

class LogFormatterTests: XCTestCase
{
    func testFormat() {
        let label = "tests"
        let message = "hello"
        let line: UInt = 10
        let string = FormattedMessage(
            label: label,
            level: Level.debug.icon(),
            message: message,
            file: #file,
            function: #function,
            line: line
        ).serialize()
        XCTAssert(string.contains("[\(label)]"))        // [tests]
        XCTAssert(string.contains("\(type(of: self))")) // PrintLoggerTests
        XCTAssert(string.contains("\(#function)"))      // testLabel()
        XCTAssert(string.contains("\(line)"))           // 10
        XCTAssert(string.contains(message))             // hello
    }
}
