# library(stringi)
# library(tidyverse)
# 
# tibble(
#   index = seq(from = 1, to = 100, by = 1),
#   var1 = rnorm(n = 100, mean = 5, sd = 1),
#   var2 = stri_rand_strings(n = 100, length = 5),
#   var3 = stri_rand_strings(n = 100, length = 5)
# ) %>% 
#   mutate(var1 = round(var1, 1)) %>% 
#   write_csv('~/Desktop/delimitedA.csv')

matrix <- tibble::tibble(
  date = lubridate::now() + runif(1e3) * 86400,
  cat1 = sample(letters, 1e3, replace = TRUE),
  var1 = runif(1e3),
  cat2 = sample(letters, 1e3, replace = TRUE),
  var2 = runif(1e3)
)

readr::write_csv(x = matrix, file = "matrix.csv")
writexl::write_xlsx(x = matrix, path = "matrix.xlsx")
