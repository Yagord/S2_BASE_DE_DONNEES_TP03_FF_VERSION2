DROP TABLE AVION CASCADE CONSTRAINTS;
DROP TABLE TRAJET CASCADE CONSTRAINTS;
DROP TABLE PILOTE CASCADE CONSTRAINTS;

CREATE TABLE AVION
   (
    NumAvion NUMBER(4)  NOT NULL,
	  NomAvion VARCHAR2(20)  NOT NULL,
    Capacite NUMBER(5),
    Localisation VARCHAR2(20),
    CONSTRAINT PK_AVION PRIMARY KEY (NumAvion)  
   ) ;

CREATE TABLE PILOTE
   (
    NumPilote NUMBER(4)  NOT NULL,
    NomPilote VARCHAR2(20)  NOT NULL,
    PrenomPilote VARCHAR2(20)  NOT NULL,
    Ville VARCHAR2(20),
    Salaire NUMBER(6),
    CONSTRAINT PK_PILOTE PRIMARY KEY (NumPilote)  
   ) ;

CREATE TABLE TRAJET
   (
    NumTrajet NUMBER(4) NOT NULL,
    NumPilote NUMBER(4) NOT NULL,
    NumAvion NUMBER(4) NOT NULL,
    VilleDep VARCHAR2(20),
    VilleArr VARCHAR2(20),
    DateDep DATE,
    DateArr DATE,
    CONSTRAINT PK_TRAJET PRIMARY KEY (NumTrajet),
    CONSTRAINT FK_TRAJET_PILOTE  FOREIGN KEY (NumPilote)  REFERENCES PILOTE (NumPilote),
    CONSTRAINT FK_TRAJET_AVION  FOREIGN KEY (NumAvion)  REFERENCES AVION (NumAvion)    
   ) ;
   
insert into AVION values(123, 'A300', 300, 'Nice');
insert into AVION values(234, 'A310', 320, 'Nice');
insert into AVION values(345, 'A300', 300, 'Lyon');
insert into AVION values(456, 'A380', 750, 'Paris');
insert into AVION values(567, 'B747', 350, 'Paris');
insert into AVION values(678, 'B707', 340, 'Paris');
insert into AVION values(789, 'A310', 300, 'Toulouse');
insert into AVION values(890, 'A310', 310, 'Lyon');
insert into AVION values(901, 'A380', 750, 'Lyon');
insert into AVION values(012, 'A380', 780, 'Paris');
   
insert into PILOTE values(1, 'NEMARD', 'Jean', 'Paris', 2100);
insert into PILOTE values(2, 'AROIDE', 'Paul', 'Toulouse', 2100);
insert into PILOTE values(3, 'HAUDUVILLAGE', 'Lidye', 'Nice', 2100);
insert into PILOTE values(4, 'BIDJOBAT', 'Joe', 'Toulouse', 2150);
insert into PILOTE values(5, 'PLOUE DE BRIERES', 'Roger', 'Paris', 2000);
insert into PILOTE values(6, 'MEURDESOIF', 'Jean', 'Paris', 1900);
insert into PILOTE values(7, 'RENAUT', 'Megane', 'Brest', 1820);
insert into PILOTE values(8, 'DIOT', 'Kelly', 'Paris', 3300);
insert into PILOTE values(9, 'PROVISTE', 'Alain', 'Dijon', 5000);
insert into PILOTE values(10, 'COURCI', 'Sarah', 'Paris', 1360);

