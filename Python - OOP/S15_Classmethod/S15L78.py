class Person:
 
    def show_details(cls):
        print(f'Running from {cls.__name__} class.')
        
    show_details = classmethod(show_details)
 
 
Person.show_details()