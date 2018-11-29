library(ggplot2)
library(dirichletprocess)

glass <- read.csv("../Glass - Soyoung/glass-codes/eda-paper/glass-eda-paper/data/glass_raw_all.csv")

mn1 <- glass$Mn55
mn2 <- scale(mn1)

al1 <- glass$Al27
al2 <- scale(al1)

dp_mn <- DirichletProcessGaussian(mn2)
mn_fit <- Fit(dp_mn, 1000)

plot(mn_fit,  data_method = "hist")

mnal <- cbind(mn, al)

dp_mnal <- DirichletProcessMvnormal(mnal)
mnal_fit <- Fit(dp_mnal, 10)

plot(mnal_fit)



