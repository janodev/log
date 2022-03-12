@testable import Log
import XCTest

class PrintLoggerTests: XCTestCase
{
    func testTrace() {
        let log = PrintLogger(label: "tests", threshold: .debug)
        log.trace("\(XCTFail("When log threshold is smaller log messages shouldn’t resolve."))")
    }
    
    func testDebug() {
        let log = PrintLogger(label: "tests", threshold: .info)
        log.debug("\(XCTFail("When log threshold is smaller log messages shouldn’t resolve."))")
    }

    func testInfo() {
        let log = PrintLogger(label: "tests", threshold: .warning)
        log.info("\(XCTFail("When log threshold is smaller log messages shouldn’t resolve."))")
    }

    func testError() {
        let log = PrintLogger(label: "tests", threshold: .none)
        log.error("\(XCTFail("When level is none log messages shouldn’t resolve."))")
    }
}
