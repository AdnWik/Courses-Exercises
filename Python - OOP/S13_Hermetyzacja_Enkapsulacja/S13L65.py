class Pet:

    def __init__(self, name) -> None:
        self._name = name

    @property
    def name(self):
        return self._name
    

pet = Pet('Max')
print(pet.__dict__)