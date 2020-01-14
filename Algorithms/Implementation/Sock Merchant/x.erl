% delete list element
% return deleted num
deleteListElem([],Elem) -> 0;
deleteListElem([Elem|T],Elem) ->
    deleteListElem(T) + 1;
deleteListElem([H|T],Elem) ->
    deleteListElem(T).

% Complete the sockMerchant function below.
% [1,2,1,2,1,3,2]
sockMerchant(_, []) -> [];
sockMerchant(_, [H|T]) ->