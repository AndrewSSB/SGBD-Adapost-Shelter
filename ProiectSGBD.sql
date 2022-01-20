--CREARE SI INSERARE IN TABELA ALIMENT
create table ALIMENT
(id_aliment number(5) constraint pk_aliment PRIMARY KEY,
brand varchar2(15),
nume_aliment varchar2(30),
pret number(5,2),
cantitate number(5),
data_expirare date default sysdate);

ALTER TABLE ALIMENT MODIFY nume_aliment NOT NULL;
ALTER TABLE ALIMENT MODIFY data_expirare NOT NULL;

create sequence seq_aliment
increment by 1
start with 10
maxvalue 100
nocycle;


INSERT INTO ALIMENT
VALUES(SEQ_ALIMENT.NEXTVAL, 'GRANULI', 'Anti-Hairball', 20.5, 10 ,to_date('30/06/2022','dd/mm/yyyy'));
INSERT INTO ALIMENT
VALUES(SEQ_ALIMENT.NEXTVAL, 'WHISKAS', 'Multipack Pliculete', 17.5, 9, to_date('01/01/2022','dd/mm/yyyy'));
INSERT INTO ALIMENT
VALUES(SEQ_ALIMENT.NEXTVAL, 'HEALTHY-PET', 'Multipack Junior Pliculete', 40.99, 5, to_date('04/02/2021','dd/mm/yyyy'));
INSERT INTO ALIMENT
VALUES(SEQ_ALIMENT.NEXTVAL, 'YOUR-PET', 'Multipack Senior Pliculete', 50.19, 4, to_date('13/06/2021','dd/mm/yyyy'));
INSERT INTO ALIMENT
VALUES(SEQ_ALIMENT.NEXTVAL, 'FORZZA', 'Pernute Crocante', 19.99, 21, to_date('30/07/2023','dd/mm/yyyy'));
INSERT INTO ALIMENT
VALUES(SEQ_ALIMENT.NEXTVAL, 'CATPET', 'Hrana umeda', 30, 17,to_date('01/03/2022','dd/mm/yyyy'));
INSERT INTO ALIMENT
VALUES(SEQ_ALIMENT.NEXTVAL, 'GRANULI', 'Conserva-Ton', 60.39, 11,to_date('30/06/2022','dd/mm/yyyy'));
INSERT INTO ALIMENT
VALUES(SEQ_ALIMENT.NEXTVAL, 'WHISKAS', 'Conserva-Pui', 17.49,69,to_date('12/02/2021','dd/mm/yyyy'));
INSERT INTO ALIMENT
VALUES(SEQ_ALIMENT.NEXTVAL, 'GRANULI', 'Conserva-Pui', 23.59, 42, to_date('22/03/2022','dd/mm/yyyy'));
INSERT INTO ALIMENT
VALUES(SEQ_ALIMENT.NEXTVAL, 'GRANULI', 'Anti-Hairball', 24.99, 13,to_date('17/09/2023','dd/mm/yyyy'));
INSERT INTO ALIMENT
VALUES(SEQ_ALIMENT.NEXTVAL, 'CATPET', 'Conserva-Miel', 24.5, 15 ,to_date('01/01/2023','dd/mm/yyyy'));
INSERT INTO ALIMENT
VALUES(SEQ_ALIMENT.NEXTVAL, 'CATPET', 'Pernute Moi', 22.99, 27,to_date('19/10/2022','dd/mm/yyyy'));
INSERT INTO ALIMENT
VALUES(SEQ_ALIMENT.NEXTVAL, 'FORZZA', 'Pernute Umede', 9.99, 32, to_date('28/04/2022','dd/mm/yyyy'));
INSERT INTO ALIMENT
VALUES(SEQ_ALIMENT.NEXTVAL, 'YOUR-PET', 'Sterile Pui', 10.99, 10,to_date('31/12/2022','dd/mm/yyyy'));
INSERT INTO ALIMENT
VALUES(SEQ_ALIMENT.NEXTVAL, 'YOUR-PET', 'Indoor Pui', 20.5, 37,to_date('22/06/2023','dd/mm/yyyy'));
INSERT INTO ALIMENT
VALUES(SEQ_ALIMENT.NEXTVAL, 'HEALTHY-PET', 'Sterile Vita', 80.5, 7,to_date('31/07/2024','dd/mm/yyyy'));
INSERT INTO ALIMENT
VALUES(SEQ_ALIMENT.NEXTVAL, 'WHISKAS', 'Pachet-Economic', 99.99, 2,to_date('22/04/2022','dd/mm/yyyy'));
INSERT INTO ALIMENT
VALUES(SEQ_ALIMENT.NEXTVAL, 'WHISKAS', 'Dentabites', 15.5, 11, to_date('19/08/2021','dd/mm/yyyy'));
INSERT INTO ALIMENT
VALUES(SEQ_ALIMENT.NEXTVAL, 'WHISKAS', 'VItamin E-Xtra', 79.5, 46 ,to_date('07/07/2027','dd/mm/yyyy'));

--CREARE SI INSERARE IN TABELA LOCATIE
create table LOCATIE(
id_locatie number(5) constraint pk_locatie PRIMARY KEY,
judet varchar2(20),
strada varchar2(25), 
oras varchar2(20), 
numar number(5));

ALTER TABLE LOCATIE MODIFY judet NOT NULL;
ALTER TABLE LOCATIE MODIFY oras NOT NULL;
ALTER TABLE LOCATIE MODIFY strada NOT NULL;


create sequence seq_locatie
increment by 1
start with 1
maxvalue 100
nocycle;

INSERT INTO LOCATIE VALUES (SEQ_LOCATIE.NEXTVAL,'OLT', 'ALEEA MUNCII', 'SLATINA' , 7);
INSERT INTO LOCATIE VALUES (SEQ_LOCATIE.NEXTVAL,'BRASOV', 'FLORILOR', 'BRASOV', 19);
INSERT INTO LOCATIE VALUES (SEQ_LOCATIE.NEXTVAL,'CONSTANTA', 'VIILOR', 'MANGALIA', 96);
INSERT INTO LOCATIE VALUES (SEQ_LOCATIE.NEXTVAL,'DOLJ', 'UNIRII', 'CALAFAT', 157);
INSERT INTO LOCATIE VALUES (SEQ_LOCATIE.NEXTVAL,'CLUJ', 'TEILOR', 'TURDA',  9);
INSERT INTO LOCATIE VALUES (SEQ_LOCATIE.NEXTVAL,'BOTOSANI', 'ION CREANGA', 'BOTOSANI', 28);
INSERT INTO LOCATIE VALUES (SEQ_LOCATIE.NEXTVAL,'BUCURESTI', 'BISERICII', 'BUCURESTI', 77);
INSERT INTO LOCATIE VALUES (SEQ_LOCATIE.NEXTVAL,'SIBIU', 'CRINULUI', 'SIBIU', 139);
INSERT INTO LOCATIE VALUES (SEQ_LOCATIE.NEXTVAL,'GALATI', 'PLOPILOR', 'TECUCI', 73);
INSERT INTO LOCATIE VALUES (SEQ_LOCATIE.NEXTVAL,'MURES', 'OITUZ', 'SIGHISOARA', 45);
INSERT INTO LOCATIE VALUES (SEQ_LOCATIE.NEXTVAL,'TIMIS', 'PACII', 'LUGOJ', 232);
INSERT INTO LOCATIE VALUES (SEQ_LOCATIE.NEXTVAL,'NEAMT', 'LUJERULUI', 'PIATRA NEAMT', 830);

--CRERE SI INSERARE IN TABELA ADAPOST
create table ADAPOST(
id_adapost number(5) constraint pk_adapost PRIMARY KEY,
nume_adapost varchar2(30),
telefon varchar2(10),
id_locatie number(5), constraint fk_locatie_adapost foreign key(id_locatie) references LOCATIE(id_locatie));

ALTER TABLE ADAPOST MODIFY nume_adapost NOT NULL;
ALTER TABLE ADAPOST MODIFY id_locatie NOT NULL;

create sequence seq_adapost
increment by 1
start with 1001
maxvalue 2000
nocycle;

INSERT INTO ADAPOST VALUES (SEQ_ADAPOST.NEXTVAL, 'RAZA DE SPERANTA', '0248294466', 1);
INSERT INTO ADAPOST VALUES (SEQ_ADAPOST.NEXTVAL, 'DOGS FIRST', '0214904007', 6);
INSERT INTO ADAPOST VALUES (SEQ_ADAPOST.NEXTVAL, 'ANIMAL LIFE','0251370070',3 );
INSERT INTO ADAPOST VALUES (SEQ_ADAPOST.NEXTVAL, 'ANIMAL RESCUE', '0734301394', 5);
INSERT INTO ADAPOST VALUES (SEQ_ADAPOST.NEXTVAL, 'NEW LIFE', '0777000000', 2);
INSERT INTO ADAPOST VALUES (SEQ_ADAPOST.NEXTVAL, 'OUR FRIENDS', '0786235333', 7);
INSERT INTO ADAPOST VALUES (SEQ_ADAPOST.NEXTVAL, 'ZBURATORII', '0763223453', 9);
INSERT INTO ADAPOST VALUES (SEQ_ADAPOST.NEXTVAL, 'CAT LIFE', '0745375312', 11);
INSERT INTO ADAPOST VALUES (SEQ_ADAPOST.NEXTVAL, 'RED PANDA', '0721234222', 8);
INSERT INTO ADAPOST VALUES (SEQ_ADAPOST.NEXTVAL, 'CATEI ODAI', '0734231224', 12);
INSERT INTO ADAPOST VALUES (SEQ_ADAPOST.NEXTVAL, 'ASPA BUCURESTI', '0756320488', 10);
INSERT INTO ADAPOST VALUES (SEQ_ADAPOST.NEXTVAL, 'STEAUA SPERANTEI', '0775200135', 4);

