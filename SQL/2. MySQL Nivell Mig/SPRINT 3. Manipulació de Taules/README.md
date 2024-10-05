# SPRINT 3 : CREACIÓ I MANIPULACIÓ DE TAULES
En aquest sprint, es simula una situació empresarial en la qual has de realitzar diverses manipulacions en les taules de la base de dades. 
Al seu torn, hauràs de treballar amb índexs i vistes. En aquesta activitat, continuaràs treballant amb la base de dades que conté informació d'una empresa dedicada 
a la venda de productes en línia. En aquesta tasca, començaràs a treballar amb informació relacionada amb targetes de crèdit.

## NIVELL 1


### - EXERCICI 1
La teva tasca és dissenyar i crear una taula anomenada "credit_card" que emmagatzemi detalls crucials sobre les targetes de crèdit. La nova taula ha de ser capaç d'identificar de manera única cada targeta i establir una relació adequada amb les altres dues taules ("transaction" i "company"). Després de crear la taula serà necessari que ingressis la informació del document denominat "dades_introduir_credit". Recorda mostrar el diagrama i realitzar una breu descripció d'aquest.

![image](https://github.com/user-attachments/assets/f99b3a22-bc8a-44da-bf50-803483bd5607)

...

![image](https://github.com/user-attachments/assets/856b1613-0839-4d2c-b11d-900a74ab653e)

D'aquesta manera la taula queda vinculada amb la taula de fets Transactions com una taula de dimensió i a través d'aquesta a l'altra taula de dimensió company. 
Així formem un model d'estrella.


### - EXERCICI 2
El departament de Recursos Humans ha identificat un error en el número de compte de l'usuari amb el: IBAN CcU-2938. Es requereix actualitzar la informació que 
identifica un compte bancari a nivell internacional (identificat com "IBAN"): R323456312213576817699999. Recorda mostrar que el canvi es va realitzar.

![image](https://github.com/user-attachments/assets/2a2a1a3e-80a5-4c80-a64c-e79382dd4e9b)


### - EXERCICI 3
En la taula "transaction" ingressa un nou usuari amb la següent informació:
Id	108B1D1D-5B23-A76C-55EF-C568E49A99DD
credit_card_id	CcU-9999
company_id	b-9999
user_id	9999
lat	829.999
longitude	-117.999
amount	111.11
declined	0	

![image](https://github.com/user-attachments/assets/86d4ac7a-0146-4c54-8f19-6e0850da48e9)


### - EXERCICI 4
Des de recursos humans et sol·liciten eliminar la columna "pan" de la taula credit_*card. 
Recorda mostrar el canvi realitzat.

![image](https://github.com/user-attachments/assets/1673b39e-96c4-4d29-8109-422f208b1dca)



## NIVELL 2

### - EXERCICI 1
Elimina de la taula transaction el registre amb ID 02C6201E-D90A-1859-B4EE-88D2986D3B02 de la base de dades.

![image](https://github.com/user-attachments/assets/b5d3e8b9-855a-4718-9d21-5a20329c4c25)


### - EXERCICI 2
La secció de màrqueting desitja tenir accés a informació específica per a realitzar anàlisi i estratègies efectives. S'ha sol·licitat crear una vista que proporcioni detalls clau sobre les companyies i les seves transaccions. Serà necessària que creïs una vista anomenada VistaMarketing que contingui la següent informació: 
Nom de la companyia. 
Telèfon de contacte. 
País de residència. 
Mitjana de compra realitzat per cada companyia. 
Presenta la vista creada,ordenant les dades de major a menor mitjana de compra.

![image](https://github.com/user-attachments/assets/e135552b-7f08-41a3-bd11-a9186df93ac4)


### - EXERCICI 3
Filtra la vista VistaMarketing per a mostrar només les companyies que tenen el seu país de residència en "Germany".

![image](https://github.com/user-attachments/assets/a9780d99-5c3d-495c-9068-edd59265f877)



## NIVELL 3

### - EXERCICI 1
La setmana vinent tindràs una nova reunió amb els gerents de màrqueting. Un company del teu equip va realitzar modificacions en la base de dades, però no recorda com les va realitzar. Et demana que l'ajudis a deixar els comandos executats per a obtenir el següent diagrama:

![image](https://github.com/user-attachments/assets/8ffedefa-a604-4dba-938e-680d704a0356)



![image](https://github.com/user-attachments/assets/1d7e2e34-ee15-4d60-9ed4-1cef45cb7619)

...

![image](https://github.com/user-attachments/assets/6b85fdd5-52f5-4115-90f0-4b7c93c33c09)


### - EXERCICI 2
L'empresa també et sol·licita crear una vista anomenada "InformeTecnico" que contingui la següent informació:
ID de la transacció
Nom de l'usuari/ària
Cognom de l'usuari/ària
IBAN de la targeta de crèdit usada.
Nom de la companyia de la transacció realitzada.
Assegura't d'incloure informació rellevant de totes dues taules i utilitza àlies per a canviar de nom columnes segons sigui necessari.
Mostra els resultats de la vista, ordena els resultats de manera descendent en funció de la variable ID de transaction.

![image](https://github.com/user-attachments/assets/72c76564-0ad1-47dd-9fa6-896a67a0caac)

