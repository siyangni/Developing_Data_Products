library(plotly)

Sys.setenv("plotly_username" = 'freeyang')
Sys.setenv("plotly_api_key" = 'uCkqfcOKfTlPTQPZ2ImI')

## Verify Setting

plotly:::verify('username')
plotly:::verify('api_key')


# A simple Example

data(mtcars)

p <- with(mtcars,plot_ly(data=mtcars, x = hp, y = mpg,
        mode = "markers",
        color = wt,
        text = paste('Weight:', wt)
        ))

api_create(p, filename = "r-docs-mtcars")

# Plotly with ggplot2

library(ggplot2)

g = ggplot(mtcars, aes(x=wt, y=mpg))
g = g + geom_point(aes(color=factor(cyl)))
ggplotly(g)

# An interactive 3D Plot

data("volcano")

## Show a static 3D Plot in R
persp(z=volcano)

## Show the dynamic 3D Plot in Plotly 
plot_ly(z=volcano, type='surface')











