import Acoustics_Striker
import Testing

enum `Acoustics.Striker Tests` {}

extension `Acoustics.Striker Tests` {
    @Suite struct Felt {}
}

extension `Acoustics.Striker Tests`.Felt {
    @Test func `A striker keeps the mass and felt it is made with`() {
        let felt = Acoustics.Striker(mass: 0.02, stiffness: 1e7, exponent: 2.5)
        #expect(felt.mass == 0.02)
    }
}
