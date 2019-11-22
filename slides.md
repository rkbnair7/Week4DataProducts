slides
========================================================
author: Rad Nair
date: 11/22/2019
autosize: true

Page 1
========================================================

For more details on authoring R presentations please visit <https://support.rstudio.com/hc/en-us/articles/200486468>.

Week 4 - Final Project

Instructions:

1. Shiny application with supporting documentation.

2. Deployment of the application on Rstudio's shiny server

3. Share the link of application 

4. Share your server.R and ui.R code on github



Page 2
=========================================================
Application usage instructions


The Hurricane factor chart will be visible on selection of the items from factors dropdown at the left panel.

The application is running on https://rkbnair.shinyapps.io/Week4Project/


ui.R, and Server.R Code in my github repository (https://github.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx)



Page 3
========================================================


```r
setwd("C:\\DS\\wk4")
Hrs <- read.csv("./Hurricanes.csv")

head(Hrs)
```

```
  Years Air.Pressure Sea.Surface.Temperature Tropical.Wind Ocean.Moisture
1  2000           11                      77             5              3
2  2001            2                      79             4              4
3  2002            3                      80             6              2
4  2003            4                      85             4              1
5  2004            5                      90             4              4
6  2005            6                      60             4              5
  Category
1        3
2        4
3        5
4        6
5        5
6        4
```

Page 4
========================================================

![plot of chunk unnamed-chunk-2](slides-figure/unnamed-chunk-2-1.png)

Page 5
========================================================

Summary

The Reproducible Pitch Presentation

A web page using Rstudio Presenter is created with with this html5 slide deck.





