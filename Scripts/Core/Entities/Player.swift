import Raylib

class Player : Entity {
    internal var speed = 250
    
    init(position: Vector2) {
        super.init(position:  position, rotation: 0, scale: 3)
    }

    override func update(_ delta: Float) {
        var direction = Vector2.zero

        if Raylib.isKeyDown(KeyboardKey.letterA) {
            direction.x = -1
        } else if Raylib.isKeyDown(KeyboardKey.letterD) {
            direction.x = 1
        }

        if Raylib.isKeyDown(KeyboardKey.letterW) {
            direction.y = -1
        } else if Raylib.isKeyDown(KeyboardKey.letterS) {
            direction.y = 1
        }

        velocity = direction.normalized() * Vector2(x: Float(speed),y: Float(speed))

        let mouseDir = (Raylib.getMousePosition() - position).normalized()

        rotation =  -mouseDir.angle(Vector2(x: 1, y: 0)) * (180 / Float.pi) + 90

        super.update(delta);
    }

    override func draw() {
        Raylib.drawTexturePro(Game.spaceShipTexture, 
                              Rectangle(x: 0, y: 0, width: Float(Game.spaceShipTexture.width), height: Float(Game.spaceShipTexture.height)), 
                              Rectangle(x: position.x, y: position.y, width: Float(Game.spaceShipTexture.width) * scale, height: Float(Game.spaceShipTexture.height) * scale), 
                              Vector2(x: Float(Game.spaceShipTexture.width) * scale / 2, y: Float(Game.spaceShipTexture.height) * scale / 2), 
                              rotation, 
                              Color.white)
    }

}