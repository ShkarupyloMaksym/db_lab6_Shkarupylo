-- Функція для виведення лауреатів, що молодше якогось віку

DROP FUNCTION IF EXISTS get_laur_with_year(integer);

CREATE OR REPLACE FUNCTION get_laur_with_year(max_age integer)
	RETURNS TABLE (full_name varchar, born_date date)
LANGUAGE plpgsql
AS $$

BEGIN
	RETURN QUERY
		SELECT fullname::varchar, born::date
		FROM laureate WHERE (EXTRACT('Year' FROM CURRENT_DATE) - EXTRACT('Year' FROM born)) < max_age;

END;
$$;

