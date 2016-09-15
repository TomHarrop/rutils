#' PrintF
#'
#' Implementation of \code{bash}-like \code{printf}. Wrapper to \code{sprintf}
#' that prints to \code{stderr}.
#'
#' @param \code{...} Passed to \code{sprintf}
#'
#' @return Character vector
#'
#' @export

PrintF <- function(...) {
  cat(sprintf(...), file = stderr())
}
