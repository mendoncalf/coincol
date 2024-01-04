box::use(
  shiny[h3, moduleServer, NS],
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  
  shiny::tagList(
    
   
    
    htmltools::HTML("Geral"),
    

    
  )
  
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    
  })
}