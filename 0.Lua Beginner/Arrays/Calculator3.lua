local num = {}
local result
local operator

print("Enter an operator")
operator = io.read()
if operator ~= "+" and operator ~= "-" and operator ~= "*" and operator ~= "/" and operator ~= "%" then
    print("Please enter a valid operator (+, -, *, / or %)")
    return
end
print("Enter number 1")
num[1] = tonumber(io.read())
print("Enter number 2")
num[2] = tonumber(io.read())
if operator == "+" then
    result = num[1] + num[2]
elseif operator == "-" then
    result = num[1] - num[2]
elseif operator == "*" then
    result = num[1] * num[2]
elseif operator == "/" then
    result = num[1] / num[2]
elseif operator == "%" then
    result = num[1] % num[2]
end
print("The result is: ", result)
