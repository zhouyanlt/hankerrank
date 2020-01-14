

--
-- Complete the 'gradingStudents' function below.
--
-- The function is expected to return an INTEGER_ARRAY.
-- The function accepts INTEGER_ARRAY grades as parameter.
--

local function processOne(grade)
    if grade < 38 then
        return grade
    else
        local remainder = grade % 5
        if remainder >= 3 then
            return grade + (5-remainder)
        else
            return grade
        end
    end
end

function gradingStudents(grades)
    local ret = {}
    for _, grade in ipairs(grades) do
        table.insert(ret, processOne(grade))
    end
    return ret
end