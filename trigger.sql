-- Тригер для приведення усіх категорій в один формат, а саме: нижній регістр

CREATE OR REPLACE FUNCTION lower_prize_category() RETURNS trigger  
LANGUAGE 'plpgsql' 
AS 
$$ 
BEGIN 
    UPDATE prize SET category = lower(category)  
    WHERE prize.id = NEW.id;  
    RETURN  NULL;  --  result  is  ignored  since  this  is  an  AFTER trigger 
END; 
$$; 

CREATE TRIGGER prize_category_insert  
AFTER INSERT ON prize 
FOR EACH ROW EXECUTE FUNCTION lower_prize_category();