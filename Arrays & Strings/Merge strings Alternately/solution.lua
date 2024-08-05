-- Merges a string with another string alternately.
-- @param word1: A string.
-- @param word2: A string.
-- @return: A string.

local function solution(word1, word2)
    print("Word 1: ", word1)
    print("Word 2: ", word2)
    local result = ""
    local i = 1
    while i <= #word1 or i <= #word2 do
        if i <= #word1 then
            result = result .. word1:sub(i, i)
        end
        if i <= #word2 then
            result = result .. word2:sub(i, i)
        end
        i = i + 1
    end
    return result
end

print("--- Result: ", solution("abc", "pqr")) -- apbqcr
print("--- Result: ", solution("ab", "pqrs")) -- apbqrs
print("--- Result: ", solution("abcd", "pq")) -- apbqcd


-- Time: O(max(n, m))
-- Space: O(max(n, m))
-- Source: https://www.bigocalc.com/
