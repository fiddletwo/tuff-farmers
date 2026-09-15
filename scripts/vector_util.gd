class_name VectorUtil

static func expDecay(a: Vector2, b: Vector2, decay: int, dt: float) -> Vector2:
    return b + (a - b) * exp(-decay * dt)
