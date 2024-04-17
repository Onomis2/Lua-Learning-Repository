local number
local result
number = {}
print("Enter number 1")
number[1] = io.read()
print("Enter number 2")
number[2] = io.read()
result = number[1] + number[2]
print(string.format("The result is: %d", result))