--CREARE SI INSERARE IN TABELA ANIMAL
create table ANIMAL(
id_animal number(5) constraint pk_animal PRIMARY KEY,
data_inmatriculare date default sysdate,
specie_animal varchar2(50),
greutate float(4),
inaltime float(4),
varsta number(4),
sex varchar2(1),
id_adapost number(5),
id_adoptant number(5),
constraint fk_animal_adoptant foreign key (id_adoptant) references ADOPTANTI(id_adoptant),
constraint fk_animal_adapost foreign key(id_adapost) references ADAPOST(id_adapost));

ALTER TABLE ANIMAL MODIFY data_inmatriculare NOT NULL;
ALTER TABLE ANIMAL MODIFY specie_animal NOT NULL;
ALTER TABLE ANIMAL MODIFY id_adapost NOT NULL;

create sequence seq_animal
increment by 1
start with 1
maxvalue 500
nocycle;

INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('30/06/2015','dd/mm/yyyy'), 'CAINE', 5.8, 0.54, 2, 'M', 1001, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('12/11/2017','dd/mm/yyyy'), 'PISICA', 3.2, 0.44, 1, 'M', 1001, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('08/05/2019','dd/mm/yyyy'), 'CAINE', 9.3, 1.21, 3, 'M', 1001, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('23/01/2020','dd/mm/yyyy'), 'PISICA', 2.6, 0.31, 2, 'F',1001, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('15/08/2014','dd/mm/yyyy'), 'PISICA', 3.7, 0.48, 6, 'F', 1001, NULL);

INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('11/11/2011','dd/mm/yyyy'), 'CAINE', 4.9, 0.51, 8, 'F', 1002, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('01/06/2012','dd/mm/yyyy'), 'PISICA', 1.94, 0.25, 4, 'M',1002, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('01/09/2008','dd/mm/yyyy'), 'CAINE', 4.84, 0.43, 4, 'F',1002, NULL);

INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('14/05/2011','dd/mm/yyyy'), 'PISICA', 4.3, 0.39, 7, 'M', 1003, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('26/02/2012','dd/mm/yyyy'), 'CAINE', 6.91, 0.57, 1, 'M', 1003, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('23/06/2007','dd/mm/yyyy'), 'CAINE', 9.4, 0.98, 4, 'M', 1003, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('24/05/2015','dd/mm/yyyy'), 'CAINE', 10.1, 1.32, 3, 'F',1003, NULL);

INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('11/04/2021','dd/mm/yyyy'), 'PISICA', 9.42, 0.49, 3, 'F', 1004, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('04/02/2021','dd/mm/yyyy'), 'CAINE', 8.54, 0.83, 4, 'M', 1004, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('19/03/2021','dd/mm/yyyy'), 'CAINE', 5.65, 0.37, 5, 'F', 1004, NULL);

INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('18/01/2021','dd/mm/yyyy'), 'PISICA', 6.74, 0.37, 1, 'F', 1005, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('25/02/2021','dd/mm/yyyy'), 'CAINE', 6.66, 0.64, 1, 'M', 1005, NULL);

INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('06/06/2021','dd/mm/yyyy'), 'PISICA', 3.84, 0.24, 1, 'F',1006, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('30/05/2021','dd/mm/yyyy'), 'CAINE', 5.24, 0.34, 1, 'F', 1006, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('19/05/2021','dd/mm/yyyy'), 'PISICA', 5.81, 0.32, 1, 'F', 1006, NULL);

INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('01/11/2020','dd/mm/yyyy'), 'CAINE', 7.83, 0.71, 2, 'M',1007, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('18/03/2021','dd/mm/yyyy'), 'PISICA', 7.21, 0.28, 1, 'F', 1007, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('17/02/2021','dd/mm/yyyy'), 'CAINE', 5.19, 0.4, 1, 'F', 1007, NULL);

INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('09/03/2021','dd/mm/yyyy'), 'PISICA', 9.41, 0.45, 6, 'F', 1008, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('28/01/2021','dd/mm/yyyy'), 'CAINE', 7.4, 0.66, 4, 'M', 1008, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('13/06/2021','dd/mm/yyyy'), 'PISICA', 3.29, 0.27, 3, 'M', 1008, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('09/12/2020','dd/mm/yyyy'), 'CAINE', 11.2, 1.291, 3, 'M', 1008, NULL);

INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('11/04/2021','dd/mm/yyyy'), 'PISICA', 4.91, 0.39, 7, 'F',1009, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('06/02/2021','dd/mm/yyyy'), 'CAINE', 6.78, 0.627, 9, 'F',1009, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('27/12/2020','dd/mm/yyyy'), 'PISICA', 5.89, 0.40, 8, 'F', 1009, NULL);

INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('23/10/2019','dd/mm/yyyy'), 'CAINE', 4.53, 0.32, 3, 'M', 1010, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('15/03/2018','dd/mm/yyyy'), 'CAINE', 3.61, 0.29, 4, 'M', 1010, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('29/04/2020','dd/mm/yyyy'), 'CAINE', 2.37, 0.26, 2, 'F', 1010, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('21/09/2020','dd/mm/yyyy'), 'PISICA', 5.89, 0.34, 2, 'M', 1010, NULL);

INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('04/04/2021','dd/mm/yyyy'), 'PISICA', 3.76, 0.28, 1, 'F', 1011, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('11/06/2020','dd/mm/yyyy'), 'CAINE', 8.91, 0.52, 4, 'M', 1011, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('09/03/2017','dd/mm/yyyy'), 'PISICA', 4.23, 0.31, 6, 'F', 1011, NULL);

INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('29/06/2020','dd/mm/yyyy'), 'CAINE', 9.34, 0.89, 6, 'F', 1012, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('19/07/2020','dd/mm/yyyy'), 'PISICA', 5.62, 0.42, 4, 'F', 1012, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('23/11/2021','dd/mm/yyyy'), 'CAINE', 10.43, 1.08, 9, 'F', 1012, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('14/01/2021','dd/mm/yyyy'), 'CAINE', 4.53, 0.37, 2, 'F', 1012, NULL);
INSERT INTO ANIMAL VALUES (SEQ_ANIMAL.NEXTVAL, to_date('21/05/2018','dd/mm/yyyy'), 'PISICA', 3.61, 0.26, 1, 'F', 1012, NULL);

--CREARE SI INSERARE IN TABELA FISA MEDICALA
create table FISA_MEDICALA(
id_fisa number(5) constraint pk_fisa_medicala PRIMARY KEY,
simptome varchar2(100),
tratament varchar2(100),
detalii varchar2(200),
id_animal number(5),
constraint fk_animal_fisa foreign key(id_animal) references ANIMAL(id_animal));

ALTER TABLE FISA_MEDICALA MODIFY id_animal NOT NULL;

create sequence seq_fisa
increment by 1
start with 50
maxvalue 200
nocycle;

INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, 'Foarte agresiv', 1);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, 'Leziune', 'Bandaj ocular', 'Este somnoros', 7);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, 'Mananca mult', 3);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, 'Face multa galagie', 2);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, 'Foarte cuminte', 4);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, 'Leziune picior stang', 'Bandajare', 'Schimbate odata la 2 zile', 5);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL,  NULL, 'Prietenos', 9);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, 'Arsura', 'Compresie sterila', NULL, 8);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, NULL, 6);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, 'Depresiv', 10);

INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, 'Foarte agresiva', 16);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, NULL, 13);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, 'Are o culoare rara', 11);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, 'Ii place sa se joace', 12);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, 'Este ranit la piciorul stang', 14);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, NULL, 15);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, 'Intoxicatie', 'Regim alimentar corespunzator', 'O buna igiena alimentara', 19);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, NULL, 17);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, 'Probleme cu vederea', 18);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, 'Este batrana', 20);

INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, NULL, 27);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, 'Piciorul drept rupt', 'Gips', 'Pentru 4 saptamani', 29);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, 'Este blanda', 28);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, NULL, 30);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, 'Plaga deschisa', 'Operatie urgenta', NULL, 21);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, 'Oarba', NULL, NULL, 24);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, 'Obezitate', 'Regim alimentar corespunzator', NULL, 25);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, 'Picior zdrobit', 'Amputare', NULL, 22);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, 'Surda', NULL, NULL, 23);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, NULL, 26);

INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, 'Foarte cuminte', 31);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, NULL, 33);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, 'Foarte jucaus', 34);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, 'Galagios', 32);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, NULL, 37);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, NULL, 35);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, NULL, 36);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, NULL, 39);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, NULL, 38);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, NULL, 40);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, NULL, 42);
INSERT INTO FISA_MEDICALA VALUES(SEQ_FISA.NEXTVAL, NULL, NULL, NULL, 41);


select * from fisa_medicala;

--CREARE SI INSERARE IN TABELA VIZITATOR
create table VIZITATOR(
id_vizitator number(5) constraint pk_vizitator PRIMARY KEY,
nume varchar2(30),
prenume varchar(30)
);

ALTER TABLE VIZITATOR MODIFY nume NOT NULL;
ALTER TABLE VIZITATOR MODIFY prenume NOT NULL;


create sequence seq_viz
increment by 1
start with 200
maxvalue 500
nocycle;

INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Ene', 'Marius');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Doncea', 'Beatrice');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Serban', 'Mihai');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Comanescu', 'Ionut');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Ivana', 'Florinel');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Ioana', 'Andreea');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Silviu', 'Bogdan');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Ionut', 'Iancu');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Petrolu', 'Tiriac');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Nastase', 'Aurel');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Alex', 'Nicoleta');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Maria', 'Predut');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Marinela', 'Stancu');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Stelea', 'Marian');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Sandu', 'Maria');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Morar', 'Florina');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Ramona', 'Carmen');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Dorin', 'Grigore');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Bratu', 'Sonia');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Vladau', 'Serban');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Toderoiu', 'Georgiana');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Alexe', 'Stefana');
INSERT INTO VIZITATOR VALUES(seq_viz.nextval, 'Daniela', 'Mariana');

--CREARE SI INSERARE IN TABELA ASOCIATIE
create table ASOCIATIE(
id_asociatie number(5) constraint pk_asociatie PRIMARY KEY,
nume_asociatie varchar2(50),
adresa varchar2(150),
telefon varchar2(10));

ALTER TABLE ASOCIATIE MODIFY nume_asociatie NOT NULL;
ALTER TABLE ASOCIATIE MODIFY adresa NOT NULL;

create sequence seq_as
increment by 1
start with 100
maxvalue 150
nocycle;

INSERT INTO ASOCIATIE VALUES (seq_as.nextval, 'Deja-Vu', 'Alexandru Ioan Cuza, Slatina, Nr 2', '0756190594');
INSERT INTO ASOCIATIE VALUES (seq_as.nextval, 'Gucci', 'Siretului, Sibiu, Nr 6','0253216030');
INSERT INTO ASOCIATIE VALUES (seq_as.nextval, 'Enel', 'Gheorghe Doja, Galati, Nr 1024','0264425992');
INSERT INTO ASOCIATIE VALUES (seq_as.nextval, 'Rompetrol','Argesului, Cluj-Napoca, Nr 14','0213524416');
INSERT INTO ASOCIATIE VALUES (seq_as.nextval, 'Versace', 'Caprelor, Ploiesti, Nr 8', '0264343735');
INSERT INTO ASOCIATIE VALUES (seq_as.nextval, 'Google Romania', 'Albinelor, Corabia, Nr 41','0244325903');
INSERT INTO ASOCIATIE VALUES (seq_as.nextval, 'Dristor', 'Mamaligilor, Bucuresti, Nr 254', '0264343735');
INSERT INTO ASOCIATIE VALUES (seq_as.nextval, 'Microsoft Romania', 'Regie, Bucuresti, Nr 76','0722548789');
INSERT INTO ASOCIATIE VALUES (seq_as.nextval, 'CEZ', 'Margineni, Cluj, Nr 194','0773654651');
INSERT INTO ASOCIATIE VALUES (seq_as.nextval, 'Bit Defender', 'Independetei, Bucuresti, Nr 43','0733624185');
INSERT INTO ASOCIATIE VALUES (seq_as.nextval, 'KRUK', 'Ciobanului, Slatina, Nr 95', '0724845132');
INSERT INTO ASOCIATIE VALUES (seq_as.nextval, 'Play Tika', 'Pacii, Neamt, Nr 120','0741256365');
INSERT INTO ASOCIATIE VALUES (seq_as.nextval, 'Metrorex', 'Miresmelor, Mures, Nr 321','0741526376');

--CREARE SI INSERARE IN TABELA SPONSORIZARE
create table SPONSORIZARE(
id_sponsorizare number(5) constraint pk_sponsorizare PRIMARY KEY,
id_asociatie number(5),
id_adapost number(5),
suma_donata number(10),
constraint fk_spon_asoc foreign key(id_asociatie) references ASOCIATIE(id_asociatie),
constraint fk_spon_adap foreign key(id_adapost) references ADAPOST(id_adapost));

ALTER TABLE SPONSORIZARE MODIFY id_asociatie NOT NULL;
ALTER TABLE SPONSORIZARE MODIFY id_adapost NOT NULL;

INSERT INTO SPONSORIZARE VALUES (1, 100, 1001, 25500);
INSERT INTO SPONSORIZARE VALUES (2, 101, 1009, 44000);
INSERT INTO SPONSORIZARE VALUES (3, 102, 1007, 20000);
INSERT INTO SPONSORIZARE VALUES (4, 103, 1004, 71000);
INSERT INTO SPONSORIZARE VALUES (5, 110, 1001, 20000);
INSERT INTO SPONSORIZARE VALUES (6, 106, 1006, 54000);
INSERT INTO SPONSORIZARE VALUES (7, 107, 1006, 49000);
INSERT INTO SPONSORIZARE VALUES (8, 108, 1004, 12000);
INSERT INTO SPONSORIZARE VALUES (9, 109, 1006, 40000);
INSERT INTO SPONSORIZARE VALUES (10, 105, 1001, 13400);
INSERT INTO SPONSORIZARE VALUES (11, 111, 1010, 10000);
INSERT INTO SPONSORIZARE VALUES (12, 112, 1011, 50000);

select * from adapost;
select * from locatie;

--CREARE SI INSERARE IN TABELA POSTURI
create table POSTURI(
id_post varchar2(15) constraint pk_posturi PRIMARY KEY,
denumire_post varchar2(30),
constraint check_post_angajat check (upper(denumire_post) in ('CONTABIL', 'VETERINAR', 'INGRIJITOR', 'ADMINISTRATOR', 'HINGHIER', 'APROVIZIONAR', 'ASISTENT VETERINAR')),
salariu_minim number(5),
salariu_maxim number(5));

ALTER TABLE POSTURI MODIFY denumire_post NOT NULL;

INSERT INTO POSTURI VALUES ('ING', 'INGRIJITOR', 2500, 3500);
INSERT INTO POSTURI VALUES ('VET', 'VETERINAR', 5500, 7900);
INSERT INTO POSTURI VALUES ('HIN', 'HINGHIER', 1500, 2750);
INSERT INTO POSTURI VALUES ('APR', 'APROVIZIONAR', 1900, 3000);
INSERT INTO POSTURI VALUES ('ASTVET', 'ASISTENT VETERINAR', 3000, 4200);
INSERT INTO POSTURI VALUES ('ADM', 'ADMINISTRATOR', 2600, 3420);
INSERT INTO POSTURI VALUES ('CON', 'CONTABIL', 2900, 4500);

--CREARE SI INSERARE IN TABELA ANGAJAT
create table ANGAJAT(
id_angajat number(5) constraint pk_angajat PRIMARY KEY,
nume_angajat varchar2(30),
prenume_angajat varchar2(30),
data_angajarii date default sysdate,
salariu number(5),
comision float(4),
id_adapost number(5),
constraint fk_angajat_adapost foreign key(id_adapost) references ADAPOST(id_adapost),
id_post varchar(15),
constraint fk_angajat_post foreign key(id_post) references POSTURI(id_post));

ALTER TABLE ANGAJAT MODIFY nume_angajat NOT NULL;
ALTER TABLE ANGAJAT MODIFY prenume_angajat NOT NULL;
ALTER TABLE ANGAJAT MODIFY data_angajarii NOT NULL;
ALTER TABLE ANGAJAT MODIFY id_adapost NOT NULL;
ALTER TABLE ANGAJAT MODIFY id_post NOT NULL;

create sequence seq_ang
increment by 1
start with 1000
maxvalue 1200
nocycle;

INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'CHIRITA', 'ANDREI', to_date('19-10-2008', 'dd-mm-yyyy'), 2900, 0.15, 1001, 'CON');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'MATEESCU', 'VALENTIN', to_date('27-09-2013', 'dd-mm-yyyy') , 5700, 0.10, 1001, 'VET');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'POPESCU', 'ANDREI', to_date('07-08-2010', 'dd-mm-yyyy') ,  2000, 0.08, 1001, 'APR');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'POPESCU', 'ANDREEA', to_date('03-09-2015', 'dd-mm-yyyy') , 2800, 0.05, 1001, 'ADM');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'IONASCU', 'DANIEL', to_date('21-03-2011', 'dd-mm-yyyy') , 3100, NULL, 1001, 'ING');

INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'ILEA', 'ADELINA', to_date('26-02-2014', 'dd-mm-yyyy') ,  3500, NULL, 1002, 'CON');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'CALIN', 'BOGDAN', to_date('14-11-2008', 'dd-mm-yyyy') , 5900, 0.15, 1002, 'VET');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'PEICU', 'LIVIU', to_date('11-05-2011', 'dd-mm-yyyy') , 2600, 0.10, 1002, 'ADM');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'RUSEANU', 'OVIDIU', to_date('17-04-2009', 'dd-mm-yyyy') , 2500, NULL, 1002, 'APR');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'CALIN', 'SILVANA', to_date('29-03-2012', 'dd-mm-yyyy') , 3200, NULL, 1002, 'ING');

INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'SOREATA', 'ADRIAN', to_date('20-08-2009', 'dd-mm-yyyy') ,  3900, NULL, 1003, 'CON');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'DICU', 'ALEXANDRU', to_date('11-01-2010', 'dd-mm-yyyy') ,  6400, NULL, 1003, 'VET');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'MACOVEI', 'RAZVAN', to_date('19-04-2012', 'dd-mm-yyyy') , 3300, 0.05, 1003, 'ADM');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'RADUCU', 'MIHNEA', to_date('01-05-2009', 'dd-mm-yyyy') ,  2200, NULL, 1003, 'APR');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'RIZESCU', 'ADRIAN', to_date('30-07-2009', 'dd-mm-yyyy') , 2600, NULL, 1003, 'HIN');

INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'MARINESCU', 'COSMIN', to_date('18-10-2010', 'dd-mm-yyyy') ,  3000, 0.05, 1004, 'CON');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'VOICULESCU', 'CATALIN', to_date('16-08-2015', 'dd-mm-yyyy') ,  7500, NULL, 1004, 'VET');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'BARBU', 'COSMIN', to_date('15-01-2013', 'dd-mm-yyyy') ,  2600, 0.15, 1004, 'ADM');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'MACOVEI', 'BOGDAN',to_date('08-09-2015', 'dd-mm-yyyy') ,  2000, NULL, 1004, 'APR');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'VOICA', 'GEORGIANA',to_date('29-07-2006', 'dd-mm-yyyy') , 2950, NULL, 1004, 'ING');

INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'MONETE', 'RAZVAN',to_date('02-01-2016', 'dd-mm-yyyy') ,  4000, NULL, 1005, 'CON');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'BUDURE', 'DANIEL', to_date('23-10-2014', 'dd-mm-yyyy') ,  6500, NULL, 1005, 'VET');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'MAZILU', 'VIOREL', to_date('27-06-2011', 'dd-mm-yyyy') ,  2600, NULL, 1005, 'ADM');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'DONCEA', 'BEATRICE', to_date('17-06-2013', 'dd-mm-yyyy') ,  1900, 0.10, 1005, 'APR');

INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'ENE', 'ANDREI', to_date('10-09-2010', 'dd-mm-yyyy') , 5500, 0.05, 1006, 'VET');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'IACOB', 'RAZVAN', to_date('02-09-2012', 'dd-mm-yyyy') , 2600, NULL, 1006, 'ADM');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'UNGUREANU', 'MARIUS', to_date('17-04-2015', 'dd-mm-yyyy') , 2600, NULL, 1006, 'APR');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'OLTEANU', 'STEFAN', to_date('15-07-2009', 'dd-mm-yyyy') , 3000, NULL, 1006, 'CON');

INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'UNGUREANU', 'DAVID',to_date('08-03-2016', 'dd-mm-yyyy') , 6200, NULL, 1007, 'VET');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'PANTUCU', 'DAN', to_date('03-05-2012', 'dd-mm-yyyy') , 2700, 0.06, 1007, 'APR');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'NICOLAE', 'ALINA', to_date('09-07-2013', 'dd-mm-yyyy') , 2900, 0.02, 1007, 'ADM');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'STOICA', 'RADU', to_date('26-05-2012', 'dd-mm-yyyy') , 3900, NULL, 1007, 'CON');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'IVANA', 'FLORIN', to_date('20-07-2009', 'dd-mm-yyyy') , 2600, 0.1, 1007, 'ING');

INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'RATA', 'ANDREEA', to_date('18-08-2008', 'dd-mm-yyyy') , 3000, NULL, 1008, 'ADM');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'GHEORGHE', 'COSTEL', to_date('14-01-2011', 'dd-mm-yyyy') , 1900, NULL, 1008, 'APR');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'GRECU', 'DAVID', to_date('25-12-2009', 'dd-mm-yyyy') , 3400, 0.10, 1008, 'CON');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'SACEANU', 'CLAUDIU',to_date('02-12-2010', 'dd-mm-yyyy') , 6000, NULL, 1008, 'VET');

INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'MIHAI', 'CLAUDIU', to_date('14-09-2010', 'dd-mm-yyyy') , 4400, NULL, 1009, 'CON');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'ALEXE', 'RAZVAN',to_date('18-10-2010', 'dd-mm-yyyy') , 2100, NULL, 1009, 'APR');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'BARBUIA', 'LUCA', to_date('15-07-2011', 'dd-mm-yyyy') , 2900, 0.05, 1009, 'ADM');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'MATEI', 'SORIN', to_date('11-09-2012', 'dd-mm-yyyy') , 6600, NULL, 1009, 'VET');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'MIHALACHE', 'DAN', to_date('04-07-2014', 'dd-mm-yyyy') , 1500, 0.2, 1009, 'HIN');

INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'POPESCU', 'COSMIN', to_date('20-11-2013', 'dd-mm-yyyy') , 6600, NULL, 1010, 'VET');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'SERBAN', 'OVIDIU', to_date('07-04-2009', 'dd-mm-yyyy') , 2700, NULL, 1010, 'ADM');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'MIREI', 'ANDRADA',to_date('11-06-2009', 'dd-mm-yyyy') , 3300, NULL, 1010, 'CON');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'NETOIU', 'ALEXANDRU', to_date('20-10-2008', 'dd-mm-yyyy') , 1500, 0.10, 1010, 'HIN');

INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'SACEANU', 'ALEXANDRU', to_date('09-05-2009', 'dd-mm-yyyy') , 2600, NULL, 1011, 'ING');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'MEREU', 'ALEXANDRU',to_date('01-07-2013', 'dd-mm-yyyy') , 1900, 0.04, 1011, 'APR');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'MITRU', 'ION',to_date('18-08-2010', 'dd-mm-yyyy') , 5500, NULL, 1011, 'VET');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'GHEORGHE', 'MARIUS', to_date('14-12-2011', 'dd-mm-yyyy') , 2650, NULL, 1011, 'ADM');

INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'GHERGHU', 'IOAN', to_date('25-05-2010', 'dd-mm-yyyy'), 3600, 0.02, 1012, 'ASTVET');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'STANCESCU', 'IONUT', to_date('11-11-2013', 'dd-mm-yyyy') , 2650, 0.05, 1012, 'ING');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'JURUBITA', 'ROXANA',to_date('24-12-2010', 'dd-mm-yyyy') , 1700, 0.08, 1012, 'HIN');
INSERT INTO ANGAJAT VALUES (SEQ_ANG.NEXTVAL, 'ZIDARU', 'RAZVAN',to_date('17-06-2006', 'dd-mm-yyyy') , 3100, NULL, 1012, 'ADM');


--CREARE SI INSERARE IN TABELA ADOPTANTI
create table ADOPTANTI(
id_adoptant number(5) constraint pk_adoptanti PRIMARY KEY,
nume varchar2(30),
prenume varchar2(30),
telefon varchar2(10));

ALTER TABLE ADOPTANTI MODIFY nume NOT NULL;
ALTER TABLE ADOPTANTI MODIFY prenume NOT NULL;

create sequence seq_adoptanti
increment by 1
start with 300
maxvalue 380
nocycle;

