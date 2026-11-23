# swift-acoustics-striker

Use this package when something is struck by a mass on a felt that stiffens as it is pressed: a drumstick, a mallet, a hammer. Start from `Acoustics.Striker`; swift-acoustics-resonator strikes its resonances with one.

## Laws

- A stroke: `strike(with:at:)` puts a striker at the surface, moving into it at a speed. While it presses, its force is stiffness × compression to the power of its exponent, and zero when it does not; the force of each step is the change in the felt's stored energy over the change in compression across two steps, found by 64 halvings, so the same stroke gives the same samples everywhere. When the striker has left the surface and moves away it is gone, `struck` is false, and it takes its motion with it.
