import uuid


class Book:

    def __init__(self, title, author):
        self.book_id = self.get_id()
        self.title = title
        self.author = author

    def __repr__(self):
        return f"Book(title='{self.title}', author='{self.author}')"

    @staticmethod
    def get_id():
        return str(uuid.uuid4().fields[-1])[:6]

    def __str__(self) -> str:
        return (f'Book ID: {self.book_id} '
                f'| Title: {self.title} | Author: {self.author}'
                )


book = Book(title='The Lord of the Rings', author='J.R.R. Tolkien')
print(book)
