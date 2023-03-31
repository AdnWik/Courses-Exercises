class Laptop:

    def __init__(self, price):
        self._price = price

    def get_price(self):
        return self._price
    
    def set_price(self, value):
        if isinstance(value, (int, float)):
            if value > 0:
                self._price = value
            else:
                raise ValueError('The price attribute must be a positive int or float value.')
        else:
            raise TypeError('The price attribute must be an int or float type.')
        

laptop = Laptop(3499)
try:
    laptop.set_price('-3000')
except TypeError or ValueError as error:
    print(error)