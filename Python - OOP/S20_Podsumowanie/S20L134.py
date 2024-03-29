import datetime


class Note:
    def __init__(self, content):
        self.content = content
        self.creation_time = datetime.datetime.now().strftime(
            '%m-%d-%Y %H:%M:%S'
        )

    def find(self, word):
        if word in self.content:
            return True
        else:
            return False

note1 = Note('Object Oriented Programming in Python.')
print(note1.find('python'))
print(note1.find('Python'))
