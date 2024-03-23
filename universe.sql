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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: allie
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer,
    type character varying(30)
);


ALTER TABLE public.black_hole OWNER TO allie;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: allie
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO allie;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: allie
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: allie
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    shape character varying(30),
    is_visible boolean
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
-- Name: moon; Type: TABLE; Schema: public; Owner: allie
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    discovery_year integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO allie;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: allie
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO allie;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: allie
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: allie
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    description text,
    year_in_earth_days numeric(10,2),
    has_moons boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO allie;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: allie
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO allie;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: allie
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: allie
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A*', 1, 'Supermassive');
INSERT INTO public.black_hole VALUES (2, 'M31', 3, 'Supermassive');
INSERT INTO public.black_hole VALUES (3, 'Messier 104', 7, 'Supermassive');
INSERT INTO public.black_hole VALUES (4, 'Messier 33', 5, 'Intermediate-mass');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: allie
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred spiral', true);
INSERT INTO public.galaxy VALUES (2, 'Messier 109', 'Barred Spiral', false);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'Spiral', true);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 'Spiral', false);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 'Spiral', true);
INSERT INTO public.galaxy VALUES (6, 'Sunflower', 'Spiral', false);
INSERT INTO public.galaxy VALUES (7, 'Sombrero', 'Spiral', false);
INSERT INTO public.galaxy VALUES (8, 'IC 1101', 'Elliptical', false);
INSERT INTO public.galaxy VALUES (9, 'Messier 59', 'Elliptical', false);
INSERT INTO public.galaxy VALUES (10, 'Maffei 1', 'Elliptical', false);
INSERT INTO public.galaxy VALUES (11, 'Small Magellanic Cloud', 'Irregular', true);
INSERT INTO public.galaxy VALUES (12, 'NGC 5477', 'Irregular', false);
INSERT INTO public.galaxy VALUES (13, 'IC 4710', 'Irregular', false);
INSERT INTO public.galaxy VALUES (14, 'NGC 4866', 'Lenticular', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: allie
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 1877, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 1877, 4);
INSERT INTO public.moon VALUES (4, 'Jupiter I', 1610, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 1610, 5);
INSERT INTO public.moon VALUES (6, 'Callisto', 1610, 5);
INSERT INTO public.moon VALUES (7, 'Mimas', 1789, 6);
INSERT INTO public.moon VALUES (8, 'Enceladus', 1789, 6);
INSERT INTO public.moon VALUES (9, 'Titan', 1655, 6);
INSERT INTO public.moon VALUES (10, 'Ariel', 1851, 7);
INSERT INTO public.moon VALUES (11, 'Miranda', 1948, 7);
INSERT INTO public.moon VALUES (12, 'Triton', 1846, 8);
INSERT INTO public.moon VALUES (13, 'Nereid', 1949, 8);
INSERT INTO public.moon VALUES (14, 'Galatea', 1989, 8);
INSERT INTO public.moon VALUES (15, 'Charon', 1978, 9);
INSERT INTO public.moon VALUES (16, 'Nix', 2005, 9);
INSERT INTO public.moon VALUES (17, 'Hydra', 2005, 9);
INSERT INTO public.moon VALUES (18, 'Dysnomia', 2005, 10);
INSERT INTO public.moon VALUES (19, 'Namaka', 2005, 11);
INSERT INTO public.moon VALUES (20, 'Rhea', 1672, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: allie
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'It is the smallest planet in the solar system and it has more craters and impact marks than any other planet. ', 88.00, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'It is the hottest planet in the solar system and it rotates in the opposite direction to other planets.', 225.00, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'It is the only known planet to support life.', 365.25, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'It is the only other planet besides Earth that has polar ice caps and it experiences huge dust storms - the largest in the solar system.', 687.00, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'It is the largest and most massive planet in the solar system.', 4333.00, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'It is the least dense planet in the solar system and it has the fastest winds of any other planet.', 10759.00, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'It is the coldest planet in the solar system', 84.00, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'It is the outermost planet in the solar system', 60182.00, true, 1);
INSERT INTO public.planet VALUES (12, 'Makemake', 'It lies beyond the orbit of Neptune and ts discovery gave rise to the dwarf planet group.', 112785.00, false, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', 'It is located beyond the orbit of Neptune and has a unique egg-like shape because of its fast rotation.', 103960.00, true, 1);
INSERT INTO public.planet VALUES (10, 'Eris', 'It is the furthest dwarf planet from the Sun, and is also the most massive dwarf planet. It is located beyond the orbit of Neptune.', 203390.00, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'It is te largest dwarf planet and its orbit is chaotic and unpredictable.', 90582.00, true, 1);
INSERT INTO public.planet VALUES (13, 'Ceres', 'It is the closest dwarf planet to the Sun. It lies on the main asteroid belt, between the planets Mars and Jupiter.', 1682.00, false, 1);


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
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: allie
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: allie
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 14, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: allie
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: allie
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: allie
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: black_hole black_hole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: allie
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

