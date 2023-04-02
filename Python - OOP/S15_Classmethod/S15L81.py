class Person:

    instances = []

    def __init__(self) -> None:
        Person.instances.append(self)

    @classmethod
    def count_instances(cls):
        return len(Person.instances)
    

Person()
Person()
Person()

print(Person.count_instances())