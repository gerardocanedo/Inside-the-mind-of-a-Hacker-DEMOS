CREATE SEQUENCE public.invoice_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.invoice_id_seq
    OWNER TO postgres;


-- Create table

CREATE TABLE IF NOT EXISTS public.invoice
(
    id integer NOT NULL DEFAULT nextval('invoice_id_seq'::regclass),
    description character varying(100) COLLATE pg_catalog."default",
    amount integer,
    CONSTRAINT invoice_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.invoice
    OWNER to postgres;

-- Started on 2021-06-28 10:01:15 -03

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
-- TOC entry 2942 (class 0 OID 16412)
-- Dependencies: 203
-- Data for Name: invoice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoice (id, description, amount) FROM stdin;
1	Invoice 1	1
2	Invoice 2	2001
\.


--
-- TOC entry 2949 (class 0 OID 0)
-- Dependencies: 202
-- Name: invoice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoice_id_seq', 1, false);


-- Completed on 2021-06-28 10:01:15 -03

--
-- PostgreSQL database dump complete
--

