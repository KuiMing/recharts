# library(recharts)
# pie chart
x=data.frame(name=c('a','b','c'),value=1:3)
echart(x,~name,~value,type='pie')

# candlestick chart
require(quantmod)
getSymbols("^TWII")
ecandlestick(TWII)
test=as.data.frame(TWII)
test$date=rownames(test)
ecandlestick(test,~TWII.Open,~TWII.Close,~TWII.Low,~TWII.High,~date)
