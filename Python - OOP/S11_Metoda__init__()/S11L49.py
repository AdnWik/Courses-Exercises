class Car:

    def __init__(self, brand, model, price, type_of_car=None):
        self.brand = brand
        self.model = model
        self.price = price
        self.type_of_car = type_of_car if type_of_car else 'sedan'


car = Car('BMW', 'X3', 200000, 'SUV')
print(car.__dict__)