import uuid


class Product:
    def __init__(self, product_name, price):
        self.product_id = self.get_id()
        self.product_name = product_name
        self.price = price

    def __repr__(self):
        return f"Product(product_name='{self.product_name}', price={self.price})"

    @staticmethod
    def get_id():
        return str(uuid.uuid4().fields[-1])[:6]


class Warehouse:
    def __init__(self):
        self.products = []
    
    def add_product(self, product_name, price):
        product = Product(product_name, price)
        print(len(self.products))
        if len(self.products) != 0:
            add_flag = 0
            for _ in self.products:
                print(f'{product_name} -> {_.product_name}')
                if product_name != _.product_name:
                    add_flag = 1
            print(add_flag)
            if add_flag == 1:
                self.products.append(product)
        else:
            self.products.append(product)


warehouse = Warehouse()
warehouse.add_product('Laptop', 3900.0)
warehouse.add_product('Mobile Phone', 1990.0)
warehouse.add_product('Mobile Phone', 1990.0)
print(warehouse.products)
