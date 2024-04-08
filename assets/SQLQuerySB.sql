use [SB Database];
select * from Content;


--Renaming the table to more friendly names
sp_rename 'dbo.Content$', Content
sp_rename 'dbo.Reactions$', Reactions
sp_rename 'dbo.ReactionTypes$', ReactionTypes


--Removing columns that are not needed in the Content table
Alter Table Content
Drop Column "F1", "User ID", "URL"

--Checking the Content table for blank rows
select * from Content
where "Content ID" = '' -- checking for blank rows

select * from Content
where "Type" = '' -- checking for blank rows

select * from Content
where "Category" = '' -- checking for blank rows

select * from Content
where "Content ID" is null --checking for null values

select * from Content
where "Type" is null --checking for null values

select * from Content
where "Category" is null --checking for null values

--Renaming Column name Type in the Content table to Content Type for uniformity
sp_rename 'Content.Type', 'Content Type'

sp_rename 'ReactionTypes.Type', 'Reaction Type'

--Removing quotation marks from records in the Category column
update Content
set "Category" = replace(Category, '"', '')


Select * from Content
where "Category" like '"%'



--Removing columns that are not needed in the Reactions table
Alter Table Reactions
Drop Column "F1", "User ID"

select * from Reactions

--Renaming the Column Name in the Reactions Table for uniformity
sp_rename 'Reactions.Type', 'Reaction Type'

--Checking the Content table for blank rows

select * from Reactions
where "Content ID" = '' -- checking for blank rows

select * from Reactions
where "Type" = '' -- checking for blank rows

select * from Reactions
where "Category" = '' -- checking for blank rows


select * from Reactions
where "Content ID" is null --checking for null values

select * from Reactions
where "Reaction Type" is null --checking for null values

select * from Reactions
where "Datetime" is null --checking for null values

--Removing NULL Values from the Reactions Table
Delete from Reactions
where "Reaction Type" is Null

--The relevant columns from Content and ReactionsTypes tables are being merged to the Reactions Table and saved in a new table
--called ReactionsMerged

Select Reactions."Content ID", Reactions."Reaction Type", Reactions."Datetime", Content."Content Type", Content."Category",ReactionTypes."Sentiment", ReactionTypes."Score"  
into ReactionsMerged
From Reactions
Left Join Content
on Reactions."Content ID" = Content."Content ID"
Left Join ReactionTypes
on Reactions."Reaction Type" = ReactionTypes."Reaction Type"

select * from ReactionsMerged
--Lastly, sum the categories together as TotalScores and select top five categories then save into a new table 
---called TopFiveCategories

Select Distinct top(5) Category, SUM(Score) as TotalScore
into TopFiveCategories
from ReactionsMerged
Group by Category
Order by TotalScore Desc

Select * from TopFiveCategories