import Raylib
import Foundation;

class Game {
    public static let spaceShipTexture = Raylib.loadTexture("Assets/Images/player.png")
    public static let bulletTexture = Raylib.loadTexture("Assets/Images/bullet.png")

    var entities: [Entity] = []

    let player = Player(position: Vector2(x: 100, y: 100))
    var playerFire: Bool = false
    var playerTimeFireTime: Float = 0.1
    var playerTimeFireCount: Float = 0

    init() {
        Raylib.setTextureFilter(Game.spaceShipTexture, TextureFilter.point)

        entities.append(player)
    }

    func update(_ delta: Float) {
        if Raylib.isMouseButtonDown(MouseButton.left) && playerFire {
            entities.append(Bullet(position: player.position, direction: (Raylib.getMousePosition() - player.position).normalized()))
            playerFire = false;
        }

        for entity in entities {
            entity.update(delta)
        }

        print(entities.count)

        for i in (0..<entities.count).reversed() {
            if !(entities[i] is Player) {
                if entities[i].position.x <= 0 || entities[i].position.x >= 960 || entities[i].position.y <= 0 || entities[i].position.y >= 540 {
                    entities.remove(at: i);
                }
            }
        }

        playerTimeFireCount += delta;

        if playerTimeFireCount >= playerTimeFireTime {
            playerFire = true
            playerTimeFireCount = 0;
        }
    }

    func draw() {
        for entity in entities {
            if entity is Player {
                continue
            }

            entity.draw()
        }

        player.draw() 
    }

    func dispose() {
        Raylib.unloadTexture(Game.spaceShipTexture)
    }
}