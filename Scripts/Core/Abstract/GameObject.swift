import Raylib

class GameObject {
    internal var position: Vector2
    internal var rotation: Float
    internal var scale: Float

    var Position: Vector2 {
        get {
            return position;
        }
    }

    var Rotation: Float {
        get {
            return rotation;
        }
    }

    var Scale: Float {
        get {
            return scale;
        }
    }

    init(_ position: Vector2,_ rotation: Float,_ scale: Float) {
        self.position = position;
        self.rotation = rotation;
        self.scale = scale;
    } 
}