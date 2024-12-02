library(ggplot2) 
library(gganimate) 
anim_bar <- ggplot(mtcars, aes(x=factor(cyl), fill=factor(gear))) + 
  geom_bar() + 
  xlab("Number of Cylinders") + 
  ylab("Frequency") + transition_states(gear, transition_length = 2, state_length = 1) 

anim_save("animated_bar.gif", anim_bar)
