--
-- PostgreSQL database dump
--

\restrict P16pVcGDcgF7hGSrJQn515i5sCmXOznjmYiHqVqgW86hdwU3vDubB7mjLqyE6nU

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2025-12-04 14:58:42

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 224 (class 1259 OID 16434)
-- Name: checklist; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.checklist (
    checklist_id integer NOT NULL,
    cosplay_name character varying(150) NOT NULL,
    voce character varying(255) NOT NULL,
    completato boolean DEFAULT false
);


ALTER TABLE public.checklist OWNER TO admin;

--
-- TOC entry 223 (class 1259 OID 16433)
-- Name: checklist_checklist_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.checklist_checklist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.checklist_checklist_id_seq OWNER TO admin;

--
-- TOC entry 5052 (class 0 OID 0)
-- Dependencies: 223
-- Name: checklist_checklist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.checklist_checklist_id_seq OWNED BY public.checklist.checklist_id;


--
-- TOC entry 220 (class 1259 OID 16402)
-- Name: cosplays; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.cosplays (
    cosplay_name character varying(150) NOT NULL,
    user_login character varying(100) NOT NULL,
    descrizione text
);


ALTER TABLE public.cosplays OWNER TO admin;

--
-- TOC entry 222 (class 1259 OID 16417)
-- Name: images; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.images (
    image_id integer NOT NULL,
    cosplay_name character varying(150) NOT NULL,
    image_path text NOT NULL
);


ALTER TABLE public.images OWNER TO admin;

--
-- TOC entry 221 (class 1259 OID 16416)
-- Name: images_image_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.images_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.images_image_id_seq OWNER TO admin;

--
-- TOC entry 5053 (class 0 OID 0)
-- Dependencies: 221
-- Name: images_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.images_image_id_seq OWNED BY public.images.image_id;


--
-- TOC entry 226 (class 1259 OID 16450)
-- Name: prezzi; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.prezzi (
    prezzo_id integer NOT NULL,
    cosplay_name character varying(150) NOT NULL,
    voce character varying(255),
    costo numeric(10,2) NOT NULL
);


ALTER TABLE public.prezzi OWNER TO admin;

--
-- TOC entry 225 (class 1259 OID 16449)
-- Name: prezzi_prezzo_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.prezzi_prezzo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.prezzi_prezzo_id_seq OWNER TO admin;

--
-- TOC entry 5054 (class 0 OID 0)
-- Dependencies: 225
-- Name: prezzi_prezzo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.prezzi_prezzo_id_seq OWNED BY public.prezzi.prezzo_id;


--
-- TOC entry 219 (class 1259 OID 16395)
-- Name: users; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.users (
    login character varying(100) NOT NULL,
    password character varying(100) NOT NULL
);


ALTER TABLE public.users OWNER TO admin;

--
-- TOC entry 4875 (class 2604 OID 16437)
-- Name: checklist checklist_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.checklist ALTER COLUMN checklist_id SET DEFAULT nextval('public.checklist_checklist_id_seq'::regclass);


--
-- TOC entry 4874 (class 2604 OID 16420)
-- Name: images image_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.images ALTER COLUMN image_id SET DEFAULT nextval('public.images_image_id_seq'::regclass);


--
-- TOC entry 4877 (class 2604 OID 16453)
-- Name: prezzi prezzo_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.prezzi ALTER COLUMN prezzo_id SET DEFAULT nextval('public.prezzi_prezzo_id_seq'::regclass);


--
-- TOC entry 5044 (class 0 OID 16434)
-- Dependencies: 224
-- Data for Name: checklist; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.checklist (checklist_id, cosplay_name, voce, completato) FROM stdin;
\.


--
-- TOC entry 5040 (class 0 OID 16402)
-- Dependencies: 220
-- Data for Name: cosplays; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.cosplays (cosplay_name, user_login, descrizione) FROM stdin;
\.


--
-- TOC entry 5042 (class 0 OID 16417)
-- Dependencies: 222
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.images (image_id, cosplay_name, image_path) FROM stdin;
\.


--
-- TOC entry 5046 (class 0 OID 16450)
-- Dependencies: 226
-- Data for Name: prezzi; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.prezzi (prezzo_id, cosplay_name, voce, costo) FROM stdin;
\.


--
-- TOC entry 5039 (class 0 OID 16395)
-- Dependencies: 219
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.users (login, password) FROM stdin;
\.


--
-- TOC entry 5055 (class 0 OID 0)
-- Dependencies: 223
-- Name: checklist_checklist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.checklist_checklist_id_seq', 21, true);


--
-- TOC entry 5056 (class 0 OID 0)
-- Dependencies: 221
-- Name: images_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.images_image_id_seq', 15, true);


--
-- TOC entry 5057 (class 0 OID 0)
-- Dependencies: 225
-- Name: prezzi_prezzo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.prezzi_prezzo_id_seq', 15, true);


--
-- TOC entry 4885 (class 2606 OID 16443)
-- Name: checklist checklist_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.checklist
    ADD CONSTRAINT checklist_pkey PRIMARY KEY (checklist_id);


--
-- TOC entry 4881 (class 2606 OID 16410)
-- Name: cosplays cosplays_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.cosplays
    ADD CONSTRAINT cosplays_pkey PRIMARY KEY (cosplay_name);


--
-- TOC entry 4883 (class 2606 OID 16427)
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (image_id);


--
-- TOC entry 4887 (class 2606 OID 16458)
-- Name: prezzi prezzi_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.prezzi
    ADD CONSTRAINT prezzi_pkey PRIMARY KEY (prezzo_id);


--
-- TOC entry 4879 (class 2606 OID 16401)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (login);


--
-- TOC entry 4890 (class 2606 OID 16444)
-- Name: checklist checklist_cosplay_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.checklist
    ADD CONSTRAINT checklist_cosplay_name_fkey FOREIGN KEY (cosplay_name) REFERENCES public.cosplays(cosplay_name) ON DELETE CASCADE;


--
-- TOC entry 4888 (class 2606 OID 16411)
-- Name: cosplays cosplays_user_login_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.cosplays
    ADD CONSTRAINT cosplays_user_login_fkey FOREIGN KEY (user_login) REFERENCES public.users(login) ON DELETE CASCADE;


--
-- TOC entry 4889 (class 2606 OID 16428)
-- Name: images images_cosplay_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_cosplay_name_fkey FOREIGN KEY (cosplay_name) REFERENCES public.cosplays(cosplay_name) ON DELETE CASCADE;


--
-- TOC entry 4891 (class 2606 OID 16459)
-- Name: prezzi prezzi_cosplay_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.prezzi
    ADD CONSTRAINT prezzi_cosplay_name_fkey FOREIGN KEY (cosplay_name) REFERENCES public.cosplays(cosplay_name) ON DELETE CASCADE;


-- Completed on 2025-12-04 14:58:42

--
-- PostgreSQL database dump complete
--

\unrestrict P16pVcGDcgF7hGSrJQn515i5sCmXOznjmYiHqVqgW86hdwU3vDubB7mjLqyE6nU

