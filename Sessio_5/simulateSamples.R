listSamples<- list()

listSamples[[1]]<- x9 <- rnorm (n=9, mean=15, sd=2)
listSamples[[2]]<- x25 <- rnorm (n=25, mean=15, sd=2)
listSamples[[3]]<- x100 <- rnorm (n=100, mean=15, sd=2)

listSamples[[4]]<- y25 <- as.factor(rbinom (n=25, size=1,prob=0.12))
listSamples[[5]]<- y100 <-as.factor( rbinom (n=100, size=1,prob=0.12))
listSamples[[6]]<- y500 <-as.factor( rbinom (n=500, size=1,prob=0.12))

simDF<- data.frame(matrix(rep(NA, 3000), nrow = 500))
colnames(simDF) <- c("x9", "X25", "X100", "y25", "y100", "y500")
maxLength <- 500

for (i in 1:6){
  simDF[,i] <- c(listSamples[[i]], 
                 rep(NA,maxLength-length(listSamples[[i]])))
}
               