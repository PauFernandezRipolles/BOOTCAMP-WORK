# SPRINT 4: CREACIÓ DE BASES DE DADES I MODELAT
Partint d'alguns arxius CSV dissenyaràs i crearàs la teva base de dades.

## NIVELL 1
Descàrrega els arxius CSV, estudia'ls i dissenya una base de dades amb un esquema d'estrella que contingui, almenys 4 taules de les quals puguis realitzar les següents consultes:

Primer creo la que identifico com a taula de fets:

![image](https://github.com/user-attachments/assets/e6ca457e-9f91-43a3-a81a-e9779985cb48)

Hi carrego les dades: 

![image](https://github.com/user-attachments/assets/5635cbfa-9a6e-4757-90aa-947e2e1fc7de)


Després creo users_ca i hi carrego les dades amb LOAD DATA:

![image](https://github.com/user-attachments/assets/1871fc0e-c25b-4dac-9607-286eaac70691)


![image](https://github.com/user-attachments/assets/b878c807-70b7-4144-95a4-dc7d388a8689)


Repeteixo la operació amb les altres taules de users.

Decideixo unir les taules users creant una amb tots els usuaris i eliminant les anteriors, ja que no te cap avantatge tenir-les separades.

![image](https://github.com/user-attachments/assets/be30273d-7654-411c-9baf-c34a95b37a90)


Creo les PK's per construir el model:

![image](https://github.com/user-attachments/assets/c6344da3-9676-4cce-adb7-a77170ba337d)

y asigno les FK's:

![image](https://github.com/user-attachments/assets/3a9d771f-51aa-4253-a169-b455bac47920)


M'adono que hi ha un problema amb la columna product_ids de transactions. Estan els id's dels diferents productes de la mateixa transacció en una sola columna separats per comes. Decideixo que la opció més ràpida es exportar la taula a excel i, desde allà, convertir text a columna i crear una columna per a cada product_id d'una mateixa transacció. Finalment torno a importar l'arxiu a la base de dades.
Aquest cop ho importo amb Import Wizard i després he de canviar els tipus de dada i crear la FK. Només en puc referir una columna product_id com a FK. Pero pel que es 
demana ara no es problema, mes endavant soluciono el problema amb una taula intermitja.


![image](https://github.com/user-attachments/assets/273f8ed5-533c-450c-ab71-a2957490e762)



### - EXERCICI 1
Realitza una subconsulta que mostri tots els usuaris amb més de 30 transaccions utilitzant almenys 2 taules.

![image](https://github.com/user-attachments/assets/ba60e148-f272-4c41-b096-0d704a353bc3)


### - EXERCICI 2
Mostra la mitjana de la suma de transaccions per IBAN de les targetes de crèdit en la companyia Donec Ltd. utilitzant almenys 2 taules.


![image](https://github.com/user-attachments/assets/f9b4d9e6-28db-47dc-b7ce-eb485e26fb33)


