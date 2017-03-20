##These Functions Creates Matrix, and then caches its inverse.  


## This function creates a list of functions, which allows
## the setting of a matrix, getting it
##setting its inverse, then getting its inverse

makeCacheMatrix <- function(x = matrix()) {
       m<- NULL
       set <- function(y) {
               x<<-y
               m<<-NULL
       }
       get <- function() x
       setinverse<- function(inverse) m<<-inverse
       getinverse<- function() m
       list(set = set, get = get,
            setinverse=setinverse,
            getinverse=getinverse
            )
               
        

}


## This function takes an object of makeCacheMatrix as its parameter
## it then checks to see if the inverse has been set.  If so that
## inverse is return.  If not the inverse is calculated and then set
## for the matrix in the makeCacheMatrix object

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i<-x$getinverse()
        if(!is.null(i)){
                message("Getting Cached Data")
                returm(i)
        }
        data<-x$get()
        i <- solve(data,...)
        x$setinverse(i)
        
}
