import XCTest
@testable import FareBookingApp

class FareCalculatorTests: XCTestCase {
    func testFareCalculation() {
        let fare = FareCalculator.calculateFare(for: 2.0)
        XCTAssertEqual(fare, 100.0)
    }
}
