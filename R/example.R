pieEx1 = list(
  title = list(
    text = 'Test',
    subtext = 'From d3.js',
    x = 'right',
    y = 'bottom'
  ),
  tooltip = list(
    trigger = 'item'
  ),
  toolbox = list(
    show = TRUE,
    feature = list(
      restore = list(show = TRUE),
      magicType = list(show = TRUE, type = c('pie', 'funnel')),
      saveAsImage = list(show = TRUE)
    )
  ),
  legend = list(
    x = 'left',
    data = c('group1', 'group2', 'group3', 'group4')
  ),
  series = list(
    list(
      type = 'pie',
      showScale = TRUE,
      showScaleText = TRUE,
      data = list(
        list(name = 'group1',value=10),
        list(name = 'group2',value=20),
        list(name = 'group3',value=5),
        list(name = 'group4',value=30)
      ),
      itemStyle = list(
        normal = list(
          label = list(show = FALSE)
        )
      )

    )
  )
    )
echart(pieEx1)
