class TechStack:

    def __init__(self, tech_names) -> None:
        self._tech_names = tech_names

    @property
    def tech_names(self):
        return self._tech_names
    
    @tech_names.setter
    def tech_names(self, values):
        self._tech_names = values

    @tech_names.deleter
    def tech_names(self):
        del self._tech_names


tech_stack = TechStack('python,java,sql')
print(tech_stack.tech_names)
tech_stack.tech_names = 'python,sql'
print(tech_stack.tech_names)
del tech_stack.tech_names
print(tech_stack.__dict__)