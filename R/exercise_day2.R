install.packages("renv")
renv::init() # only run once in the console to start using renv in the current project

install.packages("hadley/emo")
emo::ji("banana")
emo::ji("apple")

# make sure the project picks up the package as a dependency
renv::status()
# update the lockfile
renv::snapshot()

# remove packages that are no longer used
renv::clean()

# part 2: writing functions
# start out with a number to test
x <- 3
# you'll want your function to return this number
x^2
square <- function(x) {
 x*x
}
# test it out
square(x)
square(53)
53^2 # does this match?

# raise to any power
raise <- function(x, power) {
  y = 1
 for (i in 1:power) {
 	y = y*x
 }
  return(y)
}

# test with
raise(x = 2, power = 4)
# should give you
2^4

# Change your raise() function to default to squaring x
# when the user doesn’t enter a value for power
raise <- function(x, power=2) {
	y = 1
	for (i in 1:power) {
		y = y*x
	}
	return(y)
}
# test
raise(x = 5)
# should give you
5^2
