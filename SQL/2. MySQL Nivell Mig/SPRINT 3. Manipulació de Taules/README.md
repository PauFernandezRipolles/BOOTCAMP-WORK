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

### - EXERCICI 2

### - EXERCICI 3
