# Sentiment_Analysis_Final_Project

## Machine Learning Model

Collaborative Filtering allow us to make predictions based on common opinions between users. This concept can be apllied to different scenarios and services such as video rating, product reviews, movie reviews and many others.

Our project will focus on creating a movie recomendation system that uses a collaborative filtering algorithm called Alternating Least Squares(ALS). The goal of this algorithm is to estimate the ratings matrix R as the product of two lower-rank matrices, X and Y, i.e. X * Yt = R. Typically these approximations are called ‘factor’ matrices. ALS algorithm works as an iterative process. In each iteration one of the factor matrices is held constant while the other is solved for using least squares.  Then this new solved factor matrix is held constant while solving for the other factor matrix. Translating these logic into our project we can say that we will use ALS to find movies that are approximately equal to a matrix that contains (user and movies), and then predict what certain user would think of a movie( whether he/she would like it or not). We will predict the rating given to a movie and then display a movie list with the top movie recommendations based on higher ratings.

The general structure of the machine learning model will be:
1. Separate the data into input(X) and output(y)
2. Split data into training and testing
3. Create the model - ALS algorithm
3. Train the model
4. Create predictions- rating 
5. Validate the model using the test data( generate confusion matrix to know the sensitivity and precision of the model)

Resources:
https://sophwats.github.io/2018-04-05-gentle-als.html

https://spark.apache.org/docs/latest/api/python/reference/api/pyspark.ml.recommendation.ALS.html


## Second Segment

### Description of preliminary data preprocessing 
The first part of the code consists in preprocesing and loading the data. We used pyspark, google collab notebook and AWS for the machine learning model.
1.We started by creating a Pyspark Session and reading the data stored in S3 bucket.
2.We did a general overview of the data: determined the number of columns, datatype of these columns, handle null values. From these data insights we decided to keep all of the columns of the dataframe for our machine learning model; user_id, movie_id, name, year and rating. As we considered al of this information relevant for our customers. It is true that the year is not a critical value that will influence the movie recommendation system, but we decided to keep it thinking in the final result that the user will get, it is possible that based on the final recommendation some users will discard some movies in they are from a specific year, they prefer modern movies or more classic ones. 


### Description of preliminary feature engineering and preliminary feature selection, including their decision-making
We determined that the rating would be out target variable, as what we wanted to predict with our model is the rating that a user would give to an unknown movie based on the data we collected and filtered. So our target variable is the "rating" column.
The rest of the columns were considered as features for the model, this includes: movie_id,user_id,name and year.

### Description of how data was split into training and testing sets
We used the randomSplit method, and we decided to use 80% of the data for training and 20% for testing. We based our decision in providing the model as much data as possible for training it, so that the model has a robust dataset to learn. 

## Explanation of model choice, including limitations and benefits
We decided to use collaborative filtering in order to find similarities between users opinions(ratings).Our project will focus on creating a movie recommendation system that uses a collaborative filtering algorithm called Alternating Least Squares(ALS) in order to make predictions of the movie interest of a user by collecting ratings data from many other users. 
The main advantage from this model is that it can make recommendations for users that already have a history in the dataset. It will display a final movie recommendation list to the user with the name of the movie, movide_id, year and predicted rating for that movie. However there is no garantee that the user will actually like those movies. 
The main limitation of the model is that if you do not have a data history rating movies, this model would not be able to recommend you something to watch.
