makeCacheMatrix<-function(matr=matrix()){   
	   
	  m <- matrix(ncol=ncol(matr),nrow=nrow(matr))
        set <- function(y) {
                matr <<- y
                m <<- matrix(ncol=ncol(y),nrow=nrow(y))
        }
        get <- function() matr
        setinverse <- function(inv) m <<- inv
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}