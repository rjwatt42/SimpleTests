progressBarH<-function(i,n=100,message='') {
  
  outer<-data.frame(x=c(10,10,500,500,10),y=c(10,40,40,10,10))
  inner<-data.frame(x=c(10,10,500*i/n,500*i/n,10),y=c(10,40,40,10,10))
  
  points1<-' points="'
  for (i in 1:nrow(outer))  {
    points1<-paste0(points1,' ',format(outer$x[i]),',',format(outer$y[i]))
  }
  points1<-paste0(points1,'"')
  
  points2<-' points="'
  for (i in 1:nrow(inner))  {
    points2<-paste0(points2,' ',format(inner$x[i]),',',format(inner$y[i]))
  }
  points2<-paste0(points2,'"')
  
  output<-paste0('<div>',
                 '<svg width=520 height=50 style="background-color: transparent;margin: auto;padding:0;"  xmlns="http://www.w3.org/2000/svg">',
                 '<polyline',points1,'fill="#FFFFFF" stroke="#000000" fill-opacity="1" stroke-width="0.5" stroke-opacity="1" />',
                 '<polyline',points2,'fill="#999999" stroke="#999999" fill-opacity="1" stroke-width="0.5" stroke-opacity="1" />',
                 '</div>',
                 '<div>',message,'</div>'
  )
}