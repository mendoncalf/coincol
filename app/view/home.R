box::use(
  shiny[h3, moduleServer, NS],
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  
  shiny::tagList(
    
    h3(htmltools::HTML("<center>Bem Vindo ao shiny Dashboard da colecao de moedas e cedulas</center>")),
    
    htmltools::HTML("<br><br>"),
    
    h3(htmltools::HTML("<center>Desenvolvido por Leandro Mendonca</center>"))
    
  )
  
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    
  })
}