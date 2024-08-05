-- Where a is an array of integers
-- Returns the integer in the array that is closest to zero
-- @param a: An array of integers.
-- @return: An integer.
local function solution(a)
    print("Array: ", table.concat(a, ", "))
    local closest = a[1]
    for i = 2, #a do
        if math.abs(a[i]) < math.abs(closest) then
            closest = a[i]
        end
    end
    return closest
end

print("--- Result: ", solution({ -1, 2, 3, -4, 5 }))    -- -1
print("--- Result: ", solution({ -1, 2, 3, -4, 5, 0 })) -- 0
print("--- Result: ", solution({ 2, 3, -4, 5, -3, 1 })) -- 1

-- Time: O(n)
-- Space: O(1)
-- Source: https://www.bigocalc.com/
