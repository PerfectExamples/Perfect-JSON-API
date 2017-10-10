import XCTest
@testable import Perfect_JSON_API

class Perfect_JSON_APITests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(Perfect_JSON_API().text, "Hello, World!")
    }


    static var allTests : [(String, (Perfect_JSON_APITests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
