--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: allie
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE universe OWNER TO allie;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: allie
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    shape character varying(30)
);


ALTER TABLE public.galaxy OWNER TO allie;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: allie
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO allie;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: allie
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: allie
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    radius_in_km integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO allie;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: allie
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO allie;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: allie
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: allie
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred spiral');
INSERT INTO public.galaxy VALUES (2, 'Messier 109', 'Barred Spiral');
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'Sunflower', 'Spiral');
INSERT INTO public.galaxy VALUES (7, 'Sombrero', 'Spiral');
INSERT INTO public.galaxy VALUES (8, 'IC 1101', 'Elliptical');
INSERT INTO public.galaxy VALUES (9, 'Messier 59', 'Elliptical');
INSERT INTO public.galaxy VALUES (10, 'Maffei 1', 'Elliptical');
INSERT INTO public.galaxy VALUES (11, 'Small Magellanic Cloud', 'Irregular');
INSERT INTO public.galaxy VALUES (12, 'NGC 5477', 'Irregular');
INSERT INTO public.galaxy VALUES (13, 'IC 4710', 'Irregular');
INSERT INTO public.galaxy VALUES (14, 'NGC 4866', 'Lenticular');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: allie
--

INSERT INTO public.star VALUES (1, 'Sun', 696000, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 822480000, 1);
INSERT INTO public.star VALUES (3, 'Aldebaran', 30739200, 1);
INSERT INTO public.star VALUES (4, 'Andromeda I', 6160000, 3);
INSERT INTO public.star VALUES (5, 'M33-1', 7200000, 5);
INSERT INTO public.star VALUES (6, 'SMC-1', 5000000, 11);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: allie
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: allie
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

