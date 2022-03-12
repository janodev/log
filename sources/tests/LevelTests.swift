@testable import Log
import XCTest

class LevelTests: XCTestCase
{
    func testComparable() {
        XCTAssert(Level.trace < Level.debug)
        XCTAssert(Level.debug < Level.info)
        XCTAssert(Level.warning < Level.error)
        XCTAssert(Level.error < Level.none)
    }

    func testEquality() {
        XCTAssert(Level.trace == Level.trace)
        XCTAssert(Level.debug == Level.debug)
        XCTAssert(Level.info == Level.info)
        XCTAssert(Level.warning == Level.warning)
        XCTAssert(Level.error == Level.error)
        XCTAssert(Level.none == Level.none)
    }
}
