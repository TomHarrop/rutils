#' GitSessionInfo
#'
#' Get session info with git branch and hash and system date.
#'
#' @return Character vector for printing to a logfile, e.g. with
#'   \code{writeLines}
#'
#' @export

GitSessionInfo <- function() {
  sInf <- c(paste("git branch:", system("git rev-parse --abbrev-ref HEAD",
                                        intern = TRUE)),
            paste("git hash:", system("git rev-parse HEAD", intern = TRUE)),
            paste("date:", date()),
            capture.output(sessionInfo()))
  return(sInf)
}
