## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE
)
library(tidyverse)
theme_set(theme_dark())
library(speakr)

## ----speakr, eval=FALSE-------------------------------------------------------
#  library(speakr)

## ----basic--------------------------------------------------------------------
#  # The sound file.
#  wav <- system.file("extdata", "vowels.wav", package = "speakr")
#  
#  praat_plot("vowels.png", wav, end = 3, tg = FALSE)

## ----tg-----------------------------------------------------------------------
#  praat_plot("vowels-tg.png", wav, end = 3, tg = NULL)

## ----tg-f0--------------------------------------------------------------------
#  praat_plot("vowels-tg-f0.png", wav, end = 3, tg = NULL, f0 = TRUE)

