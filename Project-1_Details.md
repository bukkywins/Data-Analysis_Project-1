# <p align="center">  USING MICROSOFT EXCEL TO CLEAN, MODEL AND ANALYSE THE DATA TO DETERMINE THE TOP FIVE CONTENT CATEGORY

## Cleaning the datasets
To clean the dataset, I started to remove the columns which are not needed to answer the business question from each table. In the content table, I removed the USER ID and URL columns.

![alt text](https://github.com/bukkywins/Data-Analysis_Project-1/blob/main/images/Project-1_Excel1.png "The Content Table")
The <b>Content table</b> contained records with quotation marks in the category column. I had to clean the records by using the find and replace feature in excel to remove the quotation marks. The Content table had no blank records.

![alt text](https://github.com/bukkywins/Data-Analysis_Project-1/blob/main/images/Project-1_Excel2.png "The Content Table")

![alt text](https://github.com/bukkywins/Data-Analysis_Project-1/blob/main/images/Project-1_Excel3.png "The Content Table")

I followed the same process for the <b>reactions table</b>. The <b>Reactions table</b> contained some null /blank records in the Reaction type column. I removed this using the filter to remove the blank records.

## Below is the final output after cleaning all three datasets:

![alt text](https://github.com/bukkywins/Data-Analysis_Project-1/blob/main/images/Project-1_Excel7b.png "The Content Table")


## Using "VLOOKUP", TO merge the tables:

Using <b>Reaction table</b> as the base table, I used the vlookup function  to merge the relevant columns from the content and rection types tables.

![alt text](https://github.com/bukkywins/Data-Analysis_Project-1/blob/main/images/Project-1_Excel8.png "The Content Table")


## Using the "IFERROR" function to trap errors:

I utilized the iferror function to capture errors and populated the remaining records.

![alt text](https://github.com/bukkywins/Data-Analysis_Project-1/blob/main/images/Project-1_Excel9.png "The Content Table")

![alt text](https://github.com/bukkywins/Data-Analysis_Project-1/blob/main/images/Project-1_Excel10.png "The Content Table")


## SELECTING THE DISTINCT Category Records for analysis:

I copied the category column to a new spreadheet to remove duplicate records:

![alt text](https://github.com/bukkywins/Data-Analysis_Project-1/blob/main/images/Project-1_Excel11.png "The Content Table")

![alt text](https://github.com/bukkywins/Data-Analysis_Project-1/blob/main/images/Project-1_Excel12.png "The Content Table")

## USING THE "SUMIF" function to calculate the sum of scores:

Each Reaction type record has weighted score for each category. In order to determine the top five content category, I calculated the aggregate scores for each category. I used the SUMIF fuction to derive a calculated column for the total scores for each category.

![alt text](https://github.com/bukkywins/Data-Analysis_Project-1/blob/main/images/Project-1_Excel13.png "The Content Table")


## Identifying the Top Five Content Category:

To answer the client's business question, I sorted the category in the descending order of total scores:


![alt text](https://github.com/bukkywins/Data-Analysis_Project-1/blob/main/images/Project-1_Excel15.png "The Content Table")


## Extracting the final results for the client:

I then copied the final result showing the TOP FIVE CATEGORIES into a different work sheet:

![alt text](https://github.com/bukkywins/Data-Analysis_Project-1/blob/main/images/Project-1_Excel16.png "The Content Table")




