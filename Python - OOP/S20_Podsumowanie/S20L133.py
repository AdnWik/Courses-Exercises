from datetime import datetime

class Note:

    def __init__(self, content):
        self.content = content
        self.creation_time = datetime.now().strftime('%m-%d-%Y %H:%M:%S')


note1 = Note('My first note')
note2 = Note('My second note')

print(note1.creation_time)
