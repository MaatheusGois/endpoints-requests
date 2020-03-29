import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Endpoints_RequestsTests.allTests),
    ]
}
#endif
