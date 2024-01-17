-- a) Partition the Orders table using orderdate with the following constraints:
CREATE TABLE HW2a PARTITION OF Orders
    FOR VALUES FROM ('20060703 00:00:00.000') TO ('20070205 00:00:00.000') PARTITION BY LIST (shipcountry);
CREATE TABLE HW2b PARTITION OF Orders
    FOR VALUES FROM ('20070205 00:00:00.000') TO ('20070819 00:00:00.000');
CREATE TABLE HW2c PARTITION OF Orders
    FOR VALUES FROM ('20070819 00:00:00.000') TO ('20080123 00:00:00.000');
CREATE TABLE HW2d PARTITION OF Orders
    FOR VALUES FROM ('20080123 00:00:00.000') TO ('20080507 00:00:00.000');

-- b) Alter the third partition and add a contraint where the freight cost is higher than 50 €:
ALTER TABLE HW2c ADD CHECK (freight > 50::NUMERIC::MONEY);

-- c) Alter the fourth partition and add a constraint that the shipped date should not be null:
ALTER TABLE HW2d 
ALTER COLUMN shippeddate SET NOT NULL;

-- d) Create two partitions of the first partition (so a partition of partitions) using shipcountry:
CREATE TABLE UKUS PARTITION OF HW2a FOR VALUES IN ('UK','USA');
CREATE TABLE DEFI PARTITION OF HW2a FOR VALUES IN ('Germany','Finland');

-- e) How many rows are in each partition?
-- HW2a: 65
-- HW2b: 187
-- HW2c: 93
-- HW2d: 94
-- UKUS: 38
-- DEFI: 27







