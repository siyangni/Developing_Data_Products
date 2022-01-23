library(googleVis)
library(tidyverse)

m = aggregate(mpg ~ cyl, mean, data = mtcars) %>% 
  transform(cyl = as.character(cyl))

g = gvisGauge(m,
              labelvar = 'cyl',
              options=list(min=0, max=45,
                           greenFrom=30, greenTo=45,
                           yellowFrom=20, yellowTo=30,
                           redFrom=0, redTo=20,
                           width=400, height=300
                           )
              )

plot(g)