INSERT INTO ADOPTANTI VALUES (seq_adoptanti.nextval, 'DRAGANESCU','STEFAN','0741526376');
INSERT INTO ADOPTANTI VALUES (seq_adoptanti.nextval,'TEACA','MARIA','0748592625');
INSERT INTO ADOPTANTI VALUES (seq_adoptanti.nextval,'STAN','STEFAN','0741256365');
INSERT INTO ADOPTANTI VALUES (seq_adoptanti.nextval,'LAUFER','ANDREEA','0722548789');
INSERT INTO ADOPTANTI VALUES (seq_adoptanti.nextval,'VLAD','FILIP','0789562314');
INSERT INTO ADOPTANTI VALUES (seq_adoptanti.nextval,'CAZACU','IONUT','0752632415');
INSERT INTO ADOPTANTI VALUES (seq_adoptanti.nextval,'ROSU','DAIANA','0756454533');
INSERT INTO ADOPTANTI VALUES (seq_adoptanti.nextval,'IVAN','EMILIA','0773162241');
INSERT INTO ADOPTANTI VALUES (seq_adoptanti.nextval,'CRACIUNESCU','ANDREI','0773654651');
INSERT INTO ADOPTANTI VALUES (seq_adoptanti.nextval,'FRUNZA','OVIDIU','0731411841');
INSERT INTO ADOPTANTI VALUES (seq_adoptanti.nextval,'VARZARU','ALEXANDRU','0733624185');
INSERT INTO ADOPTANTI VALUES (seq_adoptanti.nextval,'OLTEANU','RARES','0728422216');
INSERT INTO ADOPTANTI VALUES (seq_adoptanti.nextval,'TAIFAS','MIHAI','0781531568');
INSERT INTO ADOPTANTI VALUES (seq_adoptanti.nextval,'VOICU','DENISA','0757527852');
INSERT INTO ADOPTANTI VALUES (seq_adoptanti.nextval,'ROTARU','ROBERT','0724845132');

--300 -> 314
--MODIFICAM ADOPTANTII IN TABELA ANIMAL (a fost o greseala din partea mea sa creez tabela animal prima data.)
UPDATE ANIMAL SET id_adoptant = 300 where id_animal = 1;
UPDATE ANIMAL SET id_adoptant = 300 where id_animal = 3;
UPDATE ANIMAL SET id_adoptant = 301 where id_animal = 5;
UPDATE ANIMAL SET id_adoptant = 302 where id_animal = 9;
UPDATE ANIMAL SET id_adoptant = 303 where id_animal = 15;
UPDATE ANIMAL SET id_adoptant = 304 where id_animal = 21;
UPDATE ANIMAL SET id_adoptant = 305 where id_animal = 26;
UPDATE ANIMAL SET id_adoptant = 305 where id_animal = 27;
UPDATE ANIMAL SET id_adoptant = 306 where id_animal = 31;
UPDATE ANIMAL SET id_adoptant = 307 where id_animal = 34;
UPDATE ANIMAL SET id_adoptant = 308 where id_animal = 37;
UPDATE ANIMAL SET id_adoptant = 309 where id_animal = 41;
UPDATE ANIMAL SET id_adoptant = 310 where id_animal = 42;
UPDATE ANIMAL SET id_adoptant = 311 where id_animal = 18;
UPDATE ANIMAL SET id_adoptant = 312 where id_animal = 22;
UPDATE ANIMAL SET id_adoptant = 313 where id_animal = 11;
UPDATE ANIMAL SET id_adoptant = 314 where id_animal = 8;
UPDATE ANIMAL SET ID_ADOPTANT = 300 WHERE ID_ANIMAL = 6;
UPDATE ANIMAL SET id_adoptant = 305 where id_animal = 32;
UPDATE ANIMAL SET id_adoptant = 305 where id_animal = 13;
--CREARE SI INSERARE IN TABELA VIZITE
create table VIZITE(
id_vizita number(5) constraint pk_vizite PRIMARY KEY,
data_vizitei date default sysdate,
id_vizitator number(5), constraint fk_vizit foreign key(id_vizitator) references VIZITATOR(id_vizitator),
id_adapost number(5), constraint fk_adapost foreign key(id_adapost) references ADAPOST(id_adapost));

ALTER TABLE VIZITE MODIFY data_vizitei NOT NULL;
ALTER TABLE VIZITE MODIFY id_vizitator NOT NULL;
ALTER TABLE VIZITE MODIFY id_adapost NOT NULL;

create sequence seq_vizite
increment by 1
start with 800
maxvalue 1200
nocycle;

INSERT INTO VIZITE VALUES(SEQ_VIZITE.NEXTVAL, to_date('17/03/2020','dd/mm/yyyy'), 200, 1001);
INSERT INTO VIZITE VALUES(SEQ_VIZITE.NEXTVAL, to_date('16/03/2021','dd/mm/yyyy'), 208, 1001);
INSERT INTO VIZITE VALUES(SEQ_VIZITE.NEXTVAL, to_date('07/02/2021','dd/mm/yyyy'), 207, 1017);
INSERT INTO VIZITE VALUES(SEQ_VIZITE.NEXTVAL, to_date('25/04/2021','dd/mm/yyyy'), 203, 1016);
INSERT INTO VIZITE VALUES(SEQ_VIZITE.NEXTVAL, to_date('15/03/2021','dd/mm/yyyy'), 201, 1005);
INSERT INTO VIZITE VALUES(SEQ_VIZITE.NEXTVAL, to_date('23/12/2020','dd/mm/yyyy'), 210, 1002);
INSERT INTO VIZITE VALUES(SEQ_VIZITE.NEXTVAL, to_date('27/06/2019','dd/mm/yyyy'), 209, 1003);
INSERT INTO VIZITE VALUES(SEQ_VIZITE.NEXTVAL, to_date('25/04/2018','dd/mm/yyyy'), 222, 1007);
INSERT INTO VIZITE VALUES(SEQ_VIZITE.NEXTVAL, to_date('20/02/2020','dd/mm/yyyy'), 221, 1009);
INSERT INTO VIZITE VALUES(SEQ_VIZITE.NEXTVAL, to_date('11/01/2021','dd/mm/yyyy'), 220, 1009);
INSERT INTO VIZITE VALUES(SEQ_VIZITE.NEXTVAL, to_date('27/03/2019','dd/mm/yyyy'), 218, 1008);
INSERT INTO VIZITE VALUES(SEQ_VIZITE.NEXTVAL, to_date('31/01/2017','dd/mm/yyyy'), 219, 1011);
INSERT INTO VIZITE VALUES(SEQ_VIZITE.NEXTVAL, to_date('12-02-2021','dd-mm-yyyy'), 217, 1001);
INSERT INTO VIZITE VALUES(SEQ_VIZITE.NEXTVAL, to_date('17-05-2021','dd-mm-yyyy'), 214, 1002);
INSERT INTO VIZITE VALUES(SEQ_VIZITE.NEXTVAL, to_date('11-02-2018','dd-mm-yyyy'), 213, 1005);
INSERT INTO VIZITE VALUES(SEQ_VIZITE.NEXTVAL, to_date('15-02-2020','dd-mm-yyyy'), 203, 1002);

select count(*), id_vizitator
from vizite
group by id_vizitator
order by id_vizitator;


--CREARE SI INSERARE IN TABELA CONSUM
create table CONSUM(
id_consum number(5) constraint pk_consum PRIMARY KEY,
id_animal number(5), constraint fk_animal foreign key(id_animal) references ANIMAL(id_animal),
id_aliment number(5), constraint fk_aliment foreign key(id_aliment) references ALIMENT(id_aliment));

ALTER TABLE CONSUM MODIFY id_animal NOT NULL;
ALTER TABLE CONSUM MODIFY id_aliment NOT NULL;

create sequence seq_consum
increment by 1
start with 300
maxvalue 400
nocycle;

INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 1, 29);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 1, 30);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 2, 31);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 3, 29);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 6, 32);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 5, 33);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 8, 34);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 9, 35);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 9, 37);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 8, 36);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 4, 41);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 7, 42);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 10, 43);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 11, 43);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 12, 44);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 16, 45);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 14, 41);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 15, 29);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 13, 37);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 18, 38);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 17, 39);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 19, 36);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 20, 33);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 19, 31);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 23, 40);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 21, 45);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 22, 43);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 20, 40);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 22, 32);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 23, 47);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 25, 35);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 24, 44);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 29, 39);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 28, 32);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 26, 29);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 27, 35);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 30, 30);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 30, 40);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 31, 37);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 32, 38);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 33, 47);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 34, 49);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 35, 47);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 35, 36);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 36, 36);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 37, 31);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 38, 29);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 39, 42);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 40, 33);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 40, 31);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 41, 32);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 42, 46);
INSERT INTO CONSUM VALUES(SEQ_CONSUM.NEXTVAL, 34, 43);


--Sa se afiseze in ordine crescatoare dupa data inmatricularii, data inmatricularii, si specia 
--tuturor animalelor dintr-un adapost care se afla intr-un oras introdus de la tastatura.


CREATE OR REPLACE PROCEDURE cerinta6_1
    (pt_6_id in locatie.oras%type) IS
    
    --Tablou indexat (primul tip de colectie);
    TYPE tablou_indexat IS TABLE OF ANIMAL%ROWTYPE INDEX BY BINARY_INTEGER;
    my_table tablou_indexat;
    
    --Varray (al doilea tip de colectie);
    TYPE vector IS VARRAY(50) OF animal.id_animal%type;
    my_vector vector;
    
    v_nume    adapost.nume_adapost%type;
