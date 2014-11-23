par(mfrow=c(2,2))
#dignostic plots
plot(linearmodel)
plot(y,x)
abline(linearmodel)

#function
stats <- function(x) { 
        c( mean = mean(x),
           SS = sum( (x - mean(x))^2 )
        )}
summary(coag~diet, data=coagulation, fun=stats) -> s; s
s <- unclass(s)