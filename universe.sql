--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    age integer,
    distance numeric(7,1),
    black_hole_id integer NOT NULL,
    name character varying(45) NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(45) NOT NULL,
    distance_from_earth integer,
    sides integer,
    age numeric(7,1),
    description text,
    has_life boolean,
    is_spheric boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(45) NOT NULL,
    distance_from_earth integer,
    sides integer,
    age numeric(7,1),
    description text,
    has_life boolean,
    is_spheric boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(45) NOT NULL,
    distance_from_earth integer,
    sides integer,
    age numeric(7,1),
    description text,
    has_life boolean,
    is_spheric boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(45) NOT NULL,
    distance_from_earth integer,
    sides integer,
    age numeric(7,1),
    description text,
    has_life boolean,
    is_spheric boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (45, 89.5, 1, 'RFEFWRF');
INSERT INTO public.black_hole VALUES (89, 56.2, 2, 'kuhkj');
INSERT INTO public.black_hole VALUES (45, 65.9, 3, 'JGJHK5');
INSERT INTO public.black_hole VALUES (28, 78.6, 4, 'HJ568');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'JFSDAF', 865, 8, 45.3, 'FRAERAG', true, false);
INSERT INTO public.galaxy VALUES (2, 'SDFGSDFG', 7335, 2, 56.8, 'GEGDFG', false, false);
INSERT INTO public.galaxy VALUES (3, 'SDERGDFG', 4535, 6, 87.8, 'GRTYDFG', true, false);
INSERT INTO public.galaxy VALUES (4, 'SBNTY', 7457, 6, 56.8, 'FERGG', true, true);
INSERT INTO public.galaxy VALUES (5, 'GERgreagJDGFDG', 36, 76, 515.8, 'JgsagagVS', false, false);
INSERT INTO public.galaxy VALUES (6, 'GERASDFADF', 36, 76, 515.8, 'JgHGDFSHSDFGHS', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'TREG', 34557, 2, 58.8, 'GFDGG', true, true, 1);
INSERT INTO public.moon VALUES (2, 'JUJW', 974, 2, 90.8, 'GJUYG', false, true, 1);
INSERT INTO public.moon VALUES (3, 'LOPW', 454, 9, 53.8, 'YTREG', false, false, 2);
INSERT INTO public.moon VALUES (4, 'JGJffg5', 36, 76, 515.8, 'DKUYIYTEUY', false, false, 2);
INSERT INTO public.moon VALUES (5, 'JGJff75', 36, 76, 515.8, 'DKUYIYTEUY', false, false, 3);
INSERT INTO public.moon VALUES (6, 'JGJff76', 36, 76, 515.8, 'DKUYIYTEUY', false, false, 4);
INSERT INTO public.moon VALUES (7, 'JGJff77', 36, 76, 515.8, 'DKUYIYTEUY', false, false, 4);
INSERT INTO public.moon VALUES (8, 'JGJf877', 36, 76, 515.8, 'DKUYIYTEUY', false, false, 6);
INSERT INTO public.moon VALUES (9, 'JGJf897', 36, 76, 515.8, 'DKUYIYTEUY', false, false, 6);
INSERT INTO public.moon VALUES (10, '10JGJf897', 36, 76, 515.8, 'DKUYIYTEUY', false, false, 7);
INSERT INTO public.moon VALUES (11, '10JGJf117', 36, 76, 515.8, 'DKUYIYTEUY', false, false, 8);
INSERT INTO public.moon VALUES (12, '1120JGJf117', 36, 76, 515.8, 'DKUYIYTEUY', false, false, 9);
INSERT INTO public.moon VALUES (13, '1120J13117', 36, 76, 515.8, 'DKUYIYTEUY', false, false, 10);
INSERT INTO public.moon VALUES (14, '112147', 36, 76, 515.8, 'DKUYIYTEUY', false, false, 4);
INSERT INTO public.moon VALUES (15, '111547', 36, 76, 515.8, 'DKUYIYTEUY', false, false, 11);
INSERT INTO public.moon VALUES (16, '11151647', 36, 76, 515.8, 'DKUYIYTEUY', false, false, 12);
INSERT INTO public.moon VALUES (17, '1115117647', 36, 76, 515.8, 'DKUYIYTEUY', false, false, 1);
INSERT INTO public.moon VALUES (18, '1118', 36, 76, 515.8, 'DKUYIYTEUY', false, false, 2);
INSERT INTO public.moon VALUES (19, '1198', 36, 76, 515.8, 'DKUYIYTEUY', false, false, 3);
INSERT INTO public.moon VALUES (20, '1208', 36, 76, 515.8, 'DKUYIYTEUY', false, false, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'PWEF', 963, 1, 78.8, 'HYTE', false, true, 1);
INSERT INTO public.planet VALUES (2, 'HRJF', 593, 23, 71.8, 'GERGE', true, true, 1);
INSERT INTO public.planet VALUES (3, 'HYTE', 56, 28, 13.8, 'GTERDE', false, true, 3);
INSERT INTO public.planet VALUES (4, 'GFSFDSF7', 36, 76, 515.8, 'FREDG', false, false, 2);
INSERT INTO public.planet VALUES (5, 'FREGFDGFDG', 36, 76, 515.8, 'JRYJGFHDG', false, false, 3);
INSERT INTO public.planet VALUES (6, 'GERHTYJDGFDG', 36, 76, 515.8, 'JRSDVFVS', false, false, 4);
INSERT INTO public.planet VALUES (7, 'JASDFASDFFF', 36, 76, 515.8, 'DASDFASDFAF', false, false, 4);
INSERT INTO public.planet VALUES (8, 'ASDFASDFDFFF', 36, 76, 515.8, 'SDFADSFADFF', false, false, 5);
INSERT INTO public.planet VALUES (9, 'ASDJTYDJDFHGD', 36, 76, 515.8, 'JTHJDFJHGH', false, false, 5);
INSERT INTO public.planet VALUES (10, 'ASD45DSFDSAF', 36, 76, 515.8, 'JTH\\\HRDHJDFJHGH', false, false, 6);
INSERT INTO public.planet VALUES (11, 'AKYGKHJKHJ', 36, 76, 515.8, 'DSFASDFASDFASDF', false, false, 6);
INSERT INTO public.planet VALUES (12, 'AKUYFJTD', 36, 76, 515.8, 'DKUYIYTEUY', false, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'POLER', 64, 58, 585.8, 'REGREF', true, false, 2);
INSERT INTO public.star VALUES (1, 'IPRWK', 59, 16, 765.8, 'GTYHE', false, false, 1);
INSERT INTO public.star VALUES (3, 'AXUR', 36, 76, 515.8, 'FERGSF', false, false, 3);
INSERT INTO public.star VALUES (4, 'GTREF', 36, 76, 515.8, 'FERGSF', false, false, 4);
INSERT INTO public.star VALUES (5, 'HYTEF8', 36, 76, 515.8, 'FERGSF', false, false, 5);
INSERT INTO public.star VALUES (6, 'GTRE567', 36, 76, 515.8, 'REDFG', false, false, 6);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 8, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: black_hole unique_blackhole; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT unique_blackhole UNIQUE (name);


--
-- Name: star unique_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_constraint UNIQUE (name);


--
-- Name: galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy UNIQUE (name);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

