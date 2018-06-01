# Loading packages
library(tidyverse)

#The mpg dataframe
mpg

?mpg

#first plot
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

# ggplot() creates a coordinate system that you can add layers to. Its first argument
# is the dataset to use in the graph.

# you complete your graph by adding one or more layers to ggplot(), using geom functions.
# each geom function takes a mapping argument, which defines how variables in your 
# dataset are mapped to visual properties. The mapping argument is always paired 
# with aes(), and the x and y arguments of aes() specify which variables to map 
# to the x and y axes. ggplot2 looks for the mapped variable in the data argument.

# A Graphing Template:

# ggplot(data = <DATA>) +
#   <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))

# EXERCISES

# How many rows are in mtcars? How many columns?
nrow(mtcars)
ncol(mtcars)

glimpse(mtcars)

# plots

ggplot(data = mpg) +
  geom_point(mapping = aes(x = hwy, y = cyl))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = class, y = drv))

#### Aesthetic Mappings ####

# An aesthetic is a visual property of the objects in your plot. 
# Aesthetics include things like the size, the shape, or the color of your points.
# You can display a point (like the one below) in different ways by 
# changing the values of its aesthetic properties.

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

# To map an aesthetic to a variable, associate the name of the aesthetic 
# to the name of the variable inside aes(). ggplot2 will automatically assign a 
# unique level of the aesthetic (here a unique color) to each unique value of the
# variable, a process known as scaling. ggplot2 will also add a legend that explains
# which levels correspond to which values.

# In the above example, we mapped class to the color aesthetic, but we could have
# mapped class to the size aesthetic in the same way. In this case, the exact size
# of each point would reveal its class affiliation. We get a warning here, because
# mapping an unordered variable (class) to an ordered aesthetic (size) is not a good idea.

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

# Or we could have mapped class to the alpha aesthetic, which controls the
# transparency of the points, or the shape of the points.

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

# (quais são os "aesthetics" de cada geom function??)

# You can also set the aesthetic properties of your geom manually. For example, 
# we can make all of the points in our plot blue:

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

# To set an aesthetic manually, set the aesthetic by name as an argument of your 
# geom function; i.e. it goes outside of aes(). You’ll need to pick a value that 
# makes sense for that aesthetic:
  
# The name of a color as a character string.
# The size of a point in mm.
# The shape of a point as a number.

