from abc import ABC, abstractmethod


class TaxPayer(ABC):

    def __init__(self, salary) -> None:
        self.salary = salary

    @abstractmethod
    def calculate_tax(self):
        pass
