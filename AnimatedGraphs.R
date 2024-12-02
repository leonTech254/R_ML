anim_hist <- ggplot(mtcars, aes(x=mpg)) + 
  geom_histogram(binwidth=5) + 
  xlab("Miles Per Gallon") + ylab("Frequency") + 
  transition_states(cyl, transition_length = 2, state_length = 1) 

anim_save("animated_hist.gif", anim_hist)
