## Identically with the vector code here i create the makeCasheMatrix



## we set the value of the Cache Matrix- we get the matrix
## we set the value of the inverse matrix
## we get the value of the inverse matrix


makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){
                x<<-y
                m<<-NULL
                        }
get<-function()x
setinverse<-function(solve) m<<-solve
getinverse<-function()m
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}


## the next function handles the cashe matrix created by the previous function,
## if the inverse matrix is not created then it calculates it

cacheSolve <- function(x, ...) {
       m<-x$getinverse()
       if(!is.null(m)){
               return(m)
       }
       data<-x$get()
       m<-solve(data,...)
       x$setinverse(m)
       m
}
