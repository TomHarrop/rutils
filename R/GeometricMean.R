#' GeometricMean
#'
#' Take the geometric mean of a numerical vector. Stolen from
#' \code{http://stackoverflow.com/a/25555105/3017012}.
#'
#' @param x Numerical vector
#' @param na.rm Remove NA values from x
#' @param zero.propagate Propagate zeroes from x
#'
#' @return Numeric: geometrical mean of x
#'
#' @export

GeometricMean <- function(x, na.rm = TRUE, zero.propagate = FALSE){
  if(any(x < 0, na.rm = TRUE)){
    return(NaN)
  }
  if(zero.propagate){
    if(any(x == 0, na.rm = TRUE)){
      return(0)
    }
    exp(mean(log(x), na.rm = na.rm))
  } else {
    exp(sum(log(x[x > 0]), na.rm=na.rm) / length(x))
  }
}
