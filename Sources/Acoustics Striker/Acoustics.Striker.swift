internal import Numeric

extension Acoustics {
    public struct Striker: Hashable, Sendable {
        public var mass: Double
        public var stiffness: Double
        public var exponent: Double

        public init(mass: Double, stiffness: Double, exponent: Double) {
            self.mass = mass
            self.stiffness = stiffness
            self.exponent = exponent
        }
    }
}

extension Acoustics.Striker {
    public func force(pressed compression: Double) -> Double {
        compression > 0 ? stiffness * Double.math.pow(compression, exponent) : 0
    }

    public func energy(pressed compression: Double) -> Double {
        compression > 0 ? stiffness / (exponent + 1) * Double.math.pow(compression, exponent + 1) : 0
    }
}
