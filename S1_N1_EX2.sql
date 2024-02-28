/* Exercici 2: Realitza la següent consulta: Has d'obtenir el nom,
email i país de cada companyia, ordena les dades en 
funció del nom de les companyies.*/

SELECT  company.company_name as 'Nom', company.email as 'Email' , company.country as 'País'
FROM company
ORDER BY company.company_name

