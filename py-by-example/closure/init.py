x = "awesome"


def change():
    x = "cool"


change()

print(x)  # awesome
# answer: why is x still awesome?
# answer: because the variable x is global
