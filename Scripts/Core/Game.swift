import Raylib

class Game {
    public static let spaceShipTexture = Raylib.loadTexture("Assets/Images/spaceship.png")

    let player = Player(position: Vector2(x: 100, y: 100))

    init() {
        Raylib.setTextureFilter(Game.spaceShipTexture, TextureFilter.point)
    }

    func update(_ delta: Float) {
        player.update(delta)
    }

    func draw() {
        player.draw()
    }

    func dispose() {
        
    }
}

