# --------------------------------------------------
#  Utilities to parse hints 
# --------------------------------------------------

box::use(./list[...])
box::use(./decode[...])
box::use(stats[setNames])

# create a map that shifts letters one position.
# spaces are preserved as spaces (I guess...)

shifted_letters = letters |> setNames(c(rest(letters), first(letters)))

#' @export
hinter = c(' ' = ' ', shifted_letters)

# wrap in a function
# single string -> vector -> decoded vector -> string

# ----- tests ----------

stopifnot(hinter[c('b', 'c', 'd')] == c('a', 'b', 'c'))
stopifnot(decode_string('bcd', hinter) == 'abc')