BEGIN
    
    select id_animal
    bulk collect into my_vector
    from ANIMAL
    join adapost on adapost.id_adapost = animal.id_adapost
    join locatie on locatie.id_locatie = adapost.id_locatie
    where upper(locatie.oras) = upper(pt_6_id)
    order by data_inmatriculare;
    
    IF my_vector.count <> 0 THEN
        select nume_adapost 
        into v_nume
        from adapost
        where id_locatie = (select id_locatie 
                            from locatie
                            where upper(oras) = upper(pt_6_id));
    
        FOR i IN my_vector.first..my_vector.last LOOP
            select *
            into my_table(i)
            from animal 
            where id_animal = my_vector(i)
            order by id_animal;
        END LOOP;
        
        DBMS_OUTPUT.PUT_LINE('In adapostul ' || v_nume || ' sunt '|| my_table.count|| ' animale.');
        
        IF my_table.count <> 0 THEN
            FOR i IN my_table.first..my_table.last LOOP
                dbms_output.put_line(my_table(i).id_animal || ' ' || my_table(i).data_inmatriculare || ' ' || my_table(i).specie_animal);
            END LOOP;
        ELSE
            dbms_output.put_line('In adapostul ' || v_nume || ' nu se afla niciun animal!');
        END IF;
    ELSE 
        DBMS_OUTPUT.PUT_LINE('In orasul ' || pt_6_id || ' nu exista niciun adapost!');
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('Nu exista date!');
    WHEN TOO_MANY_ROWS THEN
        dbms_output.put_line('Prea multe linii!');
    WHEN OTHERS THEN
        dbms_output.put_line('Alta eroare!');
END;

accept oras prompt 'Introduceti numele orasului: ';
DECLARE
    v_id    LOCATIE.oras%type := '&oras';
BEGIN
    cerinta6_1(v_id);
END;


--7)Obtineti primii 3 cei mai bine platiti angajati (nume, prenume) din fiecare adapost (denumirea - se afiseaza o singura data),
--tratati exceptiile care pot aparea. 

CREATE OR REPLACE PROCEDURE cerinta7 AS
    CURSOR c IS
        SELECT COUNT(aj.id_angajat) NR, a.nume_adapost ADAP
        FROM angajat aj , adapost a
        WHERE aj.id_adapost = a.id_adapost(+)
        GROUP BY nume_adapost;
    
    TYPE employees IS TABLE OF angajat%rowtype index by binary_integer;
    t employees;
    
    counter     number := 0;
BEGIN
    FOR i IN c LOOP
        SELECT *
        BULK COLLECT INTO t
        FROM ANGAJAT
        WHERE id_adapost = (SELECT id_adapost
                            FROM adapost
                            WHERE nume_adapost = i.ADAP)
        ORDER BY SALARIU DESC;
        
        IF i.nr = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Adapostul ' || i.ADAP || ' are nu are niciun angajat!');
        ELSIF i.nr = 1 THEN
            DBMS_OUTPUT.PUT_LINE('Adapostul ' || i.ADAP || ' are '|| i.nr || ' angajat!');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Adapostul ' || i.ADAP || ' are ' || i.nr || ' angajati!' );
        END IF;
        
        counter := 0;
        
        FOR x IN t.FIRST..t.LAST LOOP
            EXIT WHEN COUNTER > 2;
            DBMS_OUTPUT.PUT_LINE(t(x).nume_angajat || ' ' || t(x).prenume_angajat|| ' are salariul de ' || t(x).salariu);
            counter := counter + 1;
        END LOOP;
        DBMS_OUTPUT.NEW_LINE();
    END LOOP;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Nu exista date!');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Prea multe date!');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Alta eroare!');
END;

BEGIN
    cerinta7;
END;

--8)
--Sa se afiseze numarul animalelor, cate animale din fiecare adapost si locatia adapostului de unde o persoana 
--cu numele introdus de la tastatura a adoptat unul sau mai multe animale.

CREATE OR REPLACE TYPE tablou_locatie IS TABLE OF VARCHAR2(200);

CREATE OR REPLACE FUNCTION ajutor_cerinta8
    (v_nume adoptanti.nume%TYPE)
RETURN NUMBER IS
    counter number;
BEGIN
    select count(distinct id_adapost) --Functie care ma ajuta sa gasesc nr adaposturilor din care s-au adoptat animale,
    into counter                      --de catre o persoana.
    from animal
    where id_adoptant = (select id_adoptant
                        from adoptanti
                        where upper(nume) = upper(v_nume));
    RETURN counter; --poate sa fie si 0, nu ne incurca.
END ajutor_cerinta8;

CREATE OR REPLACE FUNCTION cerinta8
    (v_nume adoptanti.nume%TYPE DEFAULT 'Draganescu') 
RETURN tablou_locatie IS

    adresa tablou_locatie;
    nr_adrese NUMBER := ajutor_cerinta8(v_nume);
BEGIN
    IF nr_adrese = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Nu exista niciun adoptant cu numele: ' || v_nume);
    ELSE
        SELECT ' din judetul ' || judet || ', orasul ' || oras 
        BULK COLLECT INTO adresa
        FROM LOCATIE 
        WHERE ID_LOCATIE IN (SELECT locatie.ID_LOCATIE
                    FROM LOCATIE
                    INNER JOIN adapost on adapost.id_locatie = locatie.id_locatie
                    INNER JOIN animal on animal.id_adapost = adapost.id_adapost
                    INNER JOIN adoptanti on adoptanti.id_adoptant = animal.id_adoptant
                    WHERE animal.id_adoptant IS NOT NULL AND UPPER(adoptanti.nume) = upper(v_nume))
        ORDER BY id_locatie;
    END IF;
    
    RETURN adresa;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20000, 'Nu exista un adoptant cu numele specificat!');
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20001, 'Alta eroare!');
END cerinta8;

accept Nume prompt 'Introduceti numele adoptantului: ';
DECLARE
    adresa tablou_locatie;
    nume_ad varchar2(50) := '&Nume';
    nr_adrese number;
    nr_animale number;
    
    cursor c is 
    select count(id_animal) nr
    from animal
    where id_adoptant = (select id_adoptant
                        from adoptanti
                        where upper(nume) = upper(nume_ad))
    group by id_adapost
    order by id_adapost;
BEGIN
    select count(id_animal)
    into nr_animale
    from animal
    where id_adoptant = (select id_adoptant
                        from adoptanti
                        where upper(nume) = upper(nume_ad));

    adresa := cerinta8(nume_ad); 
    nr_adrese := ajutor_cerinta8(nume_ad);
    DBMS_OUTPUT.PUT_LINE(nume_ad || ' a adoptat ' || nr_animale || ' animale.');
    --ma folosesc de nr animala ca un counter;
    nr_animale := 1;
    FOR i IN c LOOP
         DBMS_OUTPUT.PUT_LINE( i.nr || adresa(nr_animale));
         nr_animale := nr_animale+1;
    END LOOP;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Code: ' || sqlcode || ' Error: ' || sqlerrm);
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Code: ' || sqlcode || ' Error: ' || sqlerrm );
END;

--Cerinta 9 
--Numele si pretul alimentelor pe care le consuma animalele dintr-un adapost
--cu numele introdus de la tastatura si care este sponsorizat de minim o asociatie.

CREATE OR REPLACE PROCEDURE cerinta_9
    (v_nume_ad in adapost.nume_adapost%type DEFAULT 'RAZA DE SPERANTA') IS
    
    TYPE tablou_indexat IS TABLE OF consum%rowtype INDEX BY BINARY_INTEGER; --retinem detaliile despre o linie intreaga.
    alimente tablou_indexat;
    
    CURSOR c IS --selectez id-urile animalelor din adapostul sponsorizat de o asociatie
        SELECT id_animal id_an
        FROM animal
        WHERE id_adapost = (SELECT id_adapost
                            FROM adapost
                            WHERE upper(nume_adapost) = upper(v_nume_ad));
    
    TYPE tablou2 IS TABLE OF consum.id_consum%type INDEX BY BINARY_INTEGER; --retin id-urile fiecarui consum facut de un animal
    id_alimente tablou2;
    
    counter number; --vefiric daca sunt animale intr-un adapost.
    contor number := 1;
    counter_eg_0 EXCEPTION; --ridic eroare pt adapostul gol
    
    v_sponsorizare number := 0;
    
    v_nume_alim aliment.nume_aliment%type;
    v_pret aliment.pret%type;
