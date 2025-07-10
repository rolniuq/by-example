NUMBER = 10

if NUMBER > 5:
    raise Exception("Greater than 5", NUMBER)
print(NUMBER)

try:
    print(NUMBER / 0)
except ZeroDivisionError:
    print("ZeroDivisionError")
