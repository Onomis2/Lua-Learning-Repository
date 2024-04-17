local iron = {} local nickel = {} local silicon = {} local cobalt = {} local platinum = {}
local loadbar = {} local ore = 0
local processing = true local progress = 0 local i = 0 local percent = 0 local total = 0

function Wait(seconds)
    local start = os.time()
    repeat until os.time() > start + seconds
end

function ProcessOre(metal)
    io.write("\nProcessing:")
    if metal[ore] > 0 then
        metal.total = metal.total or metal[ore]
        local progress = metal.progress or 0
        local percent = math.ceil(progress / metal.total * 100)
        progress = progress + 1
        metal[ore] = metal[ore] - 1
        metal.progress = progress

        for i = 1, math.min(math.ceil(progress / metal.total * 10), 10) do
            io.write("#")
        end

        io.write(("-"):rep(10 - math.min(math.ceil(progress / metal.total * 10), 10)))
        io.write(percent, "%")
    else
        io.write("##########100% Finished!")
        metal.processing = false
    end
end

function InitialiseLoadbar(metal)
    metal[loadbar] = {}
    metal.processing = true
    for j = 1, 10 do
        metal[loadbar][j] = "-" 
    end
end

print("Input iron ore")
iron[ore] = tonumber(io.read())
print("Input nickel ore")
nickel[ore] = tonumber(io.read())
print("Input silicon ore")
silicon[ore] = tonumber(io.read())
print("Input cobalt ore")
cobalt[ore] = tonumber(io.read())
print("Input platinum ore")
platinum[ore] = tonumber(io.read())

InitialiseLoadbar(iron)
InitialiseLoadbar(nickel)
InitialiseLoadbar(silicon)
InitialiseLoadbar(cobalt)
InitialiseLoadbar(platinum)

while iron.processing == true or nickel.processing == true or silicon.processing == true or cobalt.processing == true or platinum.processing == true do
    os.execute("cls")
    ProcessOre(iron)
    ProcessOre(nickel)
    ProcessOre(silicon)
    ProcessOre(cobalt)
    ProcessOre(platinum)
    Wait(0.1)
end