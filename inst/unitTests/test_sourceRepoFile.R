## TESTING FOR sourceRepoFile METHOD
#####

unitTestSourceRepoFile <- function(){
  ## MAKE SURE THIS FUNCTION DOES NOT EXIST
  testSourceRepoFile <- function(...){
    if(exists(".getGithubJSON")){
      rm(.getGithubJSON, inherits=TRUE)
    }
    sourceRepoFile(...)
  }
  
  testSourceRepoFile(repository="brian-bot/githubr", repositoryPath="R/getGithubJSON.R", ref="tag", refName="rGithubClient-0.8")
  myRepo <- getRepo("brian-bot/githubr", ref="tag", refName="rGithubClient-0.8")
  testSourceRepoFile(repository=myRepo, repositoryPath="R/getGithubJSON.R")
  
}

