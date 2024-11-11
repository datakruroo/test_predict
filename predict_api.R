library(tidyverse)
library(tidymodels)

model <- readRDS("glmnet_model.rds")
v <- vetiver_model(model, "my_glmnet_model")

pr <- pr() %>% 
  vetiver_api(v, debug = TRUE)
