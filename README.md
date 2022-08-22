# Sentiment_Analysis_Final_Project

## Machine Learning Model

Collaborative Filtering allow us to make predictions based on common opinions between users. This concept can be apllied to different scenarios and services such as video rating, product reviews, movie reviews and many others.

Our project will focus on creating a movie recomendation system that uses a collaborative filtering algorithm called Alternating Least Squares(ALS). The goal of this algorithm is to estimate the ratings matrix R as the product of two lower-rank matrices, X and Y, i.e. X * Yt = R. Typically these approximations are called ‘factor’ matrices. ALS algorithm works as an iterative process. In each iteration one of the factor matrices is held constant while the other is solved for using least squares.  Then this new solved factor matrix is held constant while solving for the other factor matrix. Translating these logic into our project we can say that we will use ALS to find movies that are approximately equal to a matrix that contains (user and movies), and then predict what certain user would think of a movie( whether he/she would like it or not). We will predict the rating given to a movie.

The general structure of the machine learning model will be:
1. Split the data into input(X) and output(y)
2. Select the model to be used-in this case ALS algorithm
3. Train the model
4. Create predictions- rating 
5. Validate the model using the test data

  5.1 generate confusion matrix to know the sensitivity and precision of the model





Resources:
https://sophwats.github.io/2018-04-05-gentle-als.html

https://spark.apache.org/docs/latest/api/python/reference/api/pyspark.ml.recommendation.ALS.html
