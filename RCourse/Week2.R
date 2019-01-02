coin <- function(){
  z <- 5
  while(z>=3 && z<=10){
    print(z)
    coin <- rbinom(1,1,0.5)
    if(coin == 1){
      z <- z+1
    }else{
      z<-z-1
    }
  }
}


add2 <- function(x,y){
  x+y
}

above10 <- function(x){
  use <- x > 10
  x[use]
}

above <- function(x,n = 10){
  use <- x >n
  x[use]
}

colummean <- function(y, removeNA = TRUE){
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(y[,i], na.rm = removeNA)
  }
  means
}

cube <- function(x,n){
  x^3
}

f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}