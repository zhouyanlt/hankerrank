
%
% Complete the 'gradingStudents' function below.
%
% The function is expected to return an INTEGER_ARRAY.
% The function accepts INTEGER_ARRAY grades as parameter.
%
processOne(Grade) when Grade < 38 -> Grade;
processOne(Grade) ->
    Remainder = Grade rem 5,
    if
        Remainder >= 3 ->
            Grade + (5-Remainder);
        true ->
            Grade
    end.

gradingStudents([]) -> [];
gradingStudents([Grade|Rest]) ->
    processOne(Grade) ++ gradingStudents(Rest).
