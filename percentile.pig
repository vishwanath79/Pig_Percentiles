-- Pig calculates percentiles based on a list

-- register '/usr/lib/pig/piggybank.jar';
-- Call python function for percentile calculation;
register '/home/vishs/pcent.py' using jython as pc;

-- Load Data
data = load 'Data.csv' as (value:int);

-- Sort Data
datamunge = ORDER data BY value ASC;

-- Group and feed Data to python function
grpd  = group datamunge ALL; 
pcentlist = FOREACH grpd GENERATE FLATTEN(pc.percentile($1));

-- Flatten and Store

Final = UNION ONSCHEMA datamunge, pcentlist;

--C = group B by (percentiles);
STORE Final into 'FinalList';
