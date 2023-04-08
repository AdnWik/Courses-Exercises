class Person:

    def __init__(self, first_name, last_name, age) -> None:
        self.first_name = first_name
        self.last_name = last_name
        self.age = age


class Department:
    pass


class Worker(Person, Department):
    pass


worker = Worker('John', 'Doe', 30)
print(worker.__dict__)
