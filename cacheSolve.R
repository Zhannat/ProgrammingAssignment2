cacheSolve <- function(spis) {
	if(ncol(spis$get())!=nrow(spis$get())){
	message("the matrix is not square")
	return()
	} 
	if(det(spis$get())==0){
	message("the determinant is null")
	return()
	} 
	m <- spis$getinverse() 
	if(!is.na(m[1,1])) {  
                message("getting cached data")
                return(m) 
      }  
      data <- spis$get()
      m <- solve(data)
      spis$setinverse(m)
      m
}