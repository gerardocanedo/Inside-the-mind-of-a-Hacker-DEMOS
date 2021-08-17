-- Create table

CREATE TABLE IF NOT EXISTS public."customercreditcard"
(
    CC_ID integer NOT NULL,
    CC_Number character varying(1000) COLLATE pg_catalog."default",
    CC_Number_Secure character varying(1000) COLLATE pg_catalog."default",
    CC_Type character varying(1000) COLLATE pg_catalog."default",
    CC_Expiration_Date character varying(1000) COLLATE pg_catalog."default",
    Cardholder_Name character varying(1000) COLLATE pg_catalog."default",
    CONSTRAINT customercreditcard_pkey PRIMARY KEY (CC_ID),
    CONSTRAINT CC_Number UNIQUE (CC_Number)
)

TABLESPACE pg_default;

ALTER TABLE public."customercreditcard"
    OWNER to postgres;

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Insert data

INSERT INTO public."customercreditcard"(
	CC_ID, CC_Number, CC_Number_Secure, CC_Type, CC_Expiration_Date, Cardholder_Name)
	VALUES (1, 5491577499168195, 254, 'MASTERCARD', '10/2021', 'Bengoechea Isaias');
INSERT INTO public."customercreditcard"(
	CC_ID, CC_Number, CC_Number_Secure, CC_Type, CC_Expiration_Date, Cardholder_Name)
	VALUES (2, 5354238908348276, 314, 'MASTERCARD', '07/2027', 'Jairo Rodrigo');
INSERT INTO public."customercreditcard"(
	CC_ID, CC_Number, CC_Number_Secure, CC_Type, CC_Expiration_Date, Cardholder_Name)
	VALUES (3, 5417560761460822, 689, 'MASTERCARD', '09/2024', 'Del Valle Flora');
INSERT INTO public."customercreditcard"(
	CC_ID, CC_Number, CC_Number_Secure, CC_Type, CC_Expiration_Date, Cardholder_Name)
	VALUES (4, 4525946002410357, 723, 'VISA', '05/2023', 'Montenegro Maria Aurora');
INSERT INTO public."customercreditcard"(
	CC_ID, CC_Number, CC_Number_Secure, CC_Type, CC_Expiration_Date, Cardholder_Name)
	VALUES (5, 4930789208551304, 415, 'VISA', '05/2024', 'Pallares Ricardo');
INSERT INTO public."customercreditcard"(
	CC_ID, CC_Number, CC_Number_Secure, CC_Type, CC_Expiration_Date, Cardholder_Name)
	VALUES (6, 4790735626356759, 838, 'VISA', '10/2024', 'Chaves Antonio Javier');
INSERT INTO public."customercreditcard"(
	CC_ID, CC_Number, CC_Number_Secure, CC_Type, CC_Expiration_Date, Cardholder_Name)
	VALUES (7, 378284085391971, 909, 'AMERICAN EXPRESS', '07/2022', 'Aguirre Vicente');
INSERT INTO public."customercreditcard"(
	CC_ID, CC_Number, CC_Number_Secure, CC_Type, CC_Expiration_Date, Cardholder_Name)
	VALUES (8, 340344326453058, 528, 'AMERICAN EXPRESS', '12/2022', 'Pastor Amador');
INSERT INTO public."customercreditcard"(
	CC_ID, CC_Number, CC_Number_Secure, CC_Type, CC_Expiration_Date, Cardholder_Name)
	VALUES (9, 347966061731331, 649, 'AMERICAN EXPRESS', '11/2021', 'Guardiola Martin');