# Twitter-Accounts-Analysis: Project Overview
This project was done during a Statistics course. Throughout the term we were given a Twitter data set containing information about different tweets from different accounts. These accounts were either large influencers or organizational accounts. An EDA (Exploratory Data Analysis) was done with RStudio and all visualization came from R. Many statistical methodologies were applied during these analyses. Such as Numerical, finding the MLE, confidence/predication intervals, null hypothesis testing, t-tests and  linear regression models 

## Table of Contents
- [Analysis 1](#analysis-1)
  * [Overview](#overview-1)
  * [EDA](#eda-1)
  * [Takeaway](#takeaway-1)
  * [Full Analysis](#takeaway)
- [Analysis 2](#analysis-2)
  * [Overview](#overview-2)
  * [EDA](#eda-2)
  * [Takeaway](#takeaway-2)
  * [Full Analysis](#takeaway)
- [Analysis 3](#analysis-3)
  * [Overview](#overview-3)
  * [EDA](#eda-3)
  * [Takeaway](#takeaway-3)
  * [Full Analysis](#takeaway)
- [Analysis 4](#analysis-4)
  * [Overview](#overview 4)
  * [EDA](#eda-4)
  * [Takeaway](#takeaway-4)
  * [Full Analysis](#takeaway)


## Analysis 1
### Overview 1
Understanding when users access a website is an important goal for many online platforms. Knowing
when users are online and engaging with content can help developers manage resources, improve the
overall user experience, and better optimize mechanisms of user interaction, such as the placement
and timing of advertisements. Understanding the patterns of site activity is also useful for users of
the website, such as knowing the best times to publish content to maximize engagement. In particular, we will be analyzing when users publish their tweets, and whether this is associated with how much engagement those tweets receive from other users.

### EDA 1

![image](https://user-images.githubusercontent.com/79017977/210942816-761b47f6-c939-4455-b6c9-ec92a87ebc77.png)

For @SimuLiu, we can see that he frequently tweets at the beginning of the week and
progressively tweets more each day until Thursday. From Thursday we see a decline in production of
tweets for the rest of the week. While for @FANEXPOCANADA, we can see that the same pattern
occurs where he increases in tweets each day but there is a dip on Thursday. After Thursday, it
spikes to its maximum on Friday and progressively declines for the rest of the week.

Sample mean, median, standard deviation, skewness and kurtosis of time tweet was posted (24 hour clock).
![image](https://user-images.githubusercontent.com/79017977/210943142-4176fd0a-6f6b-4f19-80ab-5bb20404f97c.png)

![image](https://user-images.githubusercontent.com/79017977/210944127-7a91ef5e-b500-40bc-aaa2-499a91461dd7.png)


**Personal account (@SimuLiu))**: We can see our histogram that
majority of tweets are past 3pm while for data generated from a Gaussian distribution we would
expect to see majority of tweets between 5 and 10. We can see a discrepancy between the Gaussian
and barplot between 5am and 12pm. On the Gaussian model we expect to see him tweet more often
during that period of time. The Gaussian model shows that the number of tweets decline after 12pm
but the data seam to stay above the Gaussian curve. Between 8pm and 12pm, the data is above the
curve. From 2a we can see that the data is skewed to right as the skewness < 0. The kurtosis < 3
meaning that the peak of the Gaussian model is board. This seems to match the plot has the points
2
seems to be evening distributed during the day. There is a discrepancy in the histogram between
5am to 7am. Overall does not fit well as there are many discrepancy between the curve and the
histogram

**Organizational account (@FANEXPOCANADA)**: Based on the plot in part 2c, we can see an
increasing and then deceasing trend in tweets through out the day. On the Gaussian model we see
a similar trend and a peak close to the normal distribution. We can see that skewness > 0 as there
is a discrepancy in between the curve and plot between 10am and 12pm. What we expect to see on
our Gaussian is to see majority of our tweets within 1 standard deviation and this seems to be the
case. The curve fits the plot well with a slight discrepancy stated above. The height of most powers
see the line up with the graph fairly well and the curve is an accurate representation on the relative
frequency through out the day .


![image](https://user-images.githubusercontent.com/79017977/210945515-575ac832-a752-4443-83f7-47ef22de1bf8.png)

Based on the boxplots above, I would recommend publishing tweets before 12pm and
the median number of likes before 12pm is higher than the median number of like after 12pm. Both
plots have a similar spread in data but the data below 12pm is placed higher that the data after
12pm. This tells us that the average number of likes is higher before 12pm.

### Takeaway 1
Based on the analysis, I would recommend publishing tweets on the weekend. Even
though the median is about the same the range of the data seems to be closer the median. We will
see more consistent likes. There may be uncertainty and the median for the weekend is placed lower
within the interquartile range meaning it might not be the true median.








## Analysis 2
### Overview 2
 I’ll be exploring two features of the tweets themselves: their length, and their use of media (such as photos
or videos). Understanding not just when, but how users are interacting with a platform is important for various
reasons. For developers, it is useful to know what features their users are - and aren’t - taking
advantage of, or look for clues that new features may be desirable. For example, in 2017 Twitter
increased the maximum length of tweets from 140 characters to 280 characters in a response to how
users were using - and wanted to use - the service.

I'll will again explore what factors may be associated with the engagement tweets receive. These kinds of analyses can be helpful in advising users - both individuals and corporations - in how to use the platform most effectively. We will be analyzing tweets from **@theJagmeetSingh**

### EDA 2

![image](https://user-images.githubusercontent.com/79017977/210948285-f58bac34-7123-4796-af9f-1456b52b95d9.png)

Based on the Q-Q plot we can see that the data does not fit a normal distribution as there is a
big discrepancy between the line. We can see that the smaller length tweets are much smaller than
expected when normal distrubed. This also shows us that our data is left skewed (negatively skewed)
as we have a long left tail. There are alot of outlier data points. Most of the data is consist of higher
length tweets. We can also see that the sample median and mean is higher than the line.

![image](https://user-images.githubusercontent.com/79017977/210948406-4786cd59-be0e-47b7-a0f6-2196ab2728a9.png)

This graphical summary does not give a clear relationship between the 2 variates. We can see that the majority of his tweets are long but there is a variability in likes for his long tweets. The sample correlation is -0.2449277. This suggests that since the sample correlation is close to 0, there is no linear relationship between the 2 variates.


![image](https://user-images.githubusercontent.com/79017977/210948586-d618c2df-1a49-447a-a05e-cfcc54b2e136.png)

We conclude that short tweets receive more likes on average than long tweets. This is because see that the median is higher for short tweets and the interquartile range is higher compared to the long tweet.



These are summary statistics based on media items.

![image](https://user-images.githubusercontent.com/79017977/210947466-d7585b1d-80e1-4661-aaf6-6d1a63839d08.png)

Assume the distribution of media items in a randomly chosen tweet is a possion distribution. In the context of the study our $\lambda$ represents the average number of media items in a randomly chosen tweet.

![image](https://user-images.githubusercontent.com/79017977/210949115-500295e1-b6f3-4b78-812a-3bc7559720d3.png)

![image](https://user-images.githubusercontent.com/79017977/210949159-4bb1ac4b-b200-43f2-916d-8f8f430ec323.png)
![image](https://user-images.githubusercontent.com/79017977/210949229-76e97dc8-7501-4755-8daf-114104cfc9f5.png)

### Takeaway 2
The Poisson model appears to fit the data as we can see the values between the expected values and observed values are close with little variability. We can also visually see on the bar plot, the similarity in shape and height between the observed and expected. In addition, Poisson is best modeled with discrete data that involves counting items and
we are counting the number of tweets with a media item. Our media item take a discrete value.

![image](https://user-images.githubusercontent.com/79017977/210949519-89f3cbbc-ebcc-433e-9f8a-1b9a7a6a8376.png)

We can conclude that having a media item has little no effect on the outcome of likes for a tweet. This is because we can see in the data there is a lack of variability between value.






## Analysis 3
### Overview
Data about how often a user is interfacing with a website, service, or product, are valuable for a
variety of reasons. The regularity, and reliability, with which users return (sometimes referred to as
‘stickiness’) is a key metric to assess product performance, as well as for testing the effectiveness of
new features and initiatives.

In addition to providing insights into how often users post tweets, the variate tweet.gap also provides
an opportunity to explore some challenges commonly encountered in real-world data analysis. Many
of you will find that tweet.gap contains some particularly large values, as a result of users not
tweeting for several days, or even weeks. When working with real-world data it is common to
encounter unusual behaviour such as this, which can make finding a suitable statistical model difficult.

In this assignment we will explore two approaches for modelling data with unusual distributions. One
of these is to consider a subset of the data, narrowing the focus of our research question in order to
facilitate meaningful analysis. The other is data transformation, which we have used previously (such
as in taking logs of the likes variate) and will now extend to other, more complex transformation
procedures.

### EDA 3

**Tweet Set A** : All tweets in dataset

**Tweet Set B** : Tweets that are not the first tweet of the day

![image](https://user-images.githubusercontent.com/79017977/210952776-5bd97833-b8f0-486b-bdb2-7087e455beb1.png)

![image](https://user-images.githubusercontent.com/79017977/210953141-53e1877f-70b1-43c5-92f8-131074b9431f.png)

**Tweet Set A**: Based on the results in Analysis [1c/1e], we can see that the data seems to mimic
an exponential model. There is a large collection of data points at the beginning and it seems to
exponentially decrease as the get bigger. We can see a fairly large range as our range is approximately
435. We can see our data has a long right tail meaning the data is positively skewed which matches
the characteristics of a exponential model. While for data generated from an Exponential distribution
we would expect to see to have a similar fit with the data. The data points seem to line up with
the super-imposed exponential curve with very little discrepancy. On our histogram we can see that
between 0 and 50 our data set is higher that the exponential model which is evident in our ECDF
and CDF comparison. From our exponential model we would expect to see a lower values in gaps
from the CDF. We can see that the ECDF and CDF are very similar in shape with little discrepancy,
We can see that the median is very close in value. Overall, the Exponential model seems to fit out
data well.

**Tweet Set B**: Based on the results in graphs above, we can see that the data seems to mimic
an exponential model fairly well (Better than Tweets Set A). While for data generated from an
Exponential distribution we would expect to see expect the same results as our data set with very
little discrepancy. We would expect the data to be slightly lower but almost an insignificant amount.
There also see to be now outliers for data points and not a large range of data points. We can see our
data has a long right tail meaning the data is positively skewed which matches the characteristics of
a exponential model. Our CDF and ECDF seem to match perfectly. Overall, the Exponential model
seem to be an accurate fit for the data.

Overall, the Exponential model appears to be a better fit for Tweet Set B, because there are less
discrepancies between our ECDF and CDF compared to dataset A. Also our median lines up between
both curves and there is less uncertainty due to the of outlier data points.

Let Y ∼ Exponential(θ) denote the value of tweet.gap.hour for a randomly chosen tweet from the
study population that was not the first tweet of the day.

![image](https://user-images.githubusercontent.com/79017977/210953667-d3544f3d-fe94-4a47-b85e-554a22127593.png)

The approximate 15%, 95% and 99% confidence intervals for θ are 15% [2.859976, 2.905769],
95% [2.645581, 3.120164], and 99% [2.571019, 3.194726], respectively.

To grasp a better analysis of the data we have performed 3 tranformations. 

![image](https://user-images.githubusercontent.com/79017977/210953941-7f750f89-8aad-4258-bacc-b3481ec45b43.png)

The Gaussian model appears to fit the Square Root transformed data best, because there it is
the graph with the least discrepancy between the relative frequency histogram and superimposed
Gaussian curve. We can see that the bars on the right hand size of the bell curve align with the
superimposed curve (Between 2.5 and 4.0). We can see that the data is roughly evenly distributed
with a slight long right tail.

### Takeaways

We are able to develop intervals that contain the true mean value. 





## Analysis 4
### Overview
