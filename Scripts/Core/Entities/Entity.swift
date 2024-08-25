import Raylib


class Entity : GameObject {
    internal var velocity: Vector2

    var Velocity: Vector2 {
        get {
            return velocity;
        }
    }

    init(position: Vector2, rotation: Float, scale: Float, velocity: Vector2 = Vector2.zero) {
        self.velocity = velocity
        
        super.init(position, rotation, scale)
    }

    func update(_ delta: Float) {
        position.x += velocity.x * delta
        position.y += velocity.y * delta
    }
}