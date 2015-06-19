# This function caches a 2x2 matrix that will be inverted by the cacheSolve function

makeCacheMatrix <- function(x = matrix()) {

# First time function runs, is necessary to define the matrix cachematrix, which cache the inverse matrix 
     if(exists("cacheinversa")){ 
          message("cache inversa existe")
     }          
     else{
          message("criando cacheinversa")
          cacheinversa <<- matrix()
          
     }
# Caching the matrix which will be inverted
     cachex <<- x     

}


## This function computes the inverse matrix only if not calculated before.  
## If the inverse matrix has been calculated, the program just prints its contents
## saving programation's time

cacheSolve <- function(x, ...){
          
     if(exists("y")){
     }

# 
     else{
          y <<- matrix(c(0,0,0,0),2,2)
     }
     
     if(length(cacheinversa) == 0) {
          cacheinversa <<- solve(cachex)
          print(cacheinversa)
     }    
# Test if the input matrix is identical to an array already calculated    
     else{
          if(identical(y,cachex) == TRUE) {
               message("buscando no cache")
               z <<- cacheinversa
               print(z)
# If the input matrix has not already been computed, program performs calculation
# of its inverse
          }
          else{
               z <<- solve(cachex)
               cacheinversa <<- z
               y <<- cachex
               print(z)
               
          }
     }        

## Return a matrix that is the inverse of 'x'
}