insert into TRAJET values(1, 1, 123, 'Nice', 'Toulouse', TO_DATE('18/03/2016 08:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 10:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(2, 1, 890, 'Paris', 'Toulouse', TO_DATE('18/03/2016 18:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 20:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(3, 2, 123, 'Toulouse', 'Lyon', TO_DATE('18/03/2016 14:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 16:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(4, 5, 345, 'Toulouse', 'Lyon', TO_DATE('18/03/2016 18:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 20:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(5, 9, 123, 'Paris', 'Nice', TO_DATE('18/03/2016 11:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 12:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(6, 10, 234, 'Lyon', 'Nice', TO_DATE('18/03/2016 11:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 12:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(7, 1, 456, 'Paris', 'Lyon', TO_DATE('18/03/2016 08:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 09:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(8, 8, 456, 'Nice', 'Paris', TO_DATE('18/03/2016 07:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 08:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(9, 1, 890, 'Nantes', 'Lyon', TO_DATE('18/03/2016 09:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 15:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(10, 8, 234, 'Nice', 'Paris', TO_DATE('18/03/2016 12:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 13:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(11, 9, 234, 'Paris', 'Lyon', TO_DATE('18/03/2016 15:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 16:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(12, 1, 234, 'Lyon', 'Nantes', TO_DATE('18/03/2016 16:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 20:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(13, 4, 567, 'Nice', 'Lens', TO_DATE('18/03/2016 11:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 14:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(14, 3, 567, 'Lens', 'Paris', TO_DATE('18/03/2016 15:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 16:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(15, 8, 901, 'Paris', 'Toulouse', TO_DATE('18/03/2016 17:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 18:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(16, 7, 567, 'Paris', 'Toulouse', TO_DATE('18/03/2016 18:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 19:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(17, 5, 890, 'Bordeaux', 'Clermont-Fd', TO_DATE('18/03/2016 21:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 22:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(18, 10, 789, 'Paris', 'Lille', TO_DATE('18/03/2016 11:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 12:00','DD/MM/YYYY HH24:MI'));


/*Partie 1*/
/*1*/
SELECT SUM(TO_NUMBER(TO_CHAR(DateArr, 'hh24'))) - SUM(TO_NUMBER(TO_CHAR(DateDep, 'hh24'))) AS heuresdevol
FROM Trajet
GROUP BY numAvion;

SELECT SUM(DateArr - DateDep)*24 AS heuresdevol
FROM Trajet
GROUP BY numAvion;

/*2*/
DECLARE
  CURSOR c_heuresdevol IS (SELECT numAvion, SUM(TO_NUMBER(TO_CHAR(DateArr, 'hh24'))) - SUM(TO_NUMBER(TO_CHAR(DateDep, 'hh24'))) AS heuresdevol
                            FROM Trajet
                            GROUP BY numAvion);
  l_heuresdeVol NUMBER;
  l_numAvion Avion.numAvion%TYPE;
BEGIN
  OPEN c_heuresdevol;
  FETCH c_heuresdevol INTO l_numAvion, l_heuresdevol;
  WHILE(c_heuresdevol%FOUND) LOOP
    DBMS_OUTPUT.PUT_LINE('L''avion ' || l_numAvion || ' a vole ' || l_heuresdevol || ' heures');
    IF (l_heuresdevol > 8) THEN
      DBMS_OUTPUT.PUT_LINE('!! L''avion 890 doit être révisé !!');
    END IF;
    FETCH c_heuresdevol INTO l_numAvion, l_heuresdevol;
  END LOOP;
  CLOSE c_heuresdevol;
EXCEPTION
  WHEN CURSOR_ALREADY_OPEN THEN
    DBMS_OUTPUT.PUT_LINE('Le curseur est deja ouvert');
END;
/

/*3*/
DECLARE
  CURSOR c_heuresdevol IS (SELECT numAvion, SUM(TO_NUMBER(TO_CHAR(DateArr, 'hh24'))) - SUM(TO_NUMBER(TO_CHAR(DateDep, 'hh24'))) AS heuresdevol
                            FROM Trajet
                            GROUP BY numAvion);
BEGIN
  FOR l_heuresdevol IN c_heuresdevol LOOP
    DBMS_OUTPUT.PUT_LINE('L''avion ' || l_heuresdevol.numAvion || ' a vole ' || l_heuresdevol.heuresdevol || ' heures');
    IF (l_heuresdevol.heuresdevol > 8) THEN
      DBMS_OUTPUT.PUT_LINE('!! L''avion 890 doit être révisé !!');
    END IF;
  END LOOP;
EXCEPTION
  WHEN CURSOR_ALREADY_OPEN THEN
    DBMS_OUTPUT.PUT_LINE('Le urseur est deja ouvert');
END;
/

/*4*/
BEGIN
  FOR l_heuresdevol IN (SELECT numAvion, SUM(TO_NUMBER(TO_CHAR(DateArr, 'hh24'))) - SUM(TO_NUMBER(TO_CHAR(DateDep, 'hh24'))) AS heuresdevol
                        FROM Trajet
                        GROUP BY numAvion) LOOP
    DBMS_OUTPUT.PUT_LINE('L''avion ' || l_heuresdevol.numAvion || ' a vole ' || l_heuresdevol.heuresdevol || ' heures');
    IF (l_heuresdevol.heuresdevol > 8) THEN
      DBMS_OUTPUT.PUT_LINE('!! L''avion 890 doit être révisé !!');
    END IF;
  END LOOP;
EXCEPTION
  WHEN CURSOR_ALREADY_OPEN THEN
    DBMS_OUTPUT.PUT_LINE('Le urseur est deja ouvert');
END;
/

/*5*/
DECLARE
BEGIN
  FOR l_vol IN (SELECT DISTINCT Trajet.villeDep
                FROM Trajet) LOOP
    DBMS_OUTPUT.PUT_LINE('Vols au départ de ' || l_vol.villeDep || ' :');
      FOR l_heuresdevol IN (SELECT Trajet.numAvion, Avion.nomAvion, Trajet.dateDep, Trajet.VilleArr
                            FROM Trajet INNER JOIN Avion ON (Trajet.numAvion = Avion.numAvion)
                            WHERE Trajet.villeDep = l_vol.villeDep
                            ORDER BY Trajet.numAvion) LOOP
        DBMS_OUTPUT.PUT_LINE('L''avion ' || l_heuresdevol.numAvion || ' - ' || l_heuresdeVol.nomAvion || ' – volera le ' ||
        TO_CHAR(l_heuresdevol.dateDep, 'DD/MM/YYYY') || ' à ' || TO_CHAR(l_heuresdevol.dateDep, 'HH24:MI') || ' pour la ville de ' || l_heuresdevol.villeArr);
    END LOOP;
  END LOOP;
END;
/