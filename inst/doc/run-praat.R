## ----setup, echo=FALSE, include=FALSE-----------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(tidyverse)
theme_set(theme_dark())
library(speakr)

## ----speakr, eval=FALSE-------------------------------------------------------
#  library(speakr)

## ----run, eval=FALSE----------------------------------------------------------
#  script <- system.file("extdata", "play-greetings.praat", package = "speakr")
#  
#  praat_run(script)

## ----run-file, eval=FALSE-----------------------------------------------------
#  script <- system.file("extdata", "get-formants.praat", package = "speakr")
#  
#  praat_run(script)

## ----run-capt, eval=FALSE-----------------------------------------------------
#  script <- system.file("extdata", "get-formants-capt.praat", package = "speakr")
#  
#  # Output to R console
#  praat_run(script)

## ----echo=FALSE---------------------------------------------------------------
# Need this because code is not run in the vignette, since it relies on external software (Praat).
formants <- read_lines(system.file("extdata", "formants.csv", package = "speakr"))
cat(formants)

## ----run-capt-var, eval=FALSE-------------------------------------------------
#  # Output to R variable
#  formants <- praat_run(script, capture = TRUE)
#  cat(formants)

## ----echo=FALSE---------------------------------------------------------------
# Need this because code is not run in the vignette, since it relies on external software (Praat).
cat(formants)

## ----run-capt-tbl, eval=FALSE-------------------------------------------------
#  library(tidyverse)
#  # Output to R tibble
#  formants <- praat_run(script, capture = TRUE) %>%
#    read_csv()
#  class(formants)
#  glimpse(formants)

## ----echo=FALSE---------------------------------------------------------------
# Need this because code is not run in the vignette, since it relies on external software (Praat).
f_tbl <- read_csv(formants)
class(f_tbl)
glimpse(f_tbl)

## ----run-args, eval=FALSE-----------------------------------------------------
#  script <- system.file("extdata", "get-formants-args.praat", package = "speakr")
#  
#  unit = "Bark"
#  window = 0.02
#  
#  f_bark <- praat_run(script, unit, window, capture = TRUE) %>%
#    read_csv()
#  attr(f_bark, "args") <- list(unit = unit, window = window)

## ----echo=FALSE---------------------------------------------------------------
# Need this because code is not run in the vignette, since it relies on external software (Praat).
f_bark <- read_csv(system.file("extdata", "formants-bark.csv", package = "speakr"))

## ----f-bark-------------------------------------------------------------------
f_bark

## ----f-bark-plot--------------------------------------------------------------
f_bark %>%
  ggplot(aes(F2, F1, label = vowel)) +
  geom_label(size = 10) +
  labs(
    title = "Vowel plot",
    x = "F2 (Bark)",
    y = "F1 (Bark)"
  ) +
  scale_x_reverse(position = "top", limits = c(14, 7)) +
  scale_y_reverse(position = "right", limits = c(8, 2))

