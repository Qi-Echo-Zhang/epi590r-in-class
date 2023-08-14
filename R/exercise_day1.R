# R bootcamp day 1

# part 1: git
install.packages("usethis")

usethis::use_git_config(user.name = 'Qi Zhang', user.email = 'qzha223@emory.edu')

# run in console only once
## set access token (password)
usethis::create_github_token()
gitcreds::gitcreds_set() ## copy the password

# part 2: here()
library(here)
setwd(here())
getwd()
setwd("data")
here()
