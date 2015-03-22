shinyUI(pageWithSidebar(
headerPanel('US Violent Crime Arrest k-means clustering'),
sidebarPanel(
  selectInput('xcol', 'Variable for X axis', names(USArrests)),
  selectInput('ycol', 'Variable for Y axis', names(USArrests),
              selected=names(USArrests)[[2]]),
  numericInput('clusters', 'Cluster count', 3,
               min = 1, max = 12),
  hr(),
  helpText("This data set contains statistics, in arrests per 100,000 residents for assault, murder, and rape in each of the 50 US states in 1973")
),
mainPanel(
  plotOutput('plot1'),
  
  hr(),
  h3("How to use Application"),
  helpText(" Select the Violent Crime in the dropdown for Variable X to run k-means cluster"),
  helpText(" Select the Violent Crime in the dropdown for Variable Y to run k-means cluster"),
  helpText(" Click on the arrow(s) Up or Down to select the Cluster Count required"),
  helpText(" Server will return Plot with a X over the Cluster of data based on the selected criteria")
)
))