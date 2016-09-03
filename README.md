#TextFileSample

Use Case
Marketing has received a data file that may have been corrupted when it was exported. We need to extract all of the dates that have occurred in the past from this document.
Criteria.

-1. A date is defined as MMDDYYYY 
	a.ie: April 3, 2011 would be 03032011.
-2. A past date is defined by any date that occurred before today. 
	a. ie: If today is 09/29/2016, all dates 08282016 or earlier would be valid.
-3. The data file does not contain time information.
-4. The resulting data output should be a list of dates.

Developer Notes
-1. The corresponding datafile is named MarketingDataFile.txt
-2. State any assumptions you are making.
-3. You can use any library in the .Net framework. 
-4. Write a brief explanation about your design and why you chose it.
-5. Please post your solution on GitHub. We may ask questions within GitHub as a part of our code review.
-a. Handy tip: Performing all of your work within a branch in the repo and creating a Pull Request will allow us to link conversations to specific lines of code..
-6. We expect you may have questions about the exercise and requirements. Ask them…
