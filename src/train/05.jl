caesar_cypher = function(n)
    letters = 'a':'z'
    shifted = cat(last(letters, length(letters) - n), first(letters, n), dims = (1,))
    Dict(shifted .=> letters)
end

cypher = caesar_cypher(4)
cypher[' '] = ' '
cypher[','] = ','

input = "zirm, zmhm, zmgm"
input_chars = collect(input)

# a partial function...
index_cypher = x -> getindex(cypher, x)
ans_train_05 = map(index_cypher, input_chars) |> join

