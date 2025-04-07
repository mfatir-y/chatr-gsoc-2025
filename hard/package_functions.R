#' @param package_name Character. The name of the R package to query.
#' @param model Character. The name of the Ollama model to use. Default is "llama3.2:3b".
#' @param temperature Numeric. Temperature setting for the model. Default is 0.2.
#'
#' @return Character vector of function names supposedly exported by the package.
#' @export
#'
#' @examples
#' \dontrun{
#' }
get_package_functions <- function(package_name, model = "llama3.2:3b") {
  if(missing(package_name) || !is.character(package_name) || length(package_name) != 1) {
    stop("Invalid package name")
  }

  prompt0 <- paste("You are an expert in R programming. List all the exported
  functions from the R package, ", package_name, ". Return only the function names without any
  explanation or additional text.")

  response <- ellmer::chat_ollama(
    model = model,
    system_prompt = prompt0
  )

  return(response$chat(''))
}
