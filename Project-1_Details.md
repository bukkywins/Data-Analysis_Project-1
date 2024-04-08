# <p align="center">  USING MICROSOFT EXCEL TO CLEAN, MODEL AND ANALYSE THE DATA TO DETERMINE THE TOP FIVE CONTENT CATEGORY
## Data Model:

On studying the data model, I realized that only three of the datasets are required to answer the client's question

<OL>
  <li>The Content Table</li> 
  <li>Reaction types Table</li>
  <li>Reaction Table</li>
</OL>


![alt text](https://github.com/bukkywins/Data-Analysis_Project-1/blob/main/images/Data-Model.jpeg "The Data Model")

### Cleaning the datasets
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
https://github.com/bukkywins/Data-Analysis_Project-1/blob/main/images/Project-1_Excel8.png

## Using the "IFERROR" Function to trap errors:
I utilized the iferror funnction to capture errors and populated the remaining records.

![alt text](https://github.com/bukkywins/Data-Analysis_Project-1/blob/main/images/Project-1_Excel9.png "The Content Table")

![alt text](https://github.com/bukkywins/Data-Analysis_Project-1/blob/main/images/Project-1_Excel10.png "The Content Table")


