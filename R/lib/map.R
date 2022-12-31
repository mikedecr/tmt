
# make a named vector map of keys => values
map.define = function(from, to) {
    names(to) = from
    return(to)
}

# lookup in a 1-D indexed thing
map.get = function(map, key) {
    map[key]
}

# this one is weird because the keys are object and the map is the method
map.apply = function(key, map) {
    map[key]
}
