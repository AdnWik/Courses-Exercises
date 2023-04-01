class Person:

    def __init__(self, first_name, last_name) -> None:
        self._first_name = first_name
        self._last_name = last_name

    def get_first_name(self):
        return self._first_name
    
    def set_first_name(self, value):
        self._first_name = value

    def get_last_name(self):
        return self._last_name
    
    def set_last_name(self, value):
        self._last_name = value

    first_name = property(fget= get_first_name, fset= set_first_name)
    last_name = property(fget= get_last_name, fset= set_last_name)


person = Person('John', 'Dow')
print(person.first_name)
print(person.last_name)
person.first_name = 'Tom'
person.last_name = 'Smith'

print(person.__dict__)