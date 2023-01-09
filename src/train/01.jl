# Training 01: map nums to letters

alphabet = 'a':'z'
keys = range(1, length(alphabet))
cypher = Dict(keys .=> alphabet) # <- broadcasts the dict mapper :) 

input = (5, 24, 3, 5, 12, 12, 5, 14, 20) 

# index an array out of dict
ans_train_01 = map(x -> getindex(cypher, x), input) |> join

