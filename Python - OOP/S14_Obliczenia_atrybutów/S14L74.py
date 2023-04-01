import math


class Circle:

    def __init__(self, radius):
        self.radius = radius
        self._area = None



    @property
    def radius(self):
        return self._radius

    @radius.setter
    def radius(self, value):
        self._radius = value
        self._area = None

    @property
    def area(self):
        if self._area is None:
            self._area = math.pi * self.radius ** 2
        return self._area
        

circle = Circle(3)
print(f'{circle.area:.4f}')