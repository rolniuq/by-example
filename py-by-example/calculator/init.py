first = input("Input first number: ")
second = input("Input second number: ")

print("Menu")
print("1. Add")
print("2. Subtract")
print("3. Multiply")
print("4. Divide")

choose = input("Choose: ")


class Calculator:
    def __init__(self, first, second):
        self.first = first
        self.second = second

    def add(self):
        return int(self.first) + int(self.second)

    def sub(self):
        return int(self.first) - int(self.second)

    def mul(self):
        return int(self.first) * int(self.second)

    def div(self):
        return int(self.first) / int(self.second)


c = Calculator(first, second)
if choose == "1":
    print(c.add())
elif choose == "2":
    print(c.sub())
elif choose == "3":
    print(c.mul())
elif choose == "4":
    print(c.div())
