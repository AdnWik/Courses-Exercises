class Person:

    def __init__(self, name, age):
        self.name = name
        self.age = age


people = [Person('Tom', 25), Person('John', 29),
          Person('Mike', 27), Person('Alice', 19)]

for person in sorted(people, key=lambda person: person.age):
    print(f'{person.name} -> {person.age}')
