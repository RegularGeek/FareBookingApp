class FareCalculator {
    static let baseFare: Double = 5.0
    static let dummyDistance: Double = 10.0

    static func calculateFare(for multiplier: Double) -> Double {
        return baseFare * dummyDistance * multiplier
    }
}
