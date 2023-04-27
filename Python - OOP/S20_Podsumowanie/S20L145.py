class StringListOnly(list):

    def append(self, value):
        if not isinstance(value, str):
            raise TypeError('Only objects of type str can be added to the list.')

        return super().append(value.lower())


slo = StringListOnly()
slo.append('Data')
slo.append('Science')
slo.append('Machine Learning')
print(slo)