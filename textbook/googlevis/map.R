suppressPackageStartupMessages(library(googleVis))
library(datasets)

stateDF = data.frame(State=state.name, state.x77)

gchart = gvisGeoChart(data=stateDF,
                      locationvar = 'State',
                      colorvar = 'Population',
                      options = list(region='US',
                                     displayMode='regions',
                                     resolution='provinces',
                                     width=600, height=400
                        
                      ))

plot(gchart)
