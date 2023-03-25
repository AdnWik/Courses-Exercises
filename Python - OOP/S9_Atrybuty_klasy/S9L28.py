class Laptop:
    brand = 'Lenovo'
    model = 'ThinkPad'


setattr(Laptop, 'brand', 'Acer')
setattr(Laptop, 'model', 'Predator')

print(f'brand: {Laptop.brand}')
print(f'model: {Laptop.model}')