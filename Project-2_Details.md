# <p align="center"> USING SQL TO CLEAN, MODEL AND ANALYSE DATA TO DETERMINE THE TOP FIVE CATEGORY CONTENT FOR A CLIENT

## Cleaning the datasets

In order to clean the datasets I had to first import it into SQL Server Management Studio. I used SQL as the primary tool for cleaning, modelling and analysing the data.

 [Click here for the SQL FILES used for the Project work.](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/assets/SQLQuerySB.sql) 

## IMPORTING RAW DATASETS INTO SQL SERVER MANAGEMENT STUDIO

I started by importing the raw datasets into SQL  Server Management Studio

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_1.png "SQL Image")

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_2.png "SQL Image")

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_3.png "SQL Image")

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_4.png "SQL Image")

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_5.png "SQL Image")

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_6.png "SQL Image")

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_7.png "SQL Image")

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_8.png "SQL Image")

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_9.png "SQL Image")

## RENAMING THE TABLES AND DROPING IRRELEVANT COLUMNS

I renamed the tables using more friendly names using the syntax below:

<i>sp_rename 'dbo.Content$', Content</br>
sp_rename 'dbo.Reactions$', Reactions</br>
sp_rename 'dbo.ReactionTypes$', ReactionTypes</i>

I dropped the columns that are needed for the business question using the sql syntax below:

<i>Alter Table Content</br>
Drop Column "F1", "User ID", "URL"</i>

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_10.png "SQL Image")

## CLEANING THE CONTENT TABLE: REMOVING QUOTATION MARKS FROM THE CATEGORY COLUMN 

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_14.png "SQL Image")

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_15.png "SQL Image")


I also checked the <b>content table</b> for blank or null records, but found none.

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_12b.png "SQL Image")

## CLEANING THE REACTIONS TABLE

I removed the columns there are needed from the <b>Reactions table</b>, checked and removed the blank/null records from the Reactions Table. There were some blank records in the Reaction Type column that were removed. I also renamed the column "Type" to "Reaction Type" in the Reactions Table using the syntax below:

sp_rename 'ReactionTypes.Type', 'Reaction Type'

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_11.png "SQL Image")

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_13.png "SQL Image")

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_17.png "SQL Image")

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_18.png "SQL Image")


## USING SQL JOINS TO MERGE THE TABLES THE THREE TABLES

The relevant columns from Content and ReactionsTypes tables WERE merged to the Reactions Table and saved in a new table
called ReactionsMerged.  I used the syntax below to merge the three tables.


<i>Select Reactions."Content ID", Reactions."Reaction Type", Reactions."Datetime", Content."Content <br>Type",Content."Category",ReactionTypes."Sentiment", ReactionTypes."Score"<br>
into ReactionsMerged<br>
From Reactions<br>
Left Join Content<br>
on Reactions."Content ID" = Content."Content ID"<br>
Left Join ReactionTypes<br>
on Reactions."Reaction Type" = ReactionTypes."Reaction Type"</i>

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_19.png "SQL Image")

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_20.png "SQL Image")

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_21.png "SQL Image")


## QUERYING FOR THE TOP FIVE CONTENT CATEGORIES

Finally, I used  the following SQL syntax to query the top five content categories into a new table named the<br> <b>Top Five Categories</b>.


<i>Select Distinct top(5) Category, SUM(Score) as TotalScore
into TopFiveCategories<br>
from ReactionsMerged<br>
Group by Category<br>
Order by TotalScore Desc</i>

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_23.png "SQL Image")

![alt text](https://github.com/bukkywins/Data-Analysis_Projects/blob/main/images/Project-2_SQL_24.png "SQL Image")













