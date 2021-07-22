# ETL-Youtube_Statistics  ![pic](/images/youtubestats.png) 
                           
## Contributors:
George Oddoye , Vidhyanandhi Jegannathan

## Purpose:
The purpose of this project  for us was to perform an Extract-Transform-Load (ETL) process on  trending YouTube video statistics data in 2018 . We used SQLAlchemy and Pandas modules in Python to extract and transform the data. SQLAlchemy was then used to load the transformed data into a PostgreSQL database.

## Goals :
1.	Identify the appropriate method(s) and perform the data extraction process.
2.	Identify the appropriate method(s) and perform the data transformation process.
3.	Identify the appropriate storage medium and perform the data loading process.

## Dataset and Data :
1.	( https://www.kaggle.com/datasnaek/youtube-new)
We found this dataset on kaggle.com . It includes several months of data on daily trending YouTube videos. Data is included for the US, GB, DE and CA (USA, Great Britain, Germany and Canada respectively), with up to 200 listed trending videos per day.
Each region’s data is in a separate  .csv file . The data also includes a category_id field, which varies between regions. To retrieve the categories for a specific video, an associated JSON has been provided. One such file is included for each of the four regions in the dataset.

## Tasks
### Data Extraction
Dependencies Utilized:

![libraries](/images/dependencies.png)

We imported necessary files:
1.	Imported the  4 countries’  video data CSV files and read them into Pandas data frames.
2.	Imported the 4 countries’  category id data JSON files and read them into Pandas data frame.
3.	Inspected the data frames, and identify issues and inconsistencies.

![allfiles](/images/allfiles.png)

### Data Transformation
1) We cleaned all data frames read from JSON files 
a)	Category id  and category title for each record was parsed from the JSON files and stored in lists that were used to create a new data frame (df1).
i) example dictionary 

![dict](/images/usa_dict.png)

ii)created dataframe df1 from dictionary

![df from dict](/images/dictTodf.png)


2) We cleaned all data frames read from CSV files.
a)	CSV files were read into data frames and transformed (df2).
b) Data type of category_id column was changed to interger.

![integer](/images/interger.png)

c)	Time of video publication was originally in the ISO format. Time ( hour, min, sec)  of video publication was parsed from original format.

![publish hour](/images/publish_hour.png)

d)	A new published time column was be added to df2. 
e)	Dropping irrelevant columns , renaming and rearrangement of columns were done along with changing of data types to maintain uniformity.

![relevant columns](/images/relevant_columns.png)

3)We merged Data frames df1 and df2 to present meaningful data. 

### Data Loading
1. We	created a PostgreSQL database, and generated tables.

a) Tables created in pgAdmin
![tables](/images/createTable.png)

b) Created a connection between pandas and PostGres

![connection](/images/dbs_connection.png)

2. We	populated the tables with information from the appropriate data frames and confirmed the data loading .

Confirmation of data loading and date being inserted into tables was performed by querying one country( Germany) table .

![confirmation](/images/finaltable.png)


Results/Conclusions can be viewed 
https://github.com/GitGTech/ETL-Project/blob/master/ETL-Project.ipynb
