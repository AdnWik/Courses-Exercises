class Laptop:

    def __init__(self, brand, model, code, price, margin):
        self.brand = brand
        self._model = model
        self._code = code
        self.__price = price
        self.__margin = margin

    def display_protected_attrs(self):
        for attr in self.__dict__:
            if attr.startswith('_'):
                if not attr.startswith(f'_{self.__class__.__name__}__'):
                    print(attr)



laptop = Laptop('Acer', 'Predator', 'AC-100', 5490, 0.2)
laptop.display_protected_attrs()