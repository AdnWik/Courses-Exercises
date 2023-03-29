class Bucket():

    def __init__(self, **kwargs) -> None:
        for attr, value in kwargs.items():
            setattr(self, attr, value)

bucket = Bucket(apple= 3.5, milk= 2.5, juice= 4.9, water= 2.5)
print(bucket.__dict__)