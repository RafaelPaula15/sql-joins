-- write your queries here
SELECT * FROM owners LEFT JOIN vehicles ON vehicles.owner_id = owners.id;



SELECT first_name, last_name, COUNT(*) 
FROM owners 
JOIN vehicles 
ON vehicles.owner_id = owners.id 
GROUP BY first_name, last_name 
ORDER BY first_name;



SELECT first_name, last_name, ROUND(AVG(price)) AS average_price, COUNT(*) 
FROM owners 
JOIN vehicles 
ON vehicles.owner_id = owners.id
GROUP BY first_name, last_name 
HAVING ROUND(AVG(price)) > 10000 AND COUNT(*) > 1
ORDER BY first_name DESC;