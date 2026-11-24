extension Acoustics {
    /// A mass that strikes through a contact that stiffens as it is pressed: a drumstick, a mallet, a hammer.
    public struct Striker: Hashable, Sendable {
        /// What moves with the striker.
        public var mass: Mass.Value<Double>
        /// The felt, leather or wood it presses with: no force until pressed, then F₀ (δ / δ₀)^α.
        public var contact: Contact

        public init(mass: Mass.Value<Double>, contact: Contact) {
            self.mass = mass
            self.contact = contact
        }
    }
}
