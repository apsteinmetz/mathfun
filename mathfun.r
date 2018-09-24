---
title: "MathFun"
output: html_notebook
---

#Distribution of primes
```{r}
library(RcppAlgos)
system.time(primes<-RcppAlgos::primeSieve(10^10))
system.time(last_digit<-primes %% 10)
follows_1<-last_digit[which(last_digit[1:1000000]==1)+1]
tmp<-hist(follows_1,breaks = c(0,2,4,6,8,10))
```
