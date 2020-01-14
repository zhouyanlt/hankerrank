-- https://www.hackerrank.com/challenges/sock-merchant/problem

-- Complete the sockMerchant function below.
function sockMerchant(n, ar)
    local m = {}
    local num = 0
    for _, v in ipairs(ar) do
        if m[v] then
            m[v] = false
            num = num + 1
        else
            m[v] = true
        end
    end
    return num
end