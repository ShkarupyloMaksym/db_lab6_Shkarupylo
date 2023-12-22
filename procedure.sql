-- Процедура для виведення лауреатів і їх статі, що належать до якогось університету (організації)

DROP PROCEDURE IF EXISTS get_laur_from_org(varchar(50));

CREATE OR REPLACE PROCEDURE get_laur_from_org(name_arg varchar(50))
LANGUAGE plpgsql
AS $$

DECLARE record_name laureate.fullname%TYPE;
DECLARE record_gender laureate.gender%TYPE;

BEGIN
	SELECT fullname, gender into record_name, record_gender
		FROM laureate WHERE organizationname = name_arg;
	RAISE INFO 'Laureate_name: %, Laureate_gender: %',
	TRIM(record_name), TRIM(record_gender);
END;
$$;

CALL get_laur_from_org('Harvard University');
