
ecandlestick=function(data,open=NULL,close=NULL,high=NULL,low=NULL,date=NULL,title=""){

  if (class(data)[1]=='xts' & class(data)[2]=='zoo'){
    data1=data[,c(1,4,3,2)]
    date1= rownames(as.data.frame(data))
  } else{
    open = evalFormula(open, data)
    close = evalFormula(close, data)
    high= evalFormula(high, data)
    low= evalFormula(low, data)
    data1=cbind(open,close,high,low)
    date1= evalFormula(date, data)
  }

  k1 = list(
    title = list(
      text = title,
      x = 'center',
      y = 'top'
    ),
    tooltip = list(
      trigger = 'axis',
      formatter = JS("function (params) {
                     var res = params[0].seriesName + ' ' + params[0].name;
                     res += '<br/>open : ' + params[0].value[0] + '<br/>high : ' + params[0].value[3];
                     res += '<br/>close : ' + params[0].value[1] + '<br/>low : ' + params[0].value[2];
                     return res;
}")
  ),
  toolbox = list(
    show = TRUE,
    feature = list(
      restore = list(show = TRUE),
      dataZoom = list(show=TRUE),
      saveAsImage = list(show = TRUE)
    )
  ),

  dataZoom =list(
    show =TRUE,
    realtime=TRUE,
    start = 50,
    end = 100
  ),

  xAxis=list(
    type = 'category',
    boundaryGap = TRUE,
    axisTick=list( onGap=FALSE),
    splitLine=list(show=FALSE),
    data = date1
  ),
  yAxis =list(
    type='value',
    scale=TRUE,
    boundaryGap=c(0.01, 0.01)
  ),
  series = list(
    list(
      type = 'k',
      data = data1
    )
  )
      )
  echart(k1)
}







