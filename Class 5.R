#Feed Forward 
#Back Propagation


TKS = c(20,10,30,20,80,30)
CSS = c(90,20,40,50,50,80)
Placed = c(1,0,0,0,1,1)
df = data.frame(TKS, CSS, Placed)

#load library

require(neuralnet)
nn = neuralnet(Placed~TKS+CSS, data=df, hidden = 3, act.fct="logistic", linear.output=FALSE)
plot(nn)

nn_backprop1<- neuralnet(Placed~TKS+CSS, data=df, hidden = 3, algorithm = "backprop", learningrate = 0.0001)
plot(nn_backprop1)

nn6= neuralnet(Placed~TKS+CSS, data=df, hidden = 3, act.fct = "logistic", linear.output = FALSE)
plot(nn6)

