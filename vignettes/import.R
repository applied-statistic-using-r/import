## ---- eval = FALSE-------------------------------------------------------
#  library(PackageA)
#  library(PackageB)
#  
#  value1 <- function_a(...) # Supposedly this comes from PackageA,
#  value2 <- function_b(...) # and this from PackageB, but who knows?!
#  ...

## ---- eval = FALSE-------------------------------------------------------
#  function_a <- PackageA::function_a
#  function_b <- PackageB::function_b

## ---- eval = FALSE-------------------------------------------------------
#  import::from(magrittr, "%>%")
#  import::from(dplyr, mutate, keep_when = filter)
#  import::from(tidyr, spread)
#  import::from(broom, tidy)
#  
#  ready_data <-
#    raw_data %>%
#    mutate(var2 = fun(var1)) %>%
#    keep_when(var1 > 0) %>%
#    spread(key, value)
#  
#  linear_model <-
#    lm(var1 ~ ., data = ready_data) %>%
#    tidy
#  
#  # ... and more code below.

## ---- eval = FALSE-------------------------------------------------------
#  import::from(dplyr, mutate, select, .into = "wrangling")
#  
#  # or equivalently:
#  import::into("wrangling", mutate, select, .from = dplyr)
#  
#  ls("wrangling") # Also viewable in Rstudio's environment browser!
#  # => [1] "mutate" "select"

## ---- eval=FALSE---------------------------------------------------------
#  # File: foo.R
#  # Desc: Functionality related to foos.
#  # Imports from other_resources.R
#  import::here(fun_a, fun_b, .from = "other_resources.R")
#  
#  internal_fun <- function(...) ...
#  
#  fun_c <- function(...)
#  {
#    ...
#    a <- fun_a(...)
#    i <- internal_fun(...)
#    ...
#  }
#  
#  fun_d <- function(...) ...

## ---- eval = FALSE-------------------------------------------------------
#  # File: bar.R
#  # Desc: Functionality related to bars.
#  # Imports from foo.R
#  import::here(fun_c, .from = "foo.R")
#  ...

