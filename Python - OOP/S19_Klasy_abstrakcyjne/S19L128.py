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

    
class DisabledTaxPayer(TaxPayer):

    def calculate_tax(self):
        return self.salary * 0.12


class WorkerTaxPayer(TaxPayer):

    def calculate_tax(self):
        salaryThreshold = 80000

        if self.salary < salaryThreshold:
            return self.salary * 0.17
        else:
            return salaryThreshold * 0.17 + (self.salary - salaryThreshold) * 0.32


worker1 = WorkerTaxPayer(70000)
print(worker1.calculate_tax())

worker2 = WorkerTaxPayer(95000)
print(worker2.calculate_tax())
