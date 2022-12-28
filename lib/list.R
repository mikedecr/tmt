#' @export
first = function(x) utils::head(x, 1)

#' @export
last = function(x) utils::tail(x, 1)

#' @export
rest = function(x) utils::tail(x, -1)

#' @export
index = function(x, ix) x[ix]

