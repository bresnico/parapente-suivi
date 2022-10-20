# import et préparer datas pour nourrir les posts du blog

# load packages

library(tidyverse)

# import raw data

d <- read_csv(file = "data/data.csv")

saveRDS(d, file = "data/data.rds")
