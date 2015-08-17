egauge=function(value,mini=0,maxi=100,radius=80, axis_width=20,
                startAngle=225,endAngle=-45,
                center=c(50,50),name='Gauge',splitNumber=5){
  center=paste0(center,'%')
  radius=paste0(radius,'%')
  gaugex = list(
    tooltip =list(
      formatter= "{a} <br/>{b} : {c}"
    ),
    toolbox= list(
      show = TRUE,
      feature = list(
        mark = list(show= TRUE),
        restore = list(show= TRUE),
        saveAsImage= list(show= TRUE)
      )
    ),
    series = list(
      list(
        name='YA',
        type='gauge',
        center = center,
        radius = radius,
        min=mini,
        max=maxi,
        startAngle=startAngle,
        endAngle=endAngle,
        splitNumber=splitNumber,
        axisLine=list(
          lineStyle=list(
            width= axis_width
          )
        ),
        axisTick=list(
          length=axis_width+6,
          lineStyle=list(
            color='auto'
          )
        ),
        #     axisLabel=list(
        #       formatter=JS("function(v){
        #         switch (v + '') {
        #           case '0' : return 'H';
        #           case '25' : return 'Water';
        #           case '50' : return 'C';
        #         }
        #       }"
        #                    )
        #     ),
        splitLine=list(
          length=axis_width+10,
          lineStyle=list(
            color='auto'
          )
        ),
        pointer=list(
          width=10
        ),
#         title=list(
#           offsetCenter=c('0%','0%')
#         ),
        data=list(list(value= value, name= name))
      )
    )
  )

  echart(gaugex)
}
