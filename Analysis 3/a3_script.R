data$tweet.gap.hour <- data$tweet.gap/3600

dataA <- data
dataB <- subset(data, subset = (first.tweet == 0))

sampleA <- length(dataA$tweet.gap.hour)
sampleB <- length(dataB$tweet.gap.hour)
meanA <- mean(dataA$tweet.gap.hour)
meanB <- mean(dataB$tweet.gap.hour)

medianA <- median(dataA$tweet.gap.hour)
medianB <- median(dataB$tweet.gap.hour)

minA <- min(dataA$tweet.gap.hour) 
minB <- min(dataB$tweet.gap.hour) 

maxA <- max(dataA$tweet.gap.hour) 
maxB <- max(dataB$tweet.gap.hour) 


par(mfrow = c(2, 2))
truehist(dataA$tweet.gap.hour, ylab = 'Relative Frequency', nbin = 30,
         xlab = 'Tweet Gap In Hours', 
         main = 'Relative Frequency Histogram For Tweet Gaps of Set A', xlim = c(0,500))
curve(dexp(x, 1/meanA), add = TRUE, col = 'red', from = 0.0001, lwd = 2)
plot(ecdf(dataA$tweet.gap.hour), xlab = 'Tweet Gap In Hours',
                                  ylab = 'Cumulative Probability',
                                  main = 'E.C.D.F For Tweet Gaps of Set A')
curve(pexp(x, 1/meanA), add = TRUE, col = 'red', from = 0.0001, lwd = 1)
legend('bottomright', legend = c('ECDF', 'CDF'), col = c('black', 'red'), lty = c(1,1))


truehist(dataB$tweet.gap.hour, ylab = 'Relative Frequency', 
         xlab = 'Tweet Gap In Hours', 
         main = 'Relative Frequency Histogram For Tweet Gaps of Set B',
         xlim = c(0,25))
curve(dexp(x, 1/meanB), add = TRUE, col = 'red', from = 0.0001, lwd = 2)
plot(ecdf(dataB$tweet.gap.hour), xlab = 'Tweet Gap In Hours',
                                  main = 'E.C.D.F For Tweet Gaps of Set B', 
                                  ylab = 'Cumulative Probability',
                                xlim = c(0,25), pch = NA, lwd = 2)
curve(pexp(x, 1/meanB), add = TRUE, col = 'red', from = 0.0001, lwd = 2)
legend('bottomright', legend = c('ECDF', 'CDF'), col = c('black', 'red'), lty = c(1,1))


par(mfrow = c(1, 1))

ExpRLF <- function(theta, n, thetahat){exp(n*
          log(thetahat/theta) + n*(1-thetahat/theta))}
      

theta <- seq(2.5, 3.3, 0.0001)
plot(theta, ExpRLF(theta, sampleB, meanB), xlab = expression(theta),
     ylab = expression(paste("R(",theta,")")),
     main = "Exponential Relative Likelihood Function", type ="l")
abline(h = 0.15, col = 'red')



tgh.first <- data$tweet.gap.hour[data$first.tweet == 1 & data$tweet.gap.hour <= 24]
tf1 <- sqrt(max(tgh.first) - tgh.first + 1)
tf2 <- log(max(tgh.first) - tgh.first + 1)
tf3 <- 1/(max(tgh.first) - tgh.first + 1)


par(mfrow = c(2, 2))
truehist(tgh.first, ylab = 'Relative Frequency', nbin = 30,
         xlab = 'Tweet Gap In Hours', 
         main = 'Relative Frequency Histogram For TGH.First (Original)', ylim= c(0,.30))
curve(dnorm(x, mean(tgh.first),sd(tgh.first)),add = TRUE, col = 'red', from = 0.0001, lwd = 2)

truehist(tf1, ylab = 'Relative Frequency', nbin = 30,
         xlab = 'Tweet Gap In Hours (Square Rooted)', 
         main = 'Relative Frequency Histogram For TGH.First (Square Root)')
curve(dnorm(x, mean(tf1),sd(tf1)),add = TRUE, col = 'red', from = 0.0001, lwd = 2)


truehist(tf2, ylab = 'Relative Frequency', nbin = 30,
         xlab = 'Tweet Gap In Hours (Logged)', 
         main = 'Relative Frequency Histogram For TGH.First (Log)')
curve(dnorm(x, mean(tf2),sd(tf2)),add = TRUE, col = 'red', from = 0.0001, lwd = 2)


truehist(tf3, ylab = 'Relative Frequency', nbin = 30,
         xlab = 'Tweet Gap In Hours (Reciporicaled)', 
         main = 'Relative Frequency Histogram For TGH.First (Reciporcal)')
curve(dnorm(x, mean(tf3),sd(tf3)),add = TRUE, col = 'red', from = 0.0001, lwd = 2)

meantf1 <- mean(tf1)
sdtf1 <- sd(tf1)
