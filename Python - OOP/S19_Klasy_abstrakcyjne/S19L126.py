from abc import ABC, abstractmethod


class TaxPayer(ABC):

    def __init__(self, salary):
        self.salary = salary

    @abstractmethod
    def calculate_tax(self):
        pass


class StudentTaxPayer(TaxPayer):

    def calculate_tax(self):
        return self.salary * 0.15


student = StudentTaxPayer(40000)
print(student.calculate_tax())
