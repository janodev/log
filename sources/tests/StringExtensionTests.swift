@testable import Log
import XCTest

class StringExtensionTests: XCTestCase
{
    func testResizeString()
    {
        XCTAssertEqual("123".resizeString(newLength: 3), "123")
        XCTAssertEqual("123".resizeString(newLength: 2), "1…")
        XCTAssertEqual("123".resizeString(newLength: 1), "…")
        XCTAssertEqual("123".resizeString(newLength: 0), "")
    }

    func testTruncatedWithEllipsis()
    {
        XCTAssertEqual("123".truncatedWithEllipsis(newLength: 3), "123")
        XCTAssertEqual("123".truncatedWithEllipsis(newLength: 2), "1…")
        XCTAssertEqual("123".truncatedWithEllipsis(newLength: 1), "…")
        XCTAssertEqual("123".truncatedWithEllipsis(newLength: 0), "")
    }

    func testPadLeft() {
        XCTAssertEqual("1".padLeft(newLength: 0), "1", "It should return the same string when new length is same or smaller.")
        XCTAssertEqual("1".padLeft(newLength: 1), "1", "It should return the same string when new length is same or smaller.")
        XCTAssertEqual("1".padLeft(newLength: 2), " 1")
        XCTAssertEqual("1".padLeft(newLength: 3), "  1")
    }
}
