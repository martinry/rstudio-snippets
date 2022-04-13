# Load common packages: plotting
snippet load_plotting
library(ggplot2)
library(viridis)
library(RColorBrewer)
library(plotly)

# Load common packages: data wrangling
snippet load_wrangling
library(stringr)
library(clipr)
library(dplyr)
library(data.table)
library(magrittr)

# Set WD to where script file is located
snippet swd
rstudioapi::getActiveDocumentContext()[["path"]] %>% sub(basename(.), "", .) %>% setwd %>% paste0(., " -> ", getwd()) %>% cat

# Use with clipr::read_clip to 'print out' a vector structure
# Example:
# myvct <- clipr::read_clip() # Read a copied vector/table
# sapply(myvct, FUN = function(x) paste0("'", x, "'"), USE.NAMES = F) %>%
#	paste0(., collapse = ',') %>% cat("c(", ., ")", sep = '')
# Produces:
# c("item1", "item2")
snippet dress
sapply(${0}, FUN = function(x) paste0("'", x, "'"), USE.NAMES = F) %>%
	paste0(., collapse = ',') %>% cat("c(", ., ")", sep = '')