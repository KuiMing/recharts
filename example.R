# library(recharts)
x=data.frame(name=c('a','b','c'),value=1:3)
echart(x,~name,~value,type='pie')
