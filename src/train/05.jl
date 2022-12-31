caesar_cypher = function(n)
    letters = 'a':'z'
    shifted = cat(last(letters, length(letters) - n), first(letters, n), dims = (1,))
    Dict(shifted .=> letters)
end

cypher = caesar_cypher(4)
cypher[' '] = ' '
cypher[','] = ','

input_chars = collect("zirm, zmhm, zmgm")

ans_train_05 = getindex.(Ref(cypher), input_chars) |> join
