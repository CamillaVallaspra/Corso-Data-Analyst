# Creazione tabella vendite
CREATE TABLE vendite (
    ID_transazione INT PRIMARY KEY,
    categoria_prodotto VARCHAR(50),
    costo DOUBLE,
    sconto DOUBLE
);

# Inserimento set di dati nella tabella vedite
INSERT INTO vendite (ID_transazione, categoria_prodotto, costo, sconto) VALUES
    (1, 'Abbigliamento', 150.00, 0.10),
    (2, 'Abbigliamento', 70.00, 0.60),
    (3, 'Abbigliamento', 97.90, 0.60),
    (4, 'Scarpe', 219.50, 0.40),
    (5, 'Scarpe', 160.00, 0.70),
    (6, 'Scarpe', 199.90, 0.20),
    (7, 'Borse', 324.90, 0.30),
    (8, 'Borse', 125.00, 0.60),
    (9, 'Borse', 229.90, 0.30),
    (10, 'Borse', 190.00, 0.10),
    (11, 'Accessori', 59.90, 0.60),
    (12, 'Accessori', 89.90, 0.200),
    (13, 'Gioielleria', 134.90, 0.70),
    (14, 'Gioielleria', 384.00, 0.20),
    (15, 'Gioielleria', 250.00, 0.10),
    (16, 'Intimo', 39.50, 0.50),
    (17, 'Intimo', 99.90, 0.30),
    (18, 'Intimo', 89.90, 0.60),
    (19, 'Intimo', 139.50, 0.10),
    (20, 'Abbigliamento sportivo', 99.00, 0.60),
    (21, 'Abbigliamento sportivo', 164.90, 0.20),
    (22, 'Seconda mano', 35.00, 0.40),
    (23, 'Seconda mano', 69.90, 0.70),
    (24, 'Seconda mano', 209.50, 0.10),
    (25, 'Articoli per casa', 56.90, 0.70),
    (26, 'Articoli per casa', 38.50, 0.80),
    (27, 'Articoli per casa', 89.90, 0.30),
    (28, 'Articoli per casa', 110.00, 0.20);

# SELECT * FROM vendite;

# Creazione tabella dettagli_vendite
CREATE TABLE dettagli_vendite (
    ID_transazione INT NOT NULL,
    data_transazione DATE,
    quantita INT,
    FOREIGN KEY (ID_transazione) REFERENCES vendite(ID_transazione)
);

# Inserimento set di dati nella tabella dettagli_vendite
INSERT INTO dettagli_vendite (ID_transazione, data_transazione, quantita) VALUES
    (1, "2023-10-10", 2),
    (2, "2023-01-12", 3),
    (3, "2023-06-08", 2),
    (4, "2023-11-17", 1),
    (5, "2023-12-18", 3),
    (6, "2023-02-22", 4),
    (7, "2023-05-11", 2),
    (8, "2023-03-05", 1),
    (9, "2023-04-17", 5),
    (10, "2023-08-18", 2),
    (11, "2023-12-18", 1),
    (12, "2023-07-31", 2),
    (13, "2023-01-26", 1),
    (14, "2023-11-30", 2),
    (15, "2023-09-10", 4),
    (16, "2023-12-18", 3),
    (17, "2023-01-25", 2),
    (18, "2023-02-18", 4),
    (19, "2023-03-17", 1),
    (20, "2023-04-02", 6),
    (21, "2023-05-12", 3),
    (22, "2023-06-06", 1),
    (23, "2023-07-14", 2),
    (24, "2023-08-15", 4),
    (25, "2023-09-14", 2),
    (26, "2023-10-31", 1),
    (27, "2023-11-05", 3),
    (28, "2023-12-18", 3),
    (28, "2023-01-06", 2),
    (27, "2023-02-18", 1),
    (26, "2023-03-29", 2),
    (25, "2023-04-06", 3),
    (24, "2023-05-05", 5),
    (23, "2023-06-24", 6),
    (22, "2023-07-21", 2),
    (21, "2023-08-08", 4),
    (20, "2023-09-15", 3),
    (19, "2023-10-01", 1),
    (18, "2023-11-07", 3),
    (17, "2023-12-08", 5),
    (16, "2023-01-26", 1),
    (15, "2023-01-18", 2),
    (14, "2023-02-24", 3),
    (13, "2023-03-04", 4),
    (12, "2023-04-05", 1),
    (11, "2023-04-12", 5),
    (10, "2023-05-29", 2),
    (9, "2023-06-22", 6),
    (8, "2023-07-01", 3),
    (7, "2023-07-25", 2),
    (6, "2023-08-02", 4),
    (5, "2023-08-07", 1),
    (4, "2023-09-11", 2),
    (3, "2023-10-23", 3),
    (2, "2023-11-11", 5),
    (1, "2023-12-26", 6);
 
