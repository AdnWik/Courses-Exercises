class CustomDict(dict):

    def is_any_str_value(self):
        flag = False
        for value in self.values():
            if isinstance(value, str):
                flag = True
                break
        return flag



cd = CustomDict(python='mid')
print(cd.is_any_str_value())
