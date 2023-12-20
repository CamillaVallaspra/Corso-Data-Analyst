CREATE TABLE AEROPORTO (ID INT PRIMARY KEY NOT NULL,
    Citta varchar (50) NOT NULL,
    Nazione varchar (50) NOT NULL,
    NumPiste INT);

INSERT INTO AEROPORTO VALUES (1, 'Bologna', 'Italia', 1);
INSERT INTO AEROPORTO VALUES (2, 'Torino', 'Italia', NULL);
INSERT INTO AEROPORTO VALUES (3, 'Roma', 'Italia', 4);
INSERT INTO AEROPORTO VALUES (4, 'Madrid', 'Spagna', 3);
INSERT INTO AEROPORTO VALUES (5, 'Istanbul', 'Turchia', 3);
INSERT INTO AEROPORTO VALUES (6, 'Parigi', 'Francia', 1);
INSERT INTO AEROPORTO VALUES (7, 'Berlino', 'Germania', NULL);
INSERT INTO AEROPORTO VALUES (8, 'Vilnius', 'Lituania', NULL);
INSERT INTO AEROPORTO VALUES (9, 'Dublino', 'Irlanda', 2);
INSERT INTO AEROPORTO VALUES (10, 'Atene', 'Grecia', 1);

# SELECT * FROM AEROPORTO;

CREATE TABLE VOLO (IdVOLO varchar(5) PRIMARY KEY NOT NULL,
    GiornoSett varchar (10) NOT NULL,
    CittaPart varchar (50) NOT NULL,
    OraPart TIME NOT NULL,
    CittaArr varchar (50) NOT NULL,
    OraArr TIME NOT NULL,
    TipologiaAereo varchar (30) NOT NULL);

INSERT INTO VOLO VALUES ('AZ270', 'Lunedi', 'Atene', '12:30', 'Madrid', '18:30', 'Boeing 737');
INSERT INTO VOLO VALUES ('AZ271', 'Martedi', 'Roma', '6:25', 'Dublino', '10:05', 'Airbus 320');
INSERT INTO VOLO VALUES ('AZ272', 'Domenica', 'Torino', '5:55', 'Berlino', '9:40', 'Boeing 787');
INSERT INTO VOLO VALUES ('AZ273', 'Sabato', 'Vilnius', '3:25', 'Parigi', '8:20', 'Embraer 170');
INSERT INTO VOLO VALUES ('AZ274', 'Venerdi', 'Istanbul', '00:10', 'Atene', '6:20', 'Boeing 787');
INSERT INTO VOLO VALUES ('AZ275', 'Giovedi', 'Berlino', '14:05', 'Bologna', '17:45', 'Airbus 320');
INSERT INTO VOLO VALUES ('AZ276', 'Mercoledi', 'Torino', '6:30', 'Roma', '8:15', 'Airbus 320');
INSERT INTO VOLO VALUES ('AZ277', 'Domenica', 'Parigi', '13:05', 'Bologna', '16:20', 'Boeing 737');
INSERT INTO VOLO VALUES ('AZ278', 'Venerdi', 'Dublino', '2:40', 'Istanbul', '11:55', 'Embraer 195');
INSERT INTO VOLO VALUES ('AZ279', 'Venerdi', 'Madrid', '00:10', 'Atene', '6:20', 'Boeing 787');

# SELECT * FROM VOLO;

CREATE TABLE AEREO (ID INT PRIMARY KEY NOT NULL,
    TipoAereo varchar (50) NOT NULL,
    NumPasseggeri INT,
    QtaMerci INT);

INSERT INTO AEREO VALUES (20, 'Boeing 737', 180, 60);
INSERT INTO AEREO VALUES (21, 'Boeing 787', 210, 70);
INSERT INTO AEREO VALUES (22, 'Embraer 170', 80, 25);
INSERT INTO AEREO VALUES (23, 'Embraer 195', 130, 45);
INSERT INTO AEREO VALUES (24, 'Airbus 320', 180, 40);

# SELECT * FROM AEREO;
/*
SELECT Citta FROM AEROPORTO WHERE NumPiste IS NULL;
SELECT TipoAereo FROM VOLO WHERE CittaPart='Torino';
SELECT CittaPart FROM VOLO WHERE CittaArr='Bologna';
SELECT CittaPart, CittaArr FROM VOLO WHERE IdVOLO='AZ274';
*/
# Quali voli ci sono stati nel weekend in città non italiane?
# SELECT IdVOLO FROM VOLO WHERE GiornoSett IN ('Sabato','Domenica') AND CittaPart NOT IN ('Roma', 'Torino','Bologna');
# Quali sono i voli che non partono dall'Italia?
# SELECT idVOLO from AEROPORTO, VOLO where Citta=CittaPart AND Nazione!='Italia';
# Qual è il tipo di aereo che può portare la quantità di merce maggiore?
# SELECT TipoAereo FROM AEREO ORDER BY QtaMerci DESC LIMIT 1;
# Quale tipo di aereo può portare una quantità di merce maggiore di 50?
# SELECT TipoAereo FROM AEREO WHERE QtaMerci>50;
# Qual è il numero medio di piste negli aeroporti?
# SELECT ROUND(AVG (NumPiste)) FROM AEROPORTO;
# Quali tipi di aerei possono portare tra i 150 e i 200 passeggeri e possono portare la quantità di merce minore?
# SELECT TipoAereo FROM AEREO WHERE NumPasseggeri BETWEEN 150 AND 200 ORDER BY QtaMerci ASC LIMIT 1 ;
# Da quali Nazioni partono gli aerei il venerdi?
# SELECT Nazione FROM AEROPORTO, VOLO WHERE Citta=CittaPart AND GiornoSett= 'Venerdi';
# Fare la media di quanti passeggeri volano di Domenica
# SELECT ROUND(AVG(NumPasseggeri)) FROM AEREO, VOLO WHERE TipologiaAereo=TipoAereo AND GiornoSett='Domenica';



