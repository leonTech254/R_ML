library(caret)
library(ggplot2)

# Load the mtcars dataset
data(mtcars)



head(mtcars)




library(ggplot2) 
ggplot(mtcars, aes(x=factor(cyl))) + 
  geom_bar() + 
  xlab("Number of Cylinders") + 
  ylab("Frequency")



ggplot(mtcars, aes(x=factor(cyl))) + 
  geom_bar(fill="blue", color="black") + 
  xlab("Number of Cylinders") + 
  ylab("Frequency") + 
  theme_minimal()



ggplot(mtcars, aes(x=mpg)) + 
  geom_histogram(binwidth=5) + 
  xlab("Miles Per Gallon") + 
  ylab("Frequency")



ggplot(mtcars, aes(x=mpg)) + 
  geom_histogram(fill="purple", alpha=0.7, binwidth=5) + 
  xlab("Miles Per Gallon") + 
  ylab("Frequency") + 
  theme_bw()


ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_line() + 
  xlab("Weight") + 
  ylab("Miles Per Gallon")


ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_line(color="orange", size=1.5) + 
  xlab("Weight") + 
  ylab("Miles Per Gallon") + 
  theme_dark()




ggplot(mtcars, aes(x=hp, y=mpg)) + 
  geom_point() + 
  xlab("Horsepower") + 
  ylab("Miles Per Gallon")




ggplot(mtcars, aes(x=hp, y=mpg)) + 
  geom_point(color="red", size=4, shape=2) + 
  xlab("Horsepower") + 
  ylab("Miles Per Gallon") + 
  theme_classic()



ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_area(aes(fill=factor(cyl))) + 
  xlab("Weight") + 
  ylab("Miles Per Gallon")



ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_area(aes(fill=factor(cyl)), alpha=0.5) + 
  scale_fill_brewer(palette="Dark2") + 
  xlab("Weight") + 
  ylab("Miles Per Gallon") + 
  theme_minimal()
