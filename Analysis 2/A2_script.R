#QUESTION 1#
data <- read.csv('stat231dataset20892405.csv')
user <- subset(data, subset = (username == "@theJagmeetSingh"))
user$likes.log <- log(user$likes + 1)


qqnorm(user$length, pch = 1, cex = 0.5)
qqline(user$length, col = "red", lwd = 2, lty = 2)

plot(user$length, user$likes.log, xlab = "Length of Tweet"
     , ylab = "NUmber of Likes", main = "Length and Likes Of A Tweet",
     pch = 3, cex = 0.75, col = "green")

user$length.long <- as.numeric(user$length >= median(user$length))
user$length.short <- as.numeric(user$length < median(user$length))

n <- dim(user)[1]

mle <- g/n

boxplot(user$likes.log[user$length >= median(user$length)],
        user$likes.log[user$length < median(user$length)], 
        names = c("Long Tweets", "Short Tweets"), 
        main = "Boxplot of Likes for Long and Short Tweets For @theJagmeetSingh",
        ylab = "# of Likes in Log", col = c("blue", "red"))



#QUESTION 2#
media_mean <- mean(user$media)
media_median <- median(user$media)
media_sd <- sd(user$media)
media_mode <- max(table(user$media))

prob_zero <- dpois(0, media_mean)

PoisRLF <- function(theta, n, thetahat) {exp(n*thetahat*log(theta/thetahat)
                                             + n*(thetahat-theta))}

theta <- seq(0.30,0.75, 0.001)
plot(theta, PoisRLF(theta, n, media_mean), xlab = expression(theta),
     ylab = expression(paste("R(",theta,")")),
     main = "Poisson Relative Likelihood Function", type ="l")

PoisRLF(4, n, media_mean)

expected <- dpois(0:4, media_mean)*n
round(expected, 3)
observed <- table(user$media)
cbind(observed, expected)

barplot(rbind(observed, expected), beside = T, xlab = "Media Items", 
        ylab = "# of Tweets", 
        main = "Expected and Observed Values of Media Items",
        col = c("dodgerblue3", "darkorchid"), ylim = c(0,200))
legend("topright", legend = c("Observed", "Expected"), 
       fill = c("dodgerblue3", "darkorchid"))

mean(user$likes.log[user$media.binary==0])
median(user$likes.log[user$media.binary==0])
sd(user$likes.log[user$media.binary==0])

mean(user$likes.log[user$media.binary==1])
median(user$likes.log[user$media.binary==1])
sd(user$likes.log[user$media.binary==1])