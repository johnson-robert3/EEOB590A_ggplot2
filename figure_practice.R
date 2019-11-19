#---
# Script for changing visual aesthetics of figures with ggplot2
# # For EEOB 590A course, Fall 2019
# by Robert Johnson
#---


# This script is meant as a continuation of the "mapping_practice.R" script
# This script will demonstrate various functions and ways to control different
# visual aspects of your ggplot figures. 


# load packages
library(tidyverse)   # the entire tidyverse (includes ggplot2)
library(cowplot)     # package for combining figures
library(maps)        # map data
library(mapdata)     # additional hi-res map data


# Italy map
italy = map_data("italy")

# data
sites = read_csv("example_data.csv")


# Manually change colors used for data point locations
windows()
ggplot() +
   # map
   geom_polygon(data = italy,
                aes(x = long, y = lat, group = group),
                fill = "gray60") +
   coord_quickmap() +
   # data points
   geom_point(data = sites,
              aes(x = long, y = lat, color = location),
              size=3) +
   # use a manual scale to specify your own options
   # the scale to use is based upon the aesthetic your set in the geom
   scale_color_manual(breaks = c("Italy", "Sardegna", "Sicilia"),
                      values = c("firebrick2", "seagreen3", "dodgerblue4")) +
   theme_classic()


# Manually change symbols used for data point locations
windows()
ggplot() +
   # map
   geom_polygon(data = italy,
                aes(x = long, y = lat, group = group),
                fill = "gray60") +
   coord_quickmap() +
   # data points
   geom_point(data = sites,
              aes(x = long, y = lat, shape = location),
              size=3) +
   # use a manual scale to specify your own options
   # the scale to use is based upon the aesthetic your set in the geom
   scale_shape_manual(breaks = c("Italy", "Sardegna", "Sicilia"),
                      values = c(21, 17, 19)) +
   theme_classic()


# Change aspects of the legend 
windows()
ggplot() +
   # map
   geom_polygon(data = italy,
                aes(x = long, y = lat, group = group),
                fill = "gray60") +
   coord_quickmap() +
   # data points
   geom_point(data = sites,
              aes(x = long, y = lat, color = location),
              size=3) +
   # manual scale
   scale_color_manual(breaks = c("Italy", "Sardegna", "Sicilia"),
                      values = c("firebrick2", "seagreen3", "dodgerblue4"),
                      # change the name of the legend
                      name = "Region",
                      # change the name of the individual labels
                      labels = c("italy", "sardinia", "sicily")) +
   theme_classic()


