# load renv package
library(renv)

# initialize renv lock and create renv folder
renv::init()

# install packages via renv
renv::install(c("tidyverse","GGally"))

# load Iris dataset
data(iris)

# explore dataset
head(iris)
summary(iris)
str(iris)

# load tidyverse and GGally packages
library(tidyverse)
library(GGally)

# make renv snapshot
renv::snapshot()

#data manipulation
#converts the dataset into a tibble object, which is easier to
#handle than data.frames
iris <-as_tibble(iris)

# explore dataset
iris

# plot column pairs using color for distinguish species column
ggpairs(iris, aes(color=Species))

# add plot to an object
pair_plot<-ggpairs(iris, aes(color=Species))

# print plot in a .pdf
ggsave("ggpairs_iris.pdf", plot = pair_plot, width = 10, height = 10)

# make renv snapshot
renv::snapshot()
