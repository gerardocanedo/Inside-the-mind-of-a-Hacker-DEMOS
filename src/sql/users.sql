-- Table: public.user

-- DROP TABLE public."user";

CREATE SEQUENCE public.user_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.user_id_seq
    OWNER TO postgres;

CREATE TABLE IF NOT EXISTS public."user"
(
    id integer NOT NULL DEFAULT nextval('user_id_seq'::regclass),
    email character varying(1000) COLLATE pg_catalog."default",
    username character varying(100) COLLATE pg_catalog."default",
    password character varying(100) COLLATE pg_catalog."default",
    name character varying(1000) COLLATE pg_catalog."default",
    CONSTRAINT user_pkey PRIMARY KEY (id),
    CONSTRAINT user_username_key UNIQUE (username)
)

TABLESPACE pg_default;

ALTER TABLE public."user"
    OWNER to postgres;

-- Started on 2021-06-28 10:01:54 -03

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

--
-- TOC entry 2944 (class 0 OID 16399)
-- Dependencies: 201
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
-- 80316e9b2f63cc35226fba9b508ab702568c3397bbed514de8de28c3d663f0bb
-- 

-- OPY public."user" (id, email, username, password, name) FROM stdin;
-- 99	pp@mail.com	admin	sha1$gUjybRAG$b4da0e88099d4e4b709dfdf80733c76dbf9491f0	User
-- \.

INSERT INTO public."user"(
	id, email, username, password, name)
	VALUES (2, 'castropablojavier10@gmail.com', 'castropablojavier', '9ac172d7c1bba6f00ed4777c1c39b5b50da48835', 'Pablo Javier Castro');

INSERT INTO public."user"(
	id, email, username, password, name)
	VALUES (1, 'admin@victima.local', 'admin', 'fb0773f3f26bf197e3629672208f9775f7dd4b73', 'Administrator');



--
-- TOC entry 2951 (class 0 OID 0)
-- Dependencies: 200
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 1, true);


-- Completed on 2021-06-28 10:01:54 -03

--
-- PostgreSQL database dump complete
--

