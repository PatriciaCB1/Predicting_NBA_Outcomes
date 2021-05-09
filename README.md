# Predicting_NBA_Outcomes
![Images/Player_Marquee.png](Images/Player_Marquee.png)

“I think it’s pretty important that you learn how to keep your own scoreboard and how to be focused on what truly matters over the long term.”
-Sam Hinkie

## Topic
Predicting NBA Game Outcomes
- Utilize data from the National Basketball Association (NBA) 
- Predict: game outcomes
- Understand:  predictive power of certain features
- Determine:  whether the chosen inputs / features can be used to accurately predict match outcomes

## Purpose 
As a team of NBA fans (and errant gamblers!) we were curious to see if we could figure out a way to predict the impact of player performance and other game features on the outcome of NBA games.

## Resources

### Technology

- Software: Anaconda 4.9.2, Jupyter Notebook 6.0.3 , Python 3.7.6, PostgreSQL, PGAdmin4
- Data Warehouse:  AWS
- Using: Pandas, NumPy, SQLalchemy extensions and functions
- Algorithms: Random Forest model - will be testing additional models

### Source Data Description
- Kaggle: NBA game data 2004 - 2020
- Original Source:  https://www.nba.com/stats/
- Kaggle Source:  https://www.kaggle.com/nathanlauga/nba-games
- Data files used: 
    - games.csv
    - games_details.csv
    - players.csv
    - ranking.csv
    - teams.csv


## Research Questions
- What features are important to determine game outcomes?
- How will team outcomes be determined by player metrics (points, assists, steals, blocks, rebounds)?
- Does the factor of Home vs Vistor team have an impact on game outcome?
- Are there other “team” or “biometric” factors that determine game outcomes?
- How will aggregate player performance inform a team outcome (win vs. loss)?

## Data Exploration

### Data Cleaning

Data Cleaning Process Entailed:
  - Removal of NaN values
  - Removal of Null values
  - Identifying data types
  - Retaining columns that could provide features of interest
  - Dropping  redundant columns
  - Dropping columns that would not be pertinent to answering our questions of the data or that proved problematic for the model
  - Transform data set into Home & Visitor team stats
  - Identifying and removal of duplicates (i.e. duplicates removed from datafiles then checked once in database leading to additional removals)
  - Ensured dummy variables for any columns with non-numeric values (i.e. team name) 
  - Utilized OneHotEncoder then merged the variables to the dataframe

### Data Exploration

- Initial Exploration:  Identifying potential features
- Started with over 50 columns that could provide features of interest with 2 key prominent identified segments:
  - Offensive Stats
  - Defensive Stats
- Identifying redundant columns
  - Data type
  - Duplicate stats/ metrics 
- Attempt to identify what is causing overfitting of the model
- Database relationship mapping 
- Data types in each column across all data sets to ensure data types would work within our model
- Creating: new rows to split out Home / Away and a new column for Team Win / Loss

## Analysis

Analysis to be undertaken: 
  - Created:  relational database of potential features
  - Refinement: identifying which features are causing our model to be overfit (i.e. yielding 98% accuracy)
  - Training: the model removing features that create overfit
  - Continuing to refine feature inputs
  - Testing data with different model options for optimal fit
  - Further exploration / analysis:
  - Regression analysis to assess the validity of features
  - Visualization of correlation between features and outcomes

## Machine Learning Model

### Approach
- Create a classification model to determine game outcome (Win/ Loss)

  - Description of the Model: initially utilizing Random Forest 
    - Staple in machine learning due to robustness and scalability
    - Output and feature selection of Random Forest models easy to interpret
    - Easily handle outliers and non-linear data
    - Easier to use when not utilizing image or natural language
- Started with 50+ potential features (in the process of narrowing)
- Random Forest initial model - likely overfit due to feature choices (includes data for both win and loss on the same game)
- Training & Testing sets: dropped “Home Win” column to make that our target.  
  - Did not use random oversampling, undersampling or combination
  - Sample robust enough to not require enhancement

## Presentation Slides

https://docs.google.com/presentation/d/18Ij9W_wmpUUDsM6LSUpxQwxCbR3NeJfk8vHeC7B2Zq4/edit?usp=sharing

## Dashboard Mock Up

https://docs.google.com/presentation/d/103ir_JitNAbp07oyHvgJAFLcFKm4zC7HRJB4_MHrRJg/edit?usp=sharing


## Communications Protocol
Team communicates over Slack channel "The-Dream-Team". Team meets over Zoom on Tuesdays, Thursdays, and Sundays to review, assign, and collaborate on segment deliverables. Team will discuss roles and responsibilities before each deliverable and discuss additional areas of support and assistance. Team members upload changes into respective branches and merge changes into main branch during meetings for group review.

## Overall Roles & Responsibilities
- Square (Model): Josh Merenstein
- Triangle (Database): Praveen Ravi
- Circle (Visuals): Jerome Simmons
- X (Tech Overseer + Presentation Deck): Patricia Chapin-Bayley
