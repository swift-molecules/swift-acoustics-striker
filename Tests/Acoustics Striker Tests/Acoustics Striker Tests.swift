import Acoustics_Striker
import Testing

enum `Acoustics.Striker Tests` {}

extension `Acoustics.Striker Tests` {
    @Suite struct Felt {}
}

extension `Acoustics.Striker Tests`.Felt {
    @Test func `A striker keeps the mass and contact it is made with`() {
        let contact = Contact(pushing: Force.newtons(2.0), at: Space.Physical.metres(0.0009765625), exponent: 2.5)
        let felt = Acoustics.Striker(mass: Mass.kilograms(0.02), contact: contact)
        #expect(felt.mass == Mass.kilograms(0.02))
        #expect(felt.contact == contact)
    }
}
