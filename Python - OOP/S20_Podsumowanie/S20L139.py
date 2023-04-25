class Client:

    all_clients = []

    def __init__(self, name, email) -> None:
        self.name = name
        self.email = email
        Client.all_clients.append(self)

    def __repr__(self) -> str:
        return f"{self.__class__.__name__}(name='{self.name}', email='{self.email}')"


client1 = Client('Tom', 'sample@gmail.com')
client2 = Client('Donald', 'sales@yahoo.com')
client3 = Client('Mike', 'sales-contact@yahoo.com')

print(Client.all_clients)
