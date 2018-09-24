---
title: "MathFun"
output: html_notebook
---

#Distribution of primes
```{r}
library(RcppAlgos)
primes<-RcppAlgos::primeSieve(10^10)
last_digit<-primes %% 10
follows_1<-last_digit[which(last_digit[1:1000000]==9)+1]
hist(follows_1,breaks = c(1:10),freq=FALSE)
```

Add a new chunk by clicking the *Insert Chunk* button on the toolbar or by pressing *Ctrl+Alt+I*.

When you save the notebook, an HTML file containing the code and output will be saved alongside it (click the *Preview* button or press *Ctrl+Shift+K* to preview the HTML file).
