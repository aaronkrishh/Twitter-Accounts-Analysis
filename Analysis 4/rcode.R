
sampleA <- dim(dataA)[1]
n <- dim(data)[1]
thetahat <- sampleA/n

D <- abs(sampleA-n*0.14)/sqrt(n*(0.14)*(1-0.14))
pvalue <- 2*(1 - pnorm(D))

data$tweet.gap.hour <- data$tweet.gap/3600
tgh.first <- data$tweet.gap.hour[data$first.tweet == 1 & data$tweet.gap.hour <= 24]

tf1 <- sqrt(max(tgh.first) - tgh.first + 1)

mean_o <- sqrt(max(tgh.first) - 16 + 1)

D_2 <- abs(mean(tf1)-mean_o)/(sd(tf1)/sqrt(length(tf1)))
2*(1-pt(D_2,291))

user <- subset(data, subset = (username == "@theJagmeetSingh"))
user$likes.log <- log(user$likes + 1)

mod <- lm(length ~ likes.log, data = user)
coef(mod)
confint(mod, level= .95)
stdres <- rstandard(mod)
sigma(mod)

plot(user$length, user$likes.log, xlab = "Length of Tweet"
     , ylab = "NUmber of Likes", main = "Length and Likes Of A Tweet",
     pch = 3, cex = 0.75, col = "green")
abline(coef(mod), lwd = 2, lty = 2, col = "red")

stdres <- rstandard(mod)
plot(user$length, stdres,
     main = "Std residuals vs. Length of Tweets",
     xlab = "Length Of Tweets", ylab = "Standardized Residuals",
     pch = 1, col = "navy", cex = 0.5, las = 1)
abline(h = 0, lty = 2, col = "red", lwd = 2)

qqnorm(stdres, main = "QQplot of std residuals",
       xlab = "G(0, 1) Quantiles", ylab = "Standardized Residuals",
       pch = 1, col = "navy", cex = 0.5)
qqline(stdres, lty = 2, col = "red", lwd = 2)


predict(mod, newdata = data.frame("length" = log(200 + 1)))




S_yy <- sum((user$likes.log-mean(user$likes.log))^2)
S_xy <- sum((user$likes.log-mean(user$likes.log))*(user$length-mean(user$length)))
S_xx <- sum((user$length-mean(user$length))^2)
s_e <- sqrt((1/223)*(S_yy -(-0.007017032)*S_xy))
usertest <- abs(0.007017 - 0)/(0.001860)
2*(1-pt(3.772, 223))

likes.long <- user$likes.log[user$length >= median(user$length)]
likes.short <- user$likes.log[user$length < median(user$length)]


t.test(likes.short, likes.long, var.equal = FALSE)

