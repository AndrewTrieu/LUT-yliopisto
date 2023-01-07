-- a) For each customer: articles that the customer bought at the same day of month for two consecutive months, e.g. 16.7.2019 and 16.6.2019.

SELECT DISTINCT t1.n as Customer,t1.d||' and '||t2.d as Time,t1.i||', '||t2.i as Items FROM purchases t1, purchases t2
WHERE (DATE_PART('day', AGE(t1.d, t2.d)))=0 AND (DATE_PART('month', AGE(t1.d, t2.d)))=1 AND t1.n = t2.n

-- b) For each customer: timeslot in which the customer has been active,i.e. number of days between the first and the last purchases

SELECT DISTINCT t1.n as Customer, abs(t1.d-t2.d) as Interval FROM purchases t1, purchases t2
WHERE t1.n = t2.n AND abs(t1.d-t2.d) > 0

-- c) All purchases of customers in February and March of leap years

SELECT * FROM purchases 
WHERE (EXTRACT(MONTH from d)=2 OR EXTRACT(MONTH from d)=3) AND EXTRACT(YEAR from d)::integer % 4 =0

-- d) Get pairs of customers - each with more than a singleton purchase - that have overlapping active purchase periods.

SELECT DISTINCT t1.n as Customer1,t1.d||' and '||t2.d as Time, t3.n as Customer2,t3.d||' and '||t4.d as Time FROM purchases t1
JOIN purchases t2 on t1.n = t2.n AND t1.d <>t2.d AND t1.d<t2.d
JOIN purchases t3 on t1.n <> t3.n
JOIN purchases t4 on t3.n=t4.n AND t3.d<>t4.d AND t3.d < t4.d
WHERE (t1.d,t2.d) OVERLAPS (t3.d,t4.d) AND t1.n<t3.n

-- e) All purchases of the last Fridays of a month.

select * FROM
(SELECT n as Customer,
	CASE
	WHEN extract(isodow from (date_trunc('month', d::date) + interval '1 month' - interval '1 day'))=7 THEN
		CASE 
			WHEN (date_trunc('month', d::date) + interval '1 month' - interval '3 day')=d IS TRUE THEN d
		END
	WHEN extract(isodow from (date_trunc('month', d::date) + interval '1 month' - interval '1 day'))=6 THEN 
		CASE 
			WHEN (date_trunc('month', d::date) + interval '1 month' - interval '2 day')=d IS TRUE THEN d
		END
	WHEN extract(isodow from (date_trunc('month', d::date) + interval '1 month' - interval '1 day'))=5 THEN 
		CASE 
			WHEN (date_trunc('month', d::date) + interval '1 month' - interval '1 day')=d IS TRUE THEN d
		END
	WHEN extract(isodow from (date_trunc('month', d::date) + interval '1 month' - interval '1 day'))=4 THEN 
		CASE 
			WHEN (date_trunc('month', d::date) + interval '1 month' - interval '7 day')=d IS TRUE THEN d
		END
	WHEN extract(isodow from (date_trunc('month', d::date) + interval '1 month' - interval '1 day'))=3 THEN 
		CASE 
			WHEN (date_trunc('month', d::date) + interval '1 month' - interval '6 day')=d IS TRUE THEN d
		END
	WHEN extract(isodow from (date_trunc('month', d::date) + interval '1 month' - interval '1 day'))=2 THEN 
		CASE 
			WHEN (date_trunc('month', d::date) + interval '1 month' - interval '5 day')=d IS TRUE THEN d
		END
	WHEN extract(isodow from (date_trunc('month', d::date) + interval '1 month' - interval '1 day'))=1 THEN 
		CASE 
			WHEN (date_trunc('month', d::date) + interval '1 month' - interval '4 day')=d IS TRUE THEN d
		END
END as Date, i as Items FROM Purchases) AS x
WHERE x.Date is not null