BEGIN
    SELECT COUNT(id_adapost) 
    INTO counter
    FROM animal
    WHERE id_adapost = (SELECT id_adapost
                        FROM adapost
                        WHERE upper(nume_adapost) = upper(v_nume_ad));
    
    SELECT count(id_asociatie)
    INTO v_sponsorizare
    FROM sponsorizare
    WHERE id_adapost = (SELECT id_adapost
                        FROM adapost
                        WHERE upper(nume_adapost) = upper(v_nume_ad));
    
    IF counter <> 0 THEN
        IF v_sponsorizare <> 0 THEN
            FOR i in c LOOP --pentru fiecare animal din adapost, retin cate feluri de mancare consuma.
                SELECT id_consum
                BULK COLLECT INTO id_alimente
                FROM consum
                WHERE id_animal = i.id_an; --daca adapostul are animale, nu trebuie sa verific daca id_alimente este gol pentru ca fiecare animal 
                                           --consuma MINIM 1 aliment.
                FOR x IN id_alimente.first..id_alimente.last LOOP --apoi introduc in alimente detaliile despre fiecare aliment consumat, la fel si aici
                    SELECT  *                                     -- nu trebuie sa verific.
                    INTO alimente(contor)
                    FROM consum
                    WHERE id_consum in (select consum.id_consum
                                        FROM consum
                                        INNER JOIN aliment on consum.id_aliment = aliment.id_aliment
                                        INNER JOIN animal on consum.id_animal = animal.id_animal
                                        INNER JOIN adapost on adapost.id_adapost = animal.id_adapost
                                        INNER JOIN sponsorizare on sponsorizare.id_adapost = adapost.id_adapost
                                        INNER JOIN asociatie on asociatie.id_asociatie = sponsorizare.id_asociatie
                                        WHERE animal.id_animal = i.id_an and consum.id_consum = id_alimente(x));
                    contor := contor +1;
                END LOOP;
            END LOOP;
            DBMS_OUTPUT.PUT_LINE('Animalele din adapostul ' || v_nume_ad||' consuma alimentele: ');
            FOR i IN alimente.first..alimente.last LOOP
                SELECT nume_aliment, pret
                INTO v_nume_alim, v_pret
                FROM aliment
                WHERE id_aliment = alimente(i).id_aliment;
                
                DBMS_OUTPUT.PUT_LINE('Animalul cu id-ul: ' || alimente(i).id_animal || ' consuma produsul: ' || v_nume_alim || ' care are pretul de: ' || v_pret);
            END LOOP;
        ELSE
            RAISE NO_DATA_FOUND;
        END IF;
    ELSIF counter = 0 THEN
        RAISE counter_eg_0;
    END IF;
EXCEPTION
    WHEN counter_eg_0 THEN
        DBMS_OUTPUT.PUT_LINE('Nu exista adapostul ' || v_nume_ad);
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Adapostul nu este sponsorizat!');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Too many rows!');
END;                        

accept nume_ad prompt 'Nume adapost';
BEGIN
    cerinta_9('&nume_ad');
END;


--Cerinta 10
--Sa se creeze un trigger care permite vizitarea unui adapost in intervalul 07:00 - 22:00.
--(adica utilizarea comenzii insert in tabelul vizite)

CREATE OR REPLACE TRIGGER cerinta10
    BEFORE INSERT OR DELETE OR UPDATE ON vizite
BEGIN
    IF (TO_CHAR(SYSDATE, 'HH24') NOT BETWEEN 7 AND 22) THEN
        IF INSERTING THEN 
            RAISE_APPLICATION_ERROR(-20001, 'Vizitarea adapostului se realizeaza in intervalul 7-22');
        END IF;
    END IF;
END;
insert into vizite values(65, to_date('13-04-2021', 'dd-mm-yyyy'), 10, 10);

--Cerinta 11;
--Creati un trigger care verifica daca in momentul introducerii sau modificarea unei linii din
--tabelul angajat ca data_angajarii sa fie mai mica decat data curenta si ca salariul sa fie in cerintele postului.
    
CREATE OR REPLACE TRIGGER cerinta11
    BEFORE INSERT OR UPDATE ON ANGAJAT FOR EACH ROW
DECLARE
    eroare1 EXCEPTION;
    eroare2 EXCEPTION;
    salariu_max     posturi.salariu_maxim%type;
    salariu_min     posturi.salariu_minim%type;
BEGIN
    select salariu_minim, salariu_maxim
    into salariu_min, salariu_max
    from posturi
    where :NEW.id_post = id_post;

    IF :NEW.data_angajarii > SYSDATE THEN
        RAISE eroare1;
    ELSIF :NEW.salariu > salariu_max OR :NEW.salariu < salariu_min THEN
        RAISE eroare2;
    END IF;
    IF inserting THEN
        DBMS_OUTPUT.PUT_LINE('Inserare reusita!');
    ELSIF updating THEN
        DBMS_OUTPUT.PUT_LINE('Modificare reusita!');
        DBMS_OUTPUT.PUT_LINE('Data veche: ' || :OLD.data_angajarii || 'Salariul vechi: '||:OLD.salariu);
    END IF;
EXCEPTION
    WHEN eroare1 THEN
        RAISE_APPLICATION_ERROR(-20000, 'Eroare: Data angajarii mai mare decat data curenta!');
    WHEN eroare2 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Eroare: Salariul ales nu se incadreaza in bugetul nostru!');
END;

INSERT INTO ANGAJAT VALUES (55, 'SEBESTEAN', 'MIRELA', to_date('19-10-2020', 'dd-mm-yyyy'), 1900, NULL, 1001, 'HIN'); 
rollback;


--Cerinta 12
--Sa se creeze un trigger LDD care restrictioneaza stergerea unei tabele din schema noasta.
CREATE OR REPLACE TRIGGER cerinta12
    BEFORE DROP ON SCHEMA
BEGIN
    DBMS_OUTPUT.PUT_LINE('Nu aveti permisiunea de a sterge tabele!');
    ROLLBACK;
END;
-- trigger cerinta12;

create table test(id number(2));
drop table test;

ALTER TRIGGER cerinta12 DISABLE;


--Cerinta 13
CREATE OR REPLACE PACKAGE pack_ex13
IS
    PROCEDURE cerinta6_1 (pt_6_id in locatie.oras%type);
    PROCEDURE cerinta7;
    
    TYPE tablou_locatie IS TABLE OF VARCHAR2(200);
    FUNCTION ajutor_cerinta8 (v_nume adoptanti.nume%TYPE) RETURN NUMBER;
    FUNCTION cerinta8 (v_nume adoptanti.nume%TYPE DEFAULT 'Draganescu') RETURN tablou_locatie;
    
    PROCEDURE cerinta_9 (v_nume_ad in adapost.nume_adapost%type DEFAULT 'RAZA DE SPERANTA');
END pack_ex13;

