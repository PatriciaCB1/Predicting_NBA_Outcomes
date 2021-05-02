# Predicting_NBA_Outcomes
![Images/Player_Marquee.png](Images/Player_Marquee.png)

“I think it’s pretty important that you learn how to keep your own scoreboard and how to be focused on what truly matters over the long term.”
-Sam Hinkie

## Topic
Predicting NBA Player & Team Performance

## Purpose 
We are using data from the National Basketball Association (NBA) in order to predict player performance and the impact on match outcomes. We want to understand the predictive power of certain features and whether or not these inputs can be used to accurately predict player performance and match outcomes.

## Resources

### Technology

- Software: Anaconda 4.9.2, Jupyter Notebook 6.0.3 , Python 3.7.6, PostgreSQL
- Data Warehouse:  AWS
- Using: Pandas, NumPy, SQLalchemy extensions and functions
- Algorithms: Random Forest model - will be testing additional models

### Source Data Description
Data will be sourced for players and their respective teams.  Types of data utilized will be as follows:
- Player Biometrics: height, weight, wingspan, etc; 
- Player Performance: offense (3 pt %, FG %, FGA, etc) & defense (rebounds, steals, blocks, etc); 
- Team Performance: home, visitor, win streak, jersey type, etc.
- Other: Referee, Day of Week, Start Time, etc.
- Data will be sourced via API (NBA.com or other source) and web scraping.

## Research Questions
- What features are important to determine player performance? 
- How will players perform across key performance indicators (points, assists, steals, blocks, rebounds)?
- Does the sum of individual player performance determine game outcomes?
- Are there other “team” or “biometric” factors that determine game outcomes?
- How will aggregate player performance inform a team outcome (win vs. loss)?

## Approach
- Create a classification model to determine game outcome (Win/ Loss)

## Communications Protocol
Team communicates over Slack channel "The-Dream-Team". Team will discuss roles and responsibilities before each deliverable and discuss additional areas of support and assistance.
Week 1 Roles & Responsibilities
- Square (Model): Josh Merenstein
- Triangle (Database): Praveen Ravi
- Circle (Visuals): Jerome Simmons
- X (Tech Overseer + Presentation Deck): Patricia Chapin-Bayley
