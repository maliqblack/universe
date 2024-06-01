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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    distance_from_earth numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    weight_in_million_ton integer
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
    name character varying(30),
    distance_from_earth numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    weight_in_million_ton integer,
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
    name character varying(30),
    distance_from_earth numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    weight_in_million_ton integer,
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
    name character varying(30),
    distance_from_earth numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    weight_in_million_ton integer,
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
-- Name: table_fiv; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table_fiv (
    table_fiv_id integer NOT NULL,
    zahl1 integer NOT NULL,
    zahl2 integer NOT NULL,
    wahr boolean,
    falsch boolean,
    description text,
    name character varying(30)
);


ALTER TABLE public.table_fiv OWNER TO freecodecamp;

--
-- Name: table_fiv_table_fiv_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.table_fiv_table_fiv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table_fiv_table_fiv_id_seq OWNER TO freecodecamp;

--
-- Name: table_fiv_table_fiv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.table_fiv_table_fiv_id_seq OWNED BY public.table_fiv.table_fiv_id;


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
-- Name: table_fiv table_fiv_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_fiv ALTER COLUMN table_fiv_id SET DEFAULT nextval('public.table_fiv_table_fiv_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 2537000, 'Nearest major galaxy to the Milky Way.', false, true, 10000, 1250000);
INSERT INTO public.galaxy VALUES (2, 'Triangulum', 3000000, 'A member of the Local Group of galaxies.', false, true, 10000, 50000);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 29000000, 'A bright galaxy with a distinctive dust lane.', false, true, 8000, 80000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 23000000, 'A classic spiral galaxy interacting with a smaller galaxy.', false, true, 5000, 160000);
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 17000000, 'Notable for a prominent dark band of absorbing dust.', false, true, 10000, 40000);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 500000000, 'A lenticular galaxy and ring galaxy about 500 million light-years away.', false, true, 10000, 350000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mond1', 384400, 'Der einzige natürliche Satellit der Erde.', false, true, 4500, 73477, 2);
INSERT INTO public.moon VALUES (2, 'Mond2', 415000, 'Ein mysteriöser Mond.', false, true, 3000, 50000, 2);
INSERT INTO public.moon VALUES (3, 'Mond3', 600000, 'Ein ferne Mond.', false, false, 2000, 60000, 2);
INSERT INTO public.moon VALUES (4, 'Mond4', 800000, 'Ein Mond mit aktiven Vulkanen.', false, true, 3500, 80000, 2);
INSERT INTO public.moon VALUES (5, 'Mond5', 1000000, 'Ein kleiner Mond mit dünner Atmosphäre.', false, true, 2500, 30000, 2);
INSERT INTO public.moon VALUES (6, 'Mond6', 1500000, 'Ein Mond aus Eis.', false, true, 1000, 50000, 2);
INSERT INTO public.moon VALUES (7, 'Mond7', 2000000, 'Ein unregelmäßig geformter Mond.', false, false, 4500, 70000, 2);
INSERT INTO public.moon VALUES (8, 'Mond8', 2500000, 'Ein Mond mit vielen Kratern.', false, true, 4000, 60000, 2);
INSERT INTO public.moon VALUES (9, 'Mond9', 3000000, 'Ein Mond mit unterirdischen Ozeanen.', false, true, 5000, 55000, 2);
INSERT INTO public.moon VALUES (11, 'Mond11', 4000000, 'Ein sehr heißer Mond.', false, true, 3500, 48000, 2);
INSERT INTO public.moon VALUES (12, 'Mond12', 4500000, 'Ein Mond mit vielen Tälern und Bergen.', false, true, 4700, 72000, 2);
INSERT INTO public.moon VALUES (13, 'Mond13', 5000000, 'Ein Mond, der von Ringen umgeben ist.', false, true, 3800, 50000, 2);
INSERT INTO public.moon VALUES (14, 'Mond14', 5500000, 'Ein sehr dunkler Mond.', false, true, 4300, 63000, 2);
INSERT INTO public.moon VALUES (15, 'Mond15', 6000000, 'Ein Mond mit starken Magnetfeldern.', false, true, 4200, 58000, 2);
INSERT INTO public.moon VALUES (16, 'Mond16', 6500000, 'Ein Mond, der stark reflektiert.', false, true, 4500, 57000, 2);
INSERT INTO public.moon VALUES (17, 'Mond17', 7000000, 'Ein Mond mit einer dünnen Schicht aus Eis.', false, true, 4400, 59000, 2);
INSERT INTO public.moon VALUES (18, 'Mond18', 7500000, 'Ein Mond mit einer giftigen Atmosphäre.', false, true, 4000, 62000, 2);
INSERT INTO public.moon VALUES (19, 'Mond19', 8000000, 'Ein Mond mit spektakulären Polarlichtern.', false, true, 4600, 61000, 2);
INSERT INTO public.moon VALUES (10, 'Mond10', 3500000, 'Ein Mond, der möglicherweise Leben beherbergen könnte.', true, true, 4500, 65000, 3);
INSERT INTO public.moon VALUES (20, 'Mond20', 8500000, 'Ein Mond, der Leben unterstützen könnte.', true, true, 4500, 65000, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Erde', 0.0, 'Unser Heimatplanet', true, true, 4500, 5972, 1);
INSERT INTO public.planet VALUES (1, 'Merkur', 77.3, 'Der kleinste Planet im Sonnensystem', false, true, 4500, 330, 2);
INSERT INTO public.planet VALUES (2, 'Venus', 41.4, 'Der heißeste Planet im Sonnensystem', false, true, 4500, 4870, 2);
INSERT INTO public.planet VALUES (4, 'Mars', 78.3, 'Der rote Planet', false, true, 4500, 641, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 628.7, 'Der größte Planet im Sonnensystem', false, true, 4500, 1898000, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 1275.0, 'Bekannt für seine Ringe', false, true, 4500, 568300, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 2724.0, 'Ein Planet mit einem schrägen Rotationswinkel', false, true, 4500, 86810, 2);
INSERT INTO public.planet VALUES (8, 'Neptun', 4351.0, 'Der äußerste Planet im Sonnensystem', false, true, 4500, 102400, 2);
INSERT INTO public.planet VALUES (9, 'Pluto', 4726.0, 'Ein Zwergplanet', false, true, 4500, 13, 2);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 600.0, 'Ein potenziell lebensfreundlicher Exoplanet', false, true, 4000, 3000, 2);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri b', 4.24, 'Ein erdähnlicher Planet in der habitablen Zone', false, true, 4500, 1200, 2);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 39.5, 'Ein Exoplanet in einem System mit sieben Planeten', false, true, 4500, 1000, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'ProximaCentauri', 4.24, 'Closest known star to the Sun.', false, true, 4500, 100000, 2);
INSERT INTO public.star VALUES (2, 'Sirius', 8.6, 'The brightest star in the Earth night sky.', false, true, 300, 200000, 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 642.5, 'A red supergiant star in the constellation Orion.', false, true, 8000, 1500000, 2);
INSERT INTO public.star VALUES (4, 'AlphaCentauriA', 4.37, 'The closest star system to the Solar System.', false, true, 4500, 120000, 2);
INSERT INTO public.star VALUES (5, 'Vega', 25.04, 'A bright star in the constellation Lyra.', false, true, 450, 500000, 2);
INSERT INTO public.star VALUES (6, 'Gliese', 20.3, 'A star in the constellation Libra with a planetary system.', true, true, 4000, 100000, 1);


--
-- Data for Name: table_fiv; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table_fiv VALUES (1, 21, 42, false, true, 'Hallo', 'hallo');
INSERT INTO public.table_fiv VALUES (2, 121, 142, false, true, 'Hallo1', 'hallo1');
INSERT INTO public.table_fiv VALUES (3, 221, 422, false, true, 'Hallo2', 'hallo2');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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
-- Name: table_fiv_table_fiv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.table_fiv_table_fiv_id_seq', 3, true);


--
-- Name: table_fiv fiv_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_fiv
    ADD CONSTRAINT fiv_unique_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_name UNIQUE (name);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_name UNIQUE (name);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_name UNIQUE (name);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: table_fiv table_fiv_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_fiv
    ADD CONSTRAINT table_fiv_name_key UNIQUE (name);


--
-- Name: table_fiv table_fiv_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_fiv
    ADD CONSTRAINT table_fiv_pkey PRIMARY KEY (table_fiv_id);


--
-- Name: star unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name UNIQUE (name);


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

