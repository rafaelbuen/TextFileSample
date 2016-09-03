#TextFileSample

##Use Case
Marketing has received a data file that may have been corrupted when it was exported. We need to extract all of the dates that have occurred in the past from this document.
##Criteria.
-	A date is defined as MMDDYYYY 
	a.ie: April 3, 2011 would be 03032011.
-	A past date is defined by any date that occurred before today. 
	a. ie: If today is 09/29/2016, all dates 08282016 or earlier would be valid.
-	The data file does not contain time information.
-	The resulting data output should be a list of dates.
-	The corresponding data file is named MarketingDataFile.txt

##Assumptions:
-	The defined date format is explicit.
-	The file name is explicit.
-	New file submission may over-write the prior file.

##Explanation of design:
-	SSIS with a C# script component; provides flexibility, scalability, and considers potential use case changes.

##Workflow:
-	Create directoty structures
-	Create database objects
-	Loop for files
-	Log file to process
-	Load raw data
-	Augment constants, parameters, and vairables
-	Date Validation
-	Exports (1-Valid dates, 2-Invalid Dates)
-	Archive file
-	Delete File

##Features
-	Configurable file paths, outputs paths, file names, and target filter date.
-	Includes requested output, source file archive, invalid records output, rational database for historical file reporting.
-	Use of ragged right in case the data is in an unexpected column position.
-	Appends timestamp to output files, and validation result to output rows.
-	Date validation in C# for potential extensibility.
-	Invalid data reported as (valid dates in an incorrect format) and (content that does not convert to dates)

##Questions:
-	Is this a one item file? 
-	If recurring files are expected, do you desire the file name as a wildcard? 
-	Do you prefer to design to loop within a folder instead of looking for a specific file? 
-	Is there a specific format for the output file(format, layout, code page)? 
-	Aside from the files processed, should the valid dates also be stored in a relational database table? 
-	Is there a need for job scheduling and notification? 
-	Is there a preference for the date validation to be in C#, SQL or SSIS dataflow?
-	Should valid dates in other formats be considered valid? ei: YYYYMMDD?
-	Should raw row counts be captured? 
-	Is the a desire to compare raw rows with processed and output rows? 
-	is the desire to have error handling in: text, SQL, SSIS packages store, or not at this time? 


