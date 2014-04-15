myfunction <- function() {
      x <- rnorm(100)
      mean(x)
}

noise <- function(x) {
   x + rnorm(length(x))
}