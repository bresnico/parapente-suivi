# import et préparer datas pour nourrir les posts du blog

library(tidyverse)
library(readxl)

# import raw data

d <- read_csv(file = "data/data.csv")

# Vecteur contenant les abréviations des mois

date_list <- c("janv.",
               "févr.",
               "mars",
               "avr.",
               "mai",
               "juin",
               "juil.",
               "août",
               "sept.",
               "oct.",
               "nov.","déc."
               )

# Fonction de remplacement des mois par les chiffres

replace_month <- function(x) {
  for (i in seq_along(date_list)) {
    x <- str_replace_all(x, fixed(date_list[i]), as.character(i))
  }
  return(x)
}

# Appliquer la fonction de remplacement à toutes les dates

d$Date <- replace_month(d$Date)

# transformer la variable en date.

d$Date <- dmy(d$Date)

# sortie

saveRDS(d, file = "data/data.rds")
