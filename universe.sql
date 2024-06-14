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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroids (
    asteroids_id integer NOT NULL,
    has_life boolean,
    is_sphere boolean,
    distance_from_earth_in_light_years numeric(10,1),
    notes text,
    name character varying(50) NOT NULL
);


ALTER TABLE public.asteroids OWNER TO freecodecamp;

--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroids_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroids_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroids_asteroid_id_seq OWNED BY public.asteroids.asteroids_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    has_life boolean,
    is_sphere boolean,
    name character varying(50) NOT NULL,
    distance_from_earth_in_light_years numeric(10,1),
    notes text,
    year_discoverd integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_add_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_add_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_add_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_add_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_add_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    has_life boolean,
    is_sphere boolean,
    name character varying(50) NOT NULL,
    distance_from_earth_in_light_years numeric(10,1),
    notes text,
    year_discoverd integer,
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
    has_life boolean,
    is_sphere boolean,
    name character varying(50) NOT NULL,
    distance_from_earth_in_light_years numeric(10,1),
    notes text,
    year_discoverd integer,
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
    has_life boolean,
    is_sphere boolean,
    name character varying(50) NOT NULL,
    distance_from_earth_in_light_years numeric(10,1),
    notes text,
    year_discoverd integer,
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
-- Name: asteroids asteroids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids ALTER COLUMN asteroids_id SET DEFAULT nextval('public.asteroids_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_add_seq'::regclass);


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
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroids VALUES (1, false, false, NULL, '1', '1');
INSERT INTO public.asteroids VALUES (2, false, false, NULL, '2', '2');
INSERT INTO public.asteroids VALUES (3, false, false, NULL, '3', '3');
INSERT INTO public.asteroids VALUES (4, false, false, NULL, '4', '4');
INSERT INTO public.asteroids VALUES (5, false, false, NULL, '5', '5');
INSERT INTO public.asteroids VALUES (6, false, false, NULL, '6', '6');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, false, false, 'milkyway', NULL, 'our galaxy', NULL);
INSERT INTO public.galaxy VALUES (2, false, false, '1', NULL, '1', NULL);
INSERT INTO public.galaxy VALUES (3, false, false, '2', NULL, '2', NULL);
INSERT INTO public.galaxy VALUES (4, false, false, '3', NULL, '3', NULL);
INSERT INTO public.galaxy VALUES (5, false, false, '4', NULL, '4', NULL);
INSERT INTO public.galaxy VALUES (6, false, false, '5', NULL, '5', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, false, true, 'Luna', NULL, 'Moon', NULL, 1);
INSERT INTO public.moon VALUES (3, false, false, '1', NULL, '1', NULL, 1);
INSERT INTO public.moon VALUES (4, false, false, '2', NULL, '2', NULL, 1);
INSERT INTO public.moon VALUES (5, false, false, '3', NULL, '3', NULL, 1);
INSERT INTO public.moon VALUES (6, false, false, '4', NULL, '4', NULL, 1);
INSERT INTO public.moon VALUES (7, false, false, '5', NULL, '5', NULL, 1);
INSERT INTO public.moon VALUES (8, false, false, '6', NULL, '6', NULL, 1);
INSERT INTO public.moon VALUES (9, false, false, '7', NULL, '7', NULL, 1);
INSERT INTO public.moon VALUES (10, false, false, '8', NULL, '8', NULL, 1);
INSERT INTO public.moon VALUES (11, false, false, '9', NULL, '9', NULL, 1);
INSERT INTO public.moon VALUES (12, false, false, '10', NULL, '10', NULL, 1);
INSERT INTO public.moon VALUES (13, false, false, '11', NULL, '11', NULL, 1);
INSERT INTO public.moon VALUES (14, false, false, '12', NULL, '12', NULL, 1);
INSERT INTO public.moon VALUES (15, false, false, '13', NULL, '13', NULL, 1);
INSERT INTO public.moon VALUES (16, false, false, '14', NULL, '14', NULL, 1);
INSERT INTO public.moon VALUES (17, false, false, '15', NULL, '15', NULL, 1);
INSERT INTO public.moon VALUES (18, false, false, '16', NULL, '16', NULL, 1);
INSERT INTO public.moon VALUES (19, false, false, '17', NULL, '17', NULL, 1);
INSERT INTO public.moon VALUES (20, false, false, '18', NULL, '18', NULL, 1);
INSERT INTO public.moon VALUES (21, false, false, '19', NULL, '19', NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, true, true, 'Earth', NULL, 'Earth', NULL, 1);
INSERT INTO public.planet VALUES (2, false, true, 'Mercury', NULL, 'mercury', NULL, 1);
INSERT INTO public.planet VALUES (3, false, true, 'Venus', NULL, 'venus', NULL, 1);
INSERT INTO public.planet VALUES (4, false, true, 'Mars', NULL, 'mars', NULL, 1);
INSERT INTO public.planet VALUES (5, false, true, 'Jupiter', NULL, 'jupiter', NULL, 1);
INSERT INTO public.planet VALUES (6, false, true, 'Saturn', NULL, 'saturn', NULL, 1);
INSERT INTO public.planet VALUES (7, false, true, 'Uranus', NULL, 'uranus', NULL, 1);
INSERT INTO public.planet VALUES (8, false, true, 'Neptune', NULL, 'uranus', NULL, 1);
INSERT INTO public.planet VALUES (9, false, true, 'Pluto', NULL, 'pluto', NULL, 1);
INSERT INTO public.planet VALUES (10, false, true, 'X', NULL, 'x', NULL, 1);
INSERT INTO public.planet VALUES (11, false, true, 'Y', NULL, 'y', NULL, 1);
INSERT INTO public.planet VALUES (12, false, true, 'Z', NULL, 'z', NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, false, false, 'sole', 0.0, 'our sun', 0, 1);
INSERT INTO public.star VALUES (3, false, false, '1', NULL, '1', NULL, 1);
INSERT INTO public.star VALUES (4, false, false, '2', NULL, '2', NULL, 1);
INSERT INTO public.star VALUES (5, false, false, '3', NULL, '3', NULL, 1);
INSERT INTO public.star VALUES (6, false, false, '4', NULL, '4', NULL, 1);
INSERT INTO public.star VALUES (7, false, false, '5', NULL, '5', NULL, 1);
INSERT INTO public.star VALUES (8, false, false, '6', NULL, '6', NULL, 1);


--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroids_asteroid_id_seq', 6, true);


--
-- Name: galaxy_galaxy_add_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_add_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: asteroids asteroids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_name_key UNIQUE (name);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroids_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--