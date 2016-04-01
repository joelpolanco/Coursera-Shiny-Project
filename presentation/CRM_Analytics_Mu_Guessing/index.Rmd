---
title       : Developing Data Products Project
subtitle    : CRM Analytics Graph
author      : Joel Polanco
job         : Analyst
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Read-And-Delete

1. Edit YAML front matter
2. Write using R Markdown
3. Use an empty line followed by three dashes to separate slides!

--- .class #id 

## Background

Selected a CRM Analytics Example that looks at CD Sales Data in 1997
Code Pre-processes data in global.R file
The app represents the distribution of sales amounts and allows the user to explore mean sales values

--- .class #id 

## App Instructions

goto: https://joelpolanco.shinyapps.io/Project/
move slider along axis to display single bar, guess mu and associated MSE

--- .class #id 

## Code Example

The ui.R code captures User input for different types of workouts as numeric values.

#shinyUI(pageWithSidebar(  
#  headerPanel("Example plot"),  
#  sidebarPanel(    
#    sliderInput('mu', 'Guess at the mu',value = 70, min = 60, max = 80, step = 0.05,)  ), 
#  mainPanel(    
#    plotOutput('myHist')  
#  )
#))


--- .class #id 

## Reference

1. http://www.jimnovo.com/Customer-Latency.htm
2. http://rjmetrics.com/metrics/repeat-purchase-rate
3. Drilling Down - Turning Customer Data into Profits with a Spreadsheet, Jim Novo, 2004
4. http://www.dataapple.net/?p=114

