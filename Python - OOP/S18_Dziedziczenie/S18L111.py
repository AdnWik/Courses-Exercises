class Vehicle:

    def __init__(self, brand, color, year):
        self.brand = brand
        self.color = color
        self.year = year


class Car(Vehicle):

    def __init__(self, brand, color, year, horsepower):
        self.brand = brand
        self.color = color
        self.year = year
        self.horsepower = horsepower


vehicle1 = Vehicle('Tesla', 'red', 2020)
car1 = Car('Tesla', 'red', 2020, 300)

print(vehicle1.__dict__)
print(car1.__dict__)
