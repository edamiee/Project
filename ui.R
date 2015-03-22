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
  plotOutput('plot1')
)
))