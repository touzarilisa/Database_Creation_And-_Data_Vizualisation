#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------
create database bourses;
use bourses;

drop table if exists region;
drop table if exists Academie;
drop table if exists institut;
drop table if exists secteur;
drop table if exists type_bourse;
drop table if exists type_excellence;
drop table if exists Bourse;
drop table if exists groupe_candidats;
#------------------------------------------------------------
#        Script MySQL.
##------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: region
#------------------------------------------------------------

CREATE TABLE region(
        code_region Int NOT NULL ,
        region      Varchar (50) NOT NULL
	,CONSTRAINT region_PK PRIMARY KEY (code_region)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Academie
#------------------------------------------------------------

CREATE TABLE Academie(
        code_academie Int NOT NULL ,
        academie      Varchar (50) NOT NULL ,
        code_region   Int NOT NULL
	,CONSTRAINT Academie_PK PRIMARY KEY (code_academie)

	,CONSTRAINT Academie_region_FK FOREIGN KEY (code_region) REFERENCES region(code_region)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: institut
#------------------------------------------------------------

CREATE TABLE institut(
        code_uai         Char (8) NOT NULL ,
        etablissement    Varchar (120) NOT NULL ,
        geo_localisation Varchar (50) NOT NULL ,
        code_academie    Int NOT NULL
	,CONSTRAINT institut_PK PRIMARY KEY (code_uai)

	,CONSTRAINT institut_Academie_FK FOREIGN KEY (code_academie) REFERENCES Academie(code_academie)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: secteur
#------------------------------------------------------------

CREATE TABLE secteur(
        code_secteur_cnu      Int NOT NULL ,
        secteur_disciplinaire Varchar (50) NOT NULL
	,CONSTRAINT secteur_PK PRIMARY KEY (code_secteur_cnu)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: type_bourse
#------------------------------------------------------------

CREATE TABLE type_bourse(
        code_groupe_corps Int NOT NULL ,
        groupe_de_corps   Varchar (50) NOT NULL
	,CONSTRAINT type_bourse_PK PRIMARY KEY (code_groupe_corps)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: type_excellence
#------------------------------------------------------------

CREATE TABLE type_excellence(
        code_idex Int NOT NULL ,
        code_pres Char (8) NOT NULL ,
        idex      Varchar (50) NOT NULL ,
        pres      Varchar (50) NOT NULL
	,CONSTRAINT type_excellence_PK PRIMARY KEY (code_idex,code_pres)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Bourse
#------------------------------------------------------------

CREATE TABLE Bourse(
        id_bourse         Int NOT NULL ,
        code_uai          Char (8) NOT NULL ,
        code_secteur_cnu  Int NOT NULL ,
        code_groupe_corps Int NOT NULL ,
        code_idex         Int NOT NULL ,
        code_pres         Char (8) NOT NULL
	,CONSTRAINT Bourse_PK PRIMARY KEY (id_bourse)

	,CONSTRAINT Bourse_institut_FK FOREIGN KEY (code_uai) REFERENCES institut(code_uai)
	,CONSTRAINT Bourse_secteur0_FK FOREIGN KEY (code_secteur_cnu) REFERENCES secteur(code_secteur_cnu)
	,CONSTRAINT Bourse_type_bourse1_FK FOREIGN KEY (code_groupe_corps) REFERENCES type_bourse(code_groupe_corps)
	,CONSTRAINT Bourse_type_excellence2_FK FOREIGN KEY (code_idex,code_pres) REFERENCES type_excellence(code_idex,code_pres)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: groupe_candidats
#------------------------------------------------------------

CREATE TABLE groupe_candidats(
        id_groupe     Int NOT NULL ,
        sexe          Char (8) NOT NULL ,
        annee         Int NOT NULL ,
        beneficiaires Int NOT NULL ,
        id_bourse     Int NOT NULL
	,CONSTRAINT groupe_candidats_PK PRIMARY KEY (id_groupe)

	,CONSTRAINT groupe_candidats_Bourse_FK FOREIGN KEY (id_bourse) REFERENCES Bourse(id_bourse)
)ENGINE=InnoDB;


