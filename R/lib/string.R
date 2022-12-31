# easy string concatenation
#' @export
str.concat = function(data, sep = '') base::paste0(data, collapse = sep)

# explode string into chars
#' @export
str.chars = function(data) {
    base::strsplit(data, split = '')[[1]]
}

#' @export
str.index = function(data, ix) {
    str.chars(data)[ix]
}