# SELECT * FROM dettagli_vendite

# Creazione tabella clienti
CREATE TABLE clienti (
    IDCliente INT,
    IDVendita INT,
    FOREIGN KEY (IDVendita) REFERENCES vendite (ID_transazione)
);

# Inserimento set di dati nella tabella clienti
INSERT INTO clienti (IDCliente, IDVendita) VALUES
    (101, 2),
    (102, 4),
    (102, 6),
    (102, 8),
    (105, 10),
    (106, 12),
    (107, 14),
    (101, 16),
    (102, 18),
    (110, 20),
    (101, 22),
    (102, 24),
    (108, 26),
    (101, 28),
    (105, 1),
    (106, 5),
    (107, 7),
    (104, 9),
    (104, 11),
    (110, 13),
    (101, 15),
    (102, 17),
    (103, 19),
    (104, 21),
    (104, 23),
    (106, 25),
    (107, 27);

# SELECT * FROM clienti;

# 3.1 Seleziona tutte le vendite avvenute in una specifica data.
SELECT *
FROM vendite v
INNER JOIN dettagli_vendite d ON d.ID_transazione=v.ID_transazione 
WHERE DATE(data_transazione)="2023-12-18";

# 3.2 Elenco delle vendite con sconti maggiori del 50%.
SELECT d.ID_transazione, d.data_transazione, d.quantita, v.categoria_prodotto, v.costo, v.sconto
FROM dettagli_vendite d
INNER JOIN vendite v ON d.ID_transazione=v.ID_transazione
WHERE sconto>"0.50";

# 4.1 Calcola il totale delle vendite per categoria. N.B. Io ho inteso che ai prezzi contenuti nella colonna "costo" sia già stato applicato lo sconto in tutti i punti dell'esercizio
SELECT v.categoria_prodotto, SUM(v.costo*d.quantita) AS TotaleVenditePerCategoria
FROM vendite v
INNER JOIN dettagli_vendite d ON v.ID_transazione=d.ID_transazione
GROUP BY categoria_prodotto;

# 4.2 Trova il numero totale di prodotti venduti per ogni categoria.
SELECT v.categoria_prodotto, SUM(d.quantita) AS TotaleProdottiVendutiPerCategoria
FROM vendite v
INNER JOIN dettagli_vendite d ON v.ID_transazione=d.ID_transazione
GROUP BY v.categoria_prodotto;

# 5.1 Seleziona le vendite dell ultimo trimestre.
SELECT *
FROM vendite v
INNER JOIN dettagli_vendite d ON v.ID_transazione=d.ID_transazione
WHERE data_transazione BETWEEN "2023-10-01" AND "2023-12-31";

# 5.2 Raggruppa le vendite per mese e calcola il totale delle vendite per ogni mese.
SELECT MONTH(d.data_transazione) AS Mese, v.categoria_prodotto, v.costo, d.quantita
FROM dettagli_vendite d
INNER JOIN vendite v ON d.ID_transazione=v.ID_transazione
GROUP BY Mese, v.categoria_prodotto, v.costo, d.quantita
ORDER BY Mese;

