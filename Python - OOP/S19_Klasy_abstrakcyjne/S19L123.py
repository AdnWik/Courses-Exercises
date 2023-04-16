from abc import ABC, abstractmethod


class Figure(ABC):

    @abstractmethod
    def area(self):
        pass


class Square(Figure):

    def __init__(self, a) -> None:
        self.a = a

    def area(self):
        return self.a**2


try:
    Figure()
except TypeError as error:
    print(error)
