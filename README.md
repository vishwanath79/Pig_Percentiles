Pig_Percentiles
===============

Pig script that uses a python UDF to calculate percentiles.

Feed a data set into Pig comprising of values in a list and output the percentile of each value as per the list.


# Run 
pig percentile.pig

# Output

hadoop fs -getmerge FinalList FinalList
