class Vector():

    def __init__(self, *components) -> None:
        self.components = components


v1 = Vector(1,2)
v2 = Vector(4,5,2)

print(f'v1 -> {v1.components}')
print(f'v2 -> {v2.components}')