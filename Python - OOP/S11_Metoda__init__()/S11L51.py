class Laptop:

    def __init__(self, brand, model, price):
        self.brand = brand
        self.model = model
        if isinstance(price, (int, float)) and price > 0:
            self.price = price
        else:
            raise TypeError('The price attribute must be a positive int or float.')
        

try:
    laptop = Laptop('Acer', 'Predator', '5490')
except TypeError as error:
    print(error)