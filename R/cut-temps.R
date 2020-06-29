cut_temps <- function(x) {
  # fct_collapse will give a warning for values that aren't in the vector
  # turn off warnings
  org_warn <- getOption("warn")
  options(warn = -1)
  
  if (!is.vector(x)) {
    stop(call. = FALSE,
         "x is not a vector")
  }
  
  x <- round(x, digits = 0)
  
  x <- as.factor(x)
  
  x <- forcats::fct_collapse(
    x,
    "(-100,-6]" = as.character(seq(-100, -6)),
    "(-6,-3]"   = as.character(seq(-6, -3)),
    "(-3,0]"    = as.character(seq(-3, 0)),
    "(0,3]"     = as.character(seq(0, 3)),
    "(3,6]"     = as.character(seq(3, 6)),
    "(6,9]"     = as.character(seq(6, 9)),
    "(9,12]"    = as.character(seq(9, 12)),
    "(12,15]"   = as.character(seq(12, 15)),
    "(15,18]"   = as.character(seq(15, 18)),
    "(18,21]"   = as.character(seq(18, 21)),
    "(21,24]"   = as.character(seq(21, 24)),
    "(24,27]"   = as.character(seq(24, 27)),
    "(27,30]"   = as.character(seq(27, 30)),
    "(30,33]"   = as.character(seq(30, 33)),
    "(33,36]"   = as.character(seq(33, 36)),
    "(36,39]"   = as.character(seq(36, 39)),
    "(39,42]"   = as.character(seq(39, 42)),
    "(42,45]"   = as.character(seq(42, 45)),
    "(45,100]"  = as.character(seq(45, 100))
  )
  
  # turn warnings back on
  options(warn = org_warn)
  
  return(x)
}
