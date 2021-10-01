# Movies-Database-ETL (Extract Transform Load)
Design a database based on the given movie data and create the database using MySQL. Create an ETL script using python based on the database which take on the .csv file and insert the data into the existing database.

## General Overview
Based on the data given ([movies.csv](https://github.com/muyassarhafizh/Movies-Database-ETL/blob/main/Data/movies.csv)), here are 3 process that is done in this project:

1. Designing and creating the visual representation of the database including the relationship between its entity. Two data models, namely conceptual ERD and logical ERD were created and placed in [Data Model](https://github.com/muyassarhafizh/Movies-Database-ETL/tree/main/Data%20Model%20(ERD)) folder.
2. Creating Database Schema based on the previous data model by using MySQL. The script for creating the database can be found in [create_database.sql](https://github.com/muyassarhafizh/Movies-Database-ETL/blob/main/create_database.sql)
3. Constructing ETL (Extract,Transform,Load) python script with the help of Pandas Dataframe which Extract the data from [movies.csv](https://github.com/muyassarhafizh/Movies-Database-ETL/blob/main/Data/movies.csv), Transform the data to make it usable and readable, and Load it using MySQL Database. Finally, the database can be load by using MySQL queries and several queries to add views/special table were also provided in [query_question.sql](https://github.com/muyassarhafizh/Movies-Database-ETL/blob/main/query_question.sql)


## Overview of the Code
In this project, we construct the pipeline that extract the data from movies.csv. The final pipeline can be called by executing the extract_transform_load() function in [ETL_movie_database.ipynb](https://github.com/muyassarhafizh/Movies-Database-ETL/blob/main/ETL_movie_database.ipynb). Before builiding the ultimate pipeline, we need to construct the functions and procedures step by step. To do so, we need [ETL-test.ipynb](https://github.com/muyassarhafizh/Movies-Database-ETL/blob/main/ETL-test.ipynb) file which is also provided and can be used to figure out how the ETL process works. 

## Resources
Enviroment:
- Python 3.7

Software:

- Jupyter Notebook
- MySQL Workbench 3.0

## Other Articles
- [Map function](https://www.geeksforgeeks.org/difference-between-map-applymap-and-apply-methods-in-pandas/)
- [Python Regex](https://www.geeksforgeeks.org/python-regex-cheat-sheet/)
- [ETL with Pandas](https://algakovic.medium.com/extract-transform-load-etl-with-pandas-d9e52c309e82)
