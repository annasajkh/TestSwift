import Raylib
import Foundation;

Raylib.initWindow(960, 540, "TestSwift")
Raylib.setTargetFPS(60)


let game = Game()

while Raylib.windowShouldClose == false {
    game.update(Raylib.getFrameTime())
    

    Raylib.beginDrawing()
    Raylib.clearBackground(.black)

    game.draw()

    Raylib.endDrawing()
}

game.dispose()

Raylib.closeWindow()