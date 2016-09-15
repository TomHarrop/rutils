#' GenerateMessage
#'
#' Print a message to stdout with the date and \code{message.text}
#'
#' @param \code{message.text} The text to print
#'
#' @export

GenerateMessage <- function(message.text){
  message(paste0("[ ", date(), " ]: ", message.text))
}
