-- a) Parents are not younger than their offsprings
CREATE FUNCTION HW4a_function() 
RETURNS TRIGGER 
LANGUAGE PLPGSQL
AS $$
BEGIN
	IF ((SELECT birthdate FROM specimen WHERE specimen.eid = new.eid)>
		(SELECT birthdate FROM specimen WHERE specimen.eid = new.parent)) THEN
		RETURN NEW;
	ELSE
		RAISE EXCEPTION 'Parents cannot be younger than their offsprings!';
		RETURN NULL;
	END IF;
END;
$$;
CREATE TRIGGER HW4a_trigger 
	BEFORE INSERT on ancestry
	FOR EACH ROW 
	EXECUTE FUNCTION HW4a_function();
	
-- b) AnimalSpecies Habitat information must coincide with the Habitat table. 
-- Temperature should not differ more than 5 degrees of what the species needs.
CREATE FUNCTION HW4b_function() 
RETURNS TRIGGER 
LANGUAGE PLPGSQL
AS $$
BEGIN
	IF EXISTS(SELECT FROM Habitat WHERE Habitat.name = new.Habitat)
	THEN
		IF EXISTS(SELECT FROM Habitat WHERE Habitat.name = new.Habitat
				  AND (new.Temperature BETWEEN (Habitat.Temperature-5.0) AND (Habitat.Temperature+5.0)))
		THEN
			RETURN NEW;
		ELSE
			RAISE EXCEPTION 'Temperature is outside the range the species needs!';
			RETURN NULL;
		END IF;
	ELSE
		RAISE EXCEPTION 'Habitat does not exist!';
		RETURN NULL;
	END IF;
END;
$$;
CREATE TRIGGER HW4b_trigger 
	BEFORE INSERT on AnimalSpecies
	FOR EACH ROW 
	EXECUTE FUNCTION HW4b_function();

-- c) If a compound (Habitat) becomes overbooked then we need a warning. 
-- Throws warning if number of animals in a habitat is larger than the habitat's size
CREATE FUNCTION HW4c_function() 
RETURNS TRIGGER 
LANGUAGE PLPGSQL
AS $$

BEGIN
	IF ((select count(*) as num FROM specimen WHERE hid=new.hid GROUP BY hid)>=
		(select "size" FROM habitat WHERE hid=new.hid))
	THEN
		RAISE NOTICE 'Habitat overcrowding!';
		RETURN NEW;
	ELSE
		RETURN NEW;
	END IF;
END;
$$;
CREATE TRIGGER HW4c_trigger 
	BEFORE INSERT on Specimen
	FOR EACH ROW 
	EXECUTE FUNCTION HW4c_function();

-- d) Offsprings have at MOST one male, one female parent. Consider NULLS
-- NOTE: I do not understand what "Consider NULLS" here means
CREATE FUNCTION HW4d_function() 
RETURNS TRIGGER 
LANGUAGE PLPGSQL
AS $$
BEGIN
	IF (((SELECT COUNT(*) FROM (SELECT a1.eid, a1.parent, s1.gender FROM ancestry a1
		JOIN specimen s1 on parent=s1.eid WHERE s1.gender='F' AND a1.eid=new.eid) AS h) = 1)
		AND ((SELECT COUNT(*) FROM (SELECT a1.eid, a1.parent, s1.gender FROM ancestry a1
		JOIN specimen s1 on parent=s1.eid WHERE s1.gender='M' AND a1.eid=new.eid) AS h) = 1))
	THEN
		RAISE EXCEPTION 'Offsprings can only have at MOST one male, one female parent!';
		RETURN NULL;
	ELSE
		RETURN NEW;
	END IF;
END;
$$;
CREATE TRIGGER HW4d_trigger 
	BEFORE INSERT on Ancestry
	FOR EACH ROW 
	EXECUTE FUNCTION HW4d_function();

