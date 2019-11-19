#---
# Script for changing visual aesthetics of figures with ggplot2
# # For EEOB 590A course, Fall 2019
# by Robert Johnson
#---


# load packages
library(tidyverse)   # the entire tidyverse (includes ggplot2)
library(cowplot)     # package for combining figures
library(maps)        # map data
library(mapdata)     # additional hi-res map data


# Italy map
italy = map_data("italy")

# data
sites = read_csv("example_data.csv")


