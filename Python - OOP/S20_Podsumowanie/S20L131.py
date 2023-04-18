class Point:

    def __init__(self, x, y):
        self.x = x 
        self.y = y

    def __repr__(self):
        return f"Point(x={self.x}, y={self.y})"
    
    def reset(self):
        self.x = 0
        self.y = 0


point = Point(4, 2)
print(point)
point.reset()
print(point)