SELECT MONTH(d.data_transazione) AS Mese, SUM(v.costo*d.quantita) AS TotaleVenditePerMese
FROM dettagli_vendite d
INNER JOIN vendite v ON d.ID_transazione=v.ID_transazione
GROUP BY Mese
ORDER BY Mese;

# 7.1 Trova la categoria con lo sconto medio più alto.
SELECT categoria_prodotto, AVG(sconto) AS ScontoMedio
FROM vendite
GROUP BY categoria_prodotto
ORDER BY ScontoMedio DESC LIMIT 1;

# 8.1 Confronta le vendite mese per mese per vedere l'incremento o il decremento delle vendite. Calcola l’incremento o decremento mese per mese.
SELECT MONTH(d.data_transazione) AS Mese, SUM(v.costo*d.quantita) AS TotaleVendite,
    SUM(v.costo*d.quantita) - LAG(SUM(v.costo*d.quantita), 1, 0) OVER (ORDER BY MONTH(d.data_transazione)) AS IncrementoDecremento
FROM vendite v
INNER JOIN dettagli_vendite d ON d.ID_transazione=v.ID_transazione
GROUP BY Mese
ORDER BY Mese;

# 9.1 Confronta le vendite totali in diverse stagioni. N.B. Io ho deciso di prendere come stagioni quelle della moda: Autunno/Inverno; Primavera/Estate.
SELECT CASE
    WHEN MONTH(d.data_transazione) BETWEEN 3 AND 8 THEN 'Primavera/Estate'
    ELSE 'Autunno/Inverno' END AS Stagione, SUM(v.costo*d.quantita) AS TotaleVendite
FROM vendite v
JOIN dettagli_vendite d ON d.ID_transazione=v.ID_transazione
GROUP BY Stagione
ORDER BY Stagione;

# 10.1 Supponendo di avere una tabella clienti con i campi IDCliente e IDVendita, scrivi una query per trovare i top 5 clienti con il maggior numero di acquisti. 
SELECT IDCliente AS MiglioriClienti, COUNT(IDVendita) As NumeroAcquisti
FROM clienti
GROUP BY IDCliente
ORDER BY NumeroAcquisti DESC LIMIT 5;

# QUERY AGGIUNTIVE 
# 1-Visualizzare l'ID dei clienti che hanno speso più di 1000 euro nel 2022
SELECT DISTINCT c.IDCliente
FROM clienti c
INNER JOIN vendite v ON c.IDVendita=v.ID_transazione
INNER JOIN dettagli_vendite d ON v.ID_transazione=d.ID_transazione
WHERE v.costo*d.quantita>1000;

# 2-Visualizzare i mesi in cui sono stati fatti più di 5 ordini
SELECT MONTH(data_transazione) AS MesiProficui, COUNT(*) AS NumeroOrdini
FROM dettagli_vendite
GROUP BY MONTH(data_transazione)
HAVING COUNT(*)>5
ORDER BY MONTH(data_transazione);

# 3-Visualizzare il totale delle vendite effettuate nel mese Dicembre
SELECT SUM(v.costo*d.quantita) AS TotaleVenditeDicembre
FROM vendite v 
INNER JOIN dettagli_vendite d ON v.ID_transazione=d.ID_transazione
WHERE MONTH(data_transazione)=12;

# 4-Visualizzare la categoria di prodotti che presenta il prodotto con il prezzo più alto
SELECT categoria_prodotto, MAX(costo) AS PrezzoMaggiore
FROM vendite
GROUP BY categoria_prodotto
ORDER BY MAX(costo) DESC LIMIT 1;

# 5- Visualizzare quanti giorni fa è stato effettuato l'ultimo ordine
SELECT DATEDIFF(CURDATE(), MAX(data_transazione)) AS GiorniIntercorsiUltimoOrdine
FROM dettagli_vendite;
