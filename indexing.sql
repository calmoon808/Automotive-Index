DROP INDEX IF EXISTS get_make_titles;
SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';
--time 19.058

SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--time 11.257

SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
--time 15.964

SELECT * FROM car_models WHERE year >= 2010 AND year <= 2015;
--time 134.719

SELECT * FROM car_models WHERE year = 2010;
--time 30.435

CREATE INDEX get_make_titles ON car_models (make_code, model_code);

SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';
--0.803

SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--0.3

SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
--1.658

SELECT * FROM car_models WHERE year >= 2010 AND year <= 2015;
--104.394

SELECT * FROM car_models WHERE year = 2010;
--29.676