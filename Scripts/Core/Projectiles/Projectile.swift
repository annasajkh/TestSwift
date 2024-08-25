import Raylib

class Projectile : Entity {
    internal var direction: Vector2
    internal var speed: Float
    
    init(position: Vector2, speed: Float, scale: Float, direction: Vector2) {
        self.direction = direction
        self.speed = speed

        super.init(position: position, rotation: -direction.angle(Vector2(x: 1, y: 0)) * (180 / Float.pi) + 90, scale: scale, velocity: direction * Vector2(x: speed, y: speed))
    }
}