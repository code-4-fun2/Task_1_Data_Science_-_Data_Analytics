data_load <-  read.csv("http://bit.ly/w-data")  
head(data_load)
data_load
ggplot(data_load,aes(Hours,Scores))+
  geom_point()+
  labs(title = "Marks Vs Study Hours",
       x = "Hours Studied",
       y = "Marks Percentage")


ggplot(data_load,aes(Hours,Scores))+
  geom_point()+
  labs(title = "Regression Plot",
       x = "Hours Studied",
       y = "Marks Percentage")+
  geom_smooth(method = 'lm')

a<-data.frame(Hours=9.25)
result<-predict(linear,a)
print(result)