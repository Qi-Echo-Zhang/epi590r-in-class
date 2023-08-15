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
