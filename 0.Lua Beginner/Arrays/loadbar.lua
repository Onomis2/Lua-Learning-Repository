function Wait(seconds)
    local start = os.time()
    repeat until os.time() > start + seconds
    end
local percent = 0
local things = {}
local ask = true
local i = 1
local total
local progress = 0
local loadbar = {}
for j=0,10 do
    loadbar[j] = "-"
end
while ask == true do
    print("Add a thing to process. Type 'process' when you want the added things to be processed.")
    things[i] = io.read()
    if things[i] == "process" then
        ask = false
        total = i
    end
    i = i + 1
end
i = 1
while things[i] == "process" do
    print(things[i], "Added to process queue")
    i = i + 1
end
for i=1,total do
    progress = i / total * 10
    percent = progress
    progress = math.ceil(progress)
    if progress > 0 then
        for i=1,progress do
            loadbar[i] = "#"
        end
    end
    os.execute("cls")
    for i=1,10 do
        io.write(loadbar[i])
    end
    io.write((percent * 10), "%")
    if things[i] == "process" then
        io.write("\nSuccesfully processed all ", total, " things!")
    end
    Wait(1)
end