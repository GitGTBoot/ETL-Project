# ETL-Youtube_Statistics

## Purpose:
The purpose of this project was to perform an Extract-Transform-Load (ETL) process on  trending YouTube video statistics data in 2018 . The approach was to use the SQLAlchemy and Pandas modules in Python to extract and transform the data. SQLAlchemy was then used to load the transformed data into a PostgreSQL database.

## Goals :
1.	Identify the appropriate method(s) and perform the data extraction process.
2.	Identify the appropriate method(s) and perform the data transformation process.
3.	Identify the appropriate storage medium and perform the data loading process.

## Dataset and Data :
1.	( https://www.kaggle.com/datasnaek/youtube-new)
This dataset includes several months of data on daily trending YouTube videos. Data is included for the US, GB, DE and CA (USA, Great Britain, Germany and Canada respectively), with up to 200 listed trending videos per day.

Each region’s data is in a separate  .csv file . The data also includes a category_id field, which varies between regions. To retrieve the categories for a specific video, an associated JSON has been provided. One such file is included for each of the four regions in the dataset.

## Tasks
### Data Extraction
1.	Import the  4 countries’  video data CSV files and read them into Pandas data frames.
2.	Import the 4 countries’  category id data JSON files and read them into Pandas data frame.
3.	Inspect the data frames, and identify issues and inconsistencies.

### Data Transformation
1) Clean all data frames read from JSON files 
a)	Category id  and category title for each record was parsed from the JSON files and stored in lists that were used to create a new data frame (df1).
2) Clean all data frames read from CSV files.
a)	CSV files were read into data frames and transformed (df2).
b)	Time of video publication was originally in the ISO format. Time ( hour, min, sec)  of video publication was parsed from original format.
c)	A new published time column was be added to df2. 
d)	Dropping irrelevant columns , renaming and rearrangement of columns were done along with changing of data types to maintain uniformity 
3) Data frames df1 and df2 were merged to present meaningful data. 

### Data Loading
1.	Create a PostgreSQL database, and generate tables with the appropriate primary and foreign keys.
2.	Populate the tables with information from the appropriate data frames.
 Confirmation of data loading
      Confirmation of date being inserted into tables was performed by querying one country( Germany) table .


Results/Conclusions can be viewed 
https://github.com/GitGTech/ETL-Project/blob/master/ETL-Project.ipynb
