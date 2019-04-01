

DROP DATABASE IF EXISTS gestion_etudiant;
CREATE DATABASE IF NOT EXISTS gestion_etudiant;
USE gestion_etudiant;


CREATE TABLE UTILISATEUR (
	ID int(4) AUTO_INCREMENT PRIMARY KEY,
	LOGIN VARCHAR(100) NOT NULL,
	PWD VARCHAR(255) NOT NULL,
	ROLE VARCHAR(50),
	EMAIL VARCHAR(255),
	ETAT INT(1)); 

		
CREATE TABLE ETUDIANT (
	ID int(4) AUTO_INCREMENT PRIMARY KEY,
	NOM VARCHAR(50) NOT NULL,
	PRENOM VARCHAR(50) NOT NULL,
	ID_FILIERE int(4),
	PHOTO VARCHAR(50),
	CIVILITE VARCHAR(1));

CREATE TABLE FILIERE (                    
	ID int(4) AUTO_INCREMENT PRIMARY KEY, 
	NOM_FILIERE VARCHAR(100) NOT NULL,    
	NIVEAU VARCHAR(100) NOT NULL); 
	
ALTER TABLE ETUDIANT ADD constraint fk10 foreign key(ID_FILIERE) references FILIERE(ID);

INSERT INTO FILIERE(NOM_FILIERE,NIVEAU) VALUES
	('MPI','1'),
	('IIA','2'),
	('RT','2'),
	('GL','2'),
	('IMI','2'),
	('IIA','3'),
	('RT','3'),
	('GL','3'),
	('IMI','3'),
	('IIA','4'),
	('RT','4'),
	('GL','4'),
	('IMI','4'),
	('IIA','5'),
	('RT','5'),
	('GL','5'),
	('IMI','5')
	;	
	
	
INSERT INTO UTILISATEUR VALUES 
	(1,'admin',md5('123'),'ADMIN','lahcenabousalih@gmail.com',1),
	(2,'user1',md5('123'),'VISITEUR','user1@gmail.com',1),
	(3,'user2',md5('123'),'VISITEUR','user2@gmail.com',1);	

INSERT INTO ETUDIANT(NOM,PRENOM,ID_FILIERE,PHOTO,CIVILITE) VALUES
('MAMI','AYA',1,'aya.png','F'),
	('SEHLI','ASMA',2,'asma.png','F'),
	('BEN MANSOUR','IMEN',3,'imen.png','F'),
	('MELLITI','ISLEM',4,'user_green.png','F'),
	('TOUNSI','ALI',5,'m1.png','M'),
	('MAMI','ALA',6,'m2.png','M');


SELECT * FROM FILIERE;
SELECT * FROM ETUDIANT;
SELECT * FROM UTILISATEUR;
				