CREATE OR REPLACE PACKAGE BODY pack_ex13
IS
    --Cerinta 6;
    PROCEDURE cerinta6_1 (pt_6_id in locatie.oras%type) IS 
        --Tablou indexat (primul tip de colectie);
        TYPE tablou_indexat IS TABLE OF ANIMAL%ROWTYPE INDEX BY BINARY_INTEGER;
        my_table tablou_indexat;
        
        --Varray (al doilea tip de colectie);
        TYPE vector IS VARRAY(50) OF animal.id_animal%type;
        my_vector vector;
        
        v_nume    adapost.nume_adapost%type;
    BEGIN
        
        select id_animal
        bulk collect into my_vector
        from ANIMAL
        join adapost on adapost.id_adapost = animal.id_adapost
        join locatie on locatie.id_locatie = adapost.id_locatie
        where upper(locatie.oras) = upper(pt_6_id)
        order by data_inmatriculare;
        
        IF my_vector.count <> 0 THEN
            select nume_adapost 
            into v_nume
            from adapost
            where id_locatie = (select id_locatie 
                                from locatie
                                where upper(oras) = upper(pt_6_id));
        
            FOR i IN my_vector.first..my_vector.last LOOP
                select *
                into my_table(i)
                from animal 
                where id_animal = my_vector(i)
                order by id_animal;
            END LOOP;
            
            DBMS_OUTPUT.PUT_LINE('In adapostul ' || v_nume || ' sunt '|| my_table.count|| ' animale.');
            
            IF my_table.count <> 0 THEN
                FOR i IN my_table.first..my_table.last LOOP
                    dbms_output.put_line(my_table(i).id_animal || ' ' || my_table(i).data_inmatriculare || ' ' || my_table(i).specie_animal);
                END LOOP;
            ELSE
                dbms_output.put_line('In adapostul ' || v_nume || ' nu se afla niciun animal!');
            END IF;
        ELSE 
            DBMS_OUTPUT.PUT_LINE('In orasul ' || pt_6_id || ' nu exista niciun adapost!');
        END IF;
    
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            dbms_output.put_line('Nu exista date!');
        WHEN TOO_MANY_ROWS THEN
            dbms_output.put_line('Prea multe linii!');
        WHEN OTHERS THEN
            dbms_output.put_line('Alta eroare!');
    END cerinta6_1;
    
    --Cerinta 7
    PROCEDURE cerinta7 AS
        CURSOR c IS
            SELECT COUNT(aj.id_angajat) NR, a.nume_adapost ADAP
            FROM angajat aj , adapost a
            WHERE aj.id_adapost = a.id_adapost(+)
            GROUP BY nume_adapost;
        
        TYPE employees IS TABLE OF angajat%rowtype index by binary_integer;
        t employees;
        
        counter     number := 0;
    BEGIN
        FOR i IN c LOOP
            SELECT *
            BULK COLLECT INTO t
            FROM ANGAJAT
            WHERE id_adapost = (SELECT id_adapost
                                FROM adapost
                                WHERE nume_adapost = i.ADAP)
            ORDER BY SALARIU DESC;
            
            IF i.nr = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Adapostul ' || i.ADAP || ' are nu are niciun angajat!');
            ELSIF i.nr = 1 THEN
                DBMS_OUTPUT.PUT_LINE('Adapostul ' || i.ADAP || ' are '|| i.nr || ' angajat!');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Adapostul ' || i.ADAP || ' are ' || i.nr || ' angajati!' );
            END IF;
            
            counter := 0;
            
            FOR x IN t.FIRST..t.LAST LOOP
                EXIT WHEN COUNTER > 2;
                DBMS_OUTPUT.PUT_LINE(t(x).nume_angajat || ' ' || t(x).prenume_angajat|| ' are salariul de ' || t(x).salariu);
                counter := counter + 1;
            END LOOP;
            DBMS_OUTPUT.NEW_LINE();
        END LOOP;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Nu exista date!');
        WHEN TOO_MANY_ROWS THEN
            DBMS_OUTPUT.PUT_LINE('Prea multe date!');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Alta eroare!');
    END;
    
    --Cerinta 8
    FUNCTION ajutor_cerinta8
        (v_nume adoptanti.nume%TYPE)
    RETURN NUMBER IS
        counter number;
    BEGIN
        select count(distinct id_adapost) --Functie care ma ajuta sa gasesc nr adaposturilor din care s-au adoptat animale,
        into counter                      --de catre o persoana.
        from animal
        where id_adoptant = (select id_adoptant
                            from adoptanti
                            where upper(nume) = upper(v_nume));
        RETURN counter; --poate sa fie si 0, nu ne incurca.
    END ajutor_cerinta8;
    
    FUNCTION cerinta8
        (v_nume adoptanti.nume%TYPE DEFAULT 'Draganescu') 
    RETURN tablou_locatie IS
    
        adresa tablou_locatie;
        nr_adrese NUMBER := ajutor_cerinta8(v_nume);
    BEGIN
        IF nr_adrese = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Nu exista niciun adoptant cu numele: ' || v_nume);
        ELSE
            SELECT ' din judetul ' || judet || ', orasul ' || oras 
            BULK COLLECT INTO adresa
            FROM LOCATIE 
            WHERE ID_LOCATIE IN (SELECT locatie.ID_LOCATIE
                        FROM LOCATIE
                        INNER JOIN adapost on adapost.id_locatie = locatie.id_locatie
                        INNER JOIN animal on animal.id_adapost = adapost.id_adapost
                        INNER JOIN adoptanti on adoptanti.id_adoptant = animal.id_adoptant
                        WHERE animal.id_adoptant IS NOT NULL AND UPPER(adoptanti.nume) = upper(v_nume))
            ORDER BY id_locatie;
        END IF;
        
        RETURN adresa;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20000, 'Nu exista un adoptant cu numele specificat!');
        WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR(-20001, 'Alta eroare!');
    END cerinta8;
    
    --Cerinta 9
    PROCEDURE cerinta_9
        (v_nume_ad in adapost.nume_adapost%type DEFAULT 'RAZA DE SPERANTA') IS
        
        TYPE tablou_indexat IS TABLE OF consum%rowtype INDEX BY BINARY_INTEGER; --retinem detaliile despre o linie intreaga.
        alimente tablou_indexat;
        
        CURSOR c IS --selectez id-urile animalelor din adapostul sponsorizat de o asociatie
            SELECT id_animal id_an
            FROM animal
            WHERE id_adapost = (SELECT id_adapost
                                FROM adapost
                                WHERE upper(nume_adapost) = upper(v_nume_ad));
        
        TYPE tablou2 IS TABLE OF consum.id_consum%type INDEX BY BINARY_INTEGER; --retin id-urile fiecarui consum facut de un animal
        id_alimente tablou2;
        
        counter number; --vefiric daca sunt animale intr-un adapost.
        contor number := 1;
        counter_eg_0 EXCEPTION; --ridic eroare pt adapostul gol
        
        v_sponsorizare number := 0;
        
        v_nume_alim aliment.nume_aliment%type;
        v_pret aliment.pret%type;
    BEGIN
        SELECT COUNT(id_adapost) 
        INTO counter
        FROM animal
        WHERE id_adapost = (SELECT id_adapost
                            FROM adapost
                            WHERE upper(nume_adapost) = upper(v_nume_ad));
        
        SELECT count(id_asociatie)
        INTO v_sponsorizare
        FROM sponsorizare
        WHERE id_adapost = (SELECT id_adapost
                            FROM adapost
                            WHERE upper(nume_adapost) = upper(v_nume_ad));
        
        IF counter <> 0 THEN
            IF v_sponsorizare <> 0 THEN
                FOR i in c LOOP --pentru fiecare animal din adapost, retin cate feluri de mancare consuma.
                    SELECT id_consum
                    BULK COLLECT INTO id_alimente
                    FROM consum
                    WHERE id_animal = i.id_an; --daca adapostul are animale, nu trebuie sa verific daca id_alimente este gol pentru ca fiecare animal 
                                               --consuma MINIM 1 aliment.
                    FOR x IN id_alimente.first..id_alimente.last LOOP --apoi introduc in alimente detaliile despre fiecare aliment consumat, la fel si aici
                        SELECT  *                                     -- nu trebuie sa verific.
                        INTO alimente(contor)
                        FROM consum
                        WHERE id_consum in (select consum.id_consum
                                            FROM consum
                                            INNER JOIN aliment on consum.id_aliment = aliment.id_aliment
                                            INNER JOIN animal on consum.id_animal = animal.id_animal
                                            INNER JOIN adapost on adapost.id_adapost = animal.id_adapost
                                            INNER JOIN sponsorizare on sponsorizare.id_adapost = adapost.id_adapost
                                            INNER JOIN asociatie on asociatie.id_asociatie = sponsorizare.id_asociatie
                                            WHERE animal.id_animal = i.id_an and consum.id_consum = id_alimente(x));
                        contor := contor +1;
                    END LOOP;
                END LOOP;
                DBMS_OUTPUT.PUT_LINE('Animalele din adapostul ' || v_nume_ad||' consuma alimentele: ');
                FOR i IN alimente.first..alimente.last LOOP
                    SELECT nume_aliment, pret
                    INTO v_nume_alim, v_pret
                    FROM aliment
                    WHERE id_aliment = alimente(i).id_aliment;
                    
                    DBMS_OUTPUT.PUT_LINE('Animalul cu id-ul: ' || alimente(i).id_animal || ' consuma produsul: ' || v_nume_alim || ' care are pretul de: ' || v_pret);
                END LOOP;
            ELSE
                RAISE NO_DATA_FOUND;
            END IF;
        ELSIF counter = 0 THEN
            RAISE counter_eg_0;
        END IF;
    EXCEPTION
        WHEN counter_eg_0 THEN
            DBMS_OUTPUT.PUT_LINE('Nu exista adapostul ' || v_nume_ad);
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Adapostul nu este sponsorizat!');
        WHEN TOO_MANY_ROWS THEN
            DBMS_OUTPUT.PUT_LINE('Too many rows!');
    END;
END pack_ex13;

--Apelarea cerintei 6 din pachet.
accept oras prompt 'Introduceti numele orasului: ';
DECLARE
    v_id    LOCATIE.oras%type := '&oras';
BEGIN
    pack_ex13.cerinta6_1(v_id);
END;

--Apelarea cerintei 7 din pachet.
BEGIN
    pack_ex13.cerinta7;
END;

--Apelarea cerintei 8 din pachet.
accept Nume prompt 'Introduceti numele adoptantului: ';
DECLARE
    adresa pack_ex13.tablou_locatie;
    nume_ad varchar2(50) := '&Nume';
    nr_adrese number;
    nr_animale number;
    
    cursor c is 
    select count(id_animal) nr
    from animal
    where id_adoptant = (select id_adoptant
                        from adoptanti
                        where upper(nume) = upper(nume_ad))
    group by id_adapost
    order by id_adapost;
BEGIN
    select count(id_animal)
    into nr_animale
    from animal
    where id_adoptant = (select id_adoptant
                        from adoptanti
                        where upper(nume) = upper(nume_ad));

    adresa := pack_ex13.cerinta8(nume_ad); 
    nr_adrese := pack_ex13.ajutor_cerinta8(nume_ad);
    DBMS_OUTPUT.PUT_LINE(nume_ad || ' a adoptat ' || nr_animale || ' animale.');
    --ma folosesc de nr animale ca un counter;
    nr_animale := 1;
    FOR i IN c LOOP
         DBMS_OUTPUT.PUT_LINE( i.nr || adresa(nr_animale));
         nr_animale := nr_animale+1;
    END LOOP;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Code: ' || sqlcode || ' Error: ' || sqlerrm);
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Code: ' || sqlcode || ' Error: ' || sqlerrm );
END;

--Apelarea cerintei 9 din pachet.
accept nume_ad prompt 'Nume adapost';
BEGIN
    pack_ex13.cerinta_9('&nume_ad');
END;