class StringListOnly(list):

    def append(self, value):
        if not isinstance(value, str):
            raise TypeError('Only objects of type str can be added to the list.')
        super().append(value)


sl = StringListOnly()
sl.append('Data')
sl.append('Science')
print(sl)
