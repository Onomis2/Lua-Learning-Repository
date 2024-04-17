local number = {}
local operator
local result
print("Enter operator (- or +)")
operator = io.read()
print("Enter number 1")
number[1] = io.read()
print("Enter number 2")
number[2] = io.read()
if operator == "-" then
    result = number[1] - number[2]
end
if operator == "+" then
    result = number[1] + number[2]
end
print(string.format("The result is: %d", result))
