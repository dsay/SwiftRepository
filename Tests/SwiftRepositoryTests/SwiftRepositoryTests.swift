import XCTest
@testable import SwiftRepository

final class SwiftRepositoryTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SwiftRepository().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
