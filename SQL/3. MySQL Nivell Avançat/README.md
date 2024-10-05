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


Finalment el model queda així:


![image](https://github.com/user-attachments/assets/bc06ca37-fb19-4692-a9d2-4e4dd49d7da9)


![image](https://github.com/user-attachments/assets/921df818-7636-4b25-8856-8125d0900ba6)



### - EXERCICI 1
Realitza una subconsulta que mostri tots els usuaris amb més de 30 transaccions utilitzant almenys 2 taules.

![image](https://github.com/user-attachments/assets/ba60e148-f272-4c41-b096-0d704a353bc3)


### - EXERCICI 2
Mostra la mitjana de la suma de transaccions per IBAN de les targetes de crèdit en la companyia Donec Ltd. utilitzant almenys 2 taules.


![image](https://github.com/user-attachments/assets/f9b4d9e6-28db-47dc-b7ce-eb485e26fb33)



## NIVELL 2
Crea una nova taula que reflecteixi l'estat de les targetes de crèdit basat en si les últimes tres transaccions van ser declinades i genera la següent consulta:

### - EXERCICI 1
Quantes targetes estan actives?

Primer creo la nova taula i modifico la columan timestamp per facilitar la detecció de les 3 útlimes transaccions:

![image](https://github.com/user-attachments/assets/d1257ec2-492f-482b-a64b-73cc2ee77e62)

Després hi carrego les dades utilitzant subquerys:

![image](https://github.com/user-attachments/assets/101b85e0-5e69-40e6-821c-c2eca04a4cff)


La taula queda així:

![image](https://github.com/user-attachments/assets/c84bc88b-e753-4cbc-845d-81f6cf97894d)


Per respondre a la pregunta de, cuantes estan inactives, he de tenir en compte que, per tal que estiguin inactives, han de tenir les 3 últimes transaccions declinades.
Creo una columna que indiqui si ho estan o no:


![image](https://github.com/user-attachments/assets/259066b9-7864-4df2-8ec7-e80f8da4315e)



## NIVELL 2
Crea una taula amb la qual puguem unir les dades del nou arxiu products.csv amb la base de dades creada, tenint en compte que des de transaction tens product_ids. Genera la següent consulta:


### - EXERCICI 1
Necessitem conèixer el nombre de vegades que s'ha venut cada producte.

Després d'haver creat la taula en el Nivell 1 modificant-la en Excel, ara veig que, per poder comptar les vendes de cada producte, no és suficient. En lloc de tornar a crear la taula transactions de nou, creo una taula intermèdia entre transactions i products que s'anomenarà compres i tindrà un id propi com a PK, transaction_id com a FK i product_id per a cada producte comprat. Cada fila tindrà un sol producte i es repetiria transaction_id tantes vegades com productes en la mateixa transacció.
Per fer-ho, utilitzo PowerQuery, ja que és la manera més ràpida i clara. Exporto la taula des de PowerBI i la importo utilitzant Import Wizard i creo les PK i FK's.

![image](https://github.com/user-attachments/assets/3038a93d-ce1f-4535-aaa7-f26aaa07779f)


Responc a la pregunta:

![image](https://github.com/user-attachments/assets/b3312c22-c135-4fce-88f3-e630d0964369)


Finalment retoco les FK's per donar coherència al model final.


![image](https://github.com/user-attachments/assets/8e7f6fcf-35ee-494d-b5fc-a0003912a3bd)



Queda així:


![image](https://github.com/user-attachments/assets/db9afaf3-af16-4c13-a050-808aa6a2412c)








