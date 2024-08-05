-- Takes a string of Roman numerals and converts it to an integer.
-- @param s: A string.
-- @return: An integer.
local function solution(s)
    print("Roman Numerals: ", s)
    local roman = {
        ["I"] = 1,
        ["V"] = 5,
        ["X"] = 10,
        ["L"] = 50,
        ["C"] = 100,
        ["D"] = 500,
        ["M"] = 1000
    }
    local result = 0
    local prev = 0
    for i = #s, 1, -1 do
        local current = roman[s:sub(i, i)]
        if current < prev then
            result = result - current
        else
            result = result + current
        end
        prev = current
    end
    return result
end

print("--- Result: ", solution("III"))     -- 3
print("--- Result: ", solution("IV"))      -- 4
print("--- Result: ", solution("IX"))      -- 9
print("--- Result: ", solution("LVIII"))   -- 58
print("--- Result: ", solution("MCMXCIV")) -- 1994

-- Time: O(n)
-- Space: O(1)
-- Source: https://www.bigocalc.com/
