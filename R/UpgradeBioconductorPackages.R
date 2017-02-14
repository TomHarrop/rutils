#' UpgradeBioconductorPackages
#'
#' Source and run \code{https://bioconductor.org/biocLite.R}.
#'
#' @export

UpgradeBioconductorPackages <- function(){
  if(!exists("biocLite")){
    # use an AU HTTP mirror (may download quicker)
    chooseBioCmirror(ind = 13)
    message("Sourcing biocLite()")
    source("https://bioconductor.org/biocLite.R")
  }
  message("Checking for updates to installed packages")
  biocLite()
}
