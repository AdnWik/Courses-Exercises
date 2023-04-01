class Rectangle:

    def __init__(self, width, height) -> None:
        self._width = width
        self._height = height
        self._area = None

    @property
    def width(self):
        return self._width
    
    @width.setter
    def width(self, value):
        self._width = value
        self._area = None

    @property
    def height(self):
        return self._height
    
    @height.setter
    def height(self, value):
        self._height = value
        self._area = None

    @property
    def area(self):
        if self._area is None:
            self._area = self._width * self._height
        return self._area
    

rectangle = Rectangle(3, 4)
print(f'width: {rectangle.width}, '
      f'height: {rectangle.height}'
      f' -> area: {rectangle.area}'
      )