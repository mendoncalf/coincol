box::use(
  shiny[bootstrapPage, div, moduleServer, NS, renderUI, tags, uiOutput],
)

box::use(app/view/home)
box::use(app/view/geral)
box::use(app/view/moedas)
box::use(app/view/cedulas)

#' @export
ui <- function(id) {
  ns <- NS(id)
  
  bs4Dash::dashboardPage(
    
    bs4Dash::dashboardHeader(title = "Coin Collection", titleWidth = 300),
    

    # -------------------------------------------------------------------------

    bs4Dash::dashboardSidebar(
      
      width = 300,
      
      bs4Dash::sidebarMenu(
        
        tags$style(
          htmltools::HTML(".sidebar-menu li a { font-size: 16px; }")),
        id = "tabs",
        
        bs4Dash::menuItem("Home",  tabName = "HM", icon =  shiny::icon('house')),
        
        bs4Dash::menuItem("Geral", tabName = 'GE', icon = shiny::icon("border-all")),
        
        bs4Dash::menuItem("Moedas", tabName = 'MO', icon = shiny::icon("coins")),
                          
        bs4Dash::menuItem("Cedulas",  tabName = "CE", icon = shiny::icon("money-bill"))
        
        )
      
    ),

    # -------------------------------------------------------------------------

    
    bs4Dash::dashboardBody(
      
      bs4Dash::tabItems(
        
        #--------------------------------------------------------------------------------
        
        
        
        
        #home
        bs4Dash::tabItem('HM',
                         home$ui(ns("hm"))
        ),
        
        bs4Dash::tabItem('GE',
                         geral$ui(ns("ge"))
        ),

        bs4Dash::tabItem('MO',
                         moedas$ui(ns("mo"))
        ),

        bs4Dash::tabItem('CE',
                         cedulas$ui(ns("ce"))
        )
      
        #--------------------------------------------------------------------------------
        
      ) # close TabItems
      
    )
    

    # -------------------------------------------------------------------------

    
    
    
    
  )
  
  # bootstrapPage(
  #   uiOutput(ns("message"))
  # )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    
    # output$message <- renderUI({
    #   div(
    #     style = "display: flex; justify-content: center; align-items: center; height: 100vh;",
    #     tags$h1(
    #       tags$a("Check out Rhino docs!", href = "https://appsilon.github.io/rhino/")
    #     )
    #   )
    # })
    
    
  })
}
