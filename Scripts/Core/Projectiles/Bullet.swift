import Raylib

class Bullet : Projectile {
    init(position: Vector2, direction: Vector2) {
        super.init(position: position, speed: 1000, scale: 1, direction: direction)
    }

    override func draw() {
        Raylib.drawTexturePro(Game.bulletTexture, 
                              Rectangle(x: 0, y: 0, width: Float(Game.bulletTexture.width), height: Float(Game.bulletTexture.height)), 
                              Rectangle(x: position.x, y: position.y, width: Float(Game.bulletTexture.width) * scale, height: Float(Game.bulletTexture.height) * scale), 
                              Vector2(x: Float(Game.bulletTexture.width) * scale / 2, y: Float(Game.bulletTexture.height) * scale / 2), 
                              rotation - 45, 
                              Color.white)
    }

}