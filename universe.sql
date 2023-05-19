--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    timeline_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    age_in_millions_of_years integer NOT NULL
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    age_in_millions_of_years integer NOT NULL
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    age_in_millions_of_years integer NOT NULL
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
-- Name: timeline; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.timeline (
    timeline_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_years integer NOT NULL
);


ALTER TABLE public.timeline OWNER TO freecodecamp;

--
-- Name: timeline_timeline_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.timeline_timeline_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.timeline_timeline_id_seq OWNER TO freecodecamp;

--
-- Name: timeline_timeline_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.timeline_timeline_id_seq OWNED BY public.timeline.timeline_id;


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
-- Name: timeline timeline_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.timeline ALTER COLUMN timeline_id SET DEFAULT nextval('public.timeline_timeline_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy 1', 'Galaxy 1 description', true, false, 1, 1);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', 'Galaxy 2 description', true, false, 1, 1);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', 'Galaxy 3 description', false, false, 2, 1);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', 'Galaxy 4 description', true, false, 2, 2);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 5', 'Galaxy 5 description', false, true, 2, 2);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 6', 'Galaxy 6 description', true, true, 3, 2);
INSERT INTO public.galaxy VALUES (7, 'Galaxy 7', 'Galaxy 7 description', true, false, 7, 3);
INSERT INTO public.galaxy VALUES (8, 'Galaxy 8', 'Galaxy 8 description', false, true, 1, 3);
INSERT INTO public.galaxy VALUES (9, 'Galaxy 9', 'Galaxy 9 description', true, false, 1, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', 'Moon 1 description', true, true, 1, 2, 1);
INSERT INTO public.moon VALUES (2, 'Moon 2', 'Moon 2 description', true, true, 1, 3, 1);
INSERT INTO public.moon VALUES (3, 'Moon 3', 'Moon3 description', true, false, 1, 10, 1);
INSERT INTO public.moon VALUES (4, 'Moon 4', 'Moon 4 description', true, true, 1, 2, 1);
INSERT INTO public.moon VALUES (5, 'Moon 5', 'Moon 5 description', true, true, 2, 3, 1);
INSERT INTO public.moon VALUES (6, 'Moon 6', 'Moon 6 description', true, false, 2, 10, 1);
INSERT INTO public.moon VALUES (7, 'Moon 7', 'Moon 7 description', false, false, 2, 3, 1);
INSERT INTO public.moon VALUES (8, 'Moon 8', 'Moon 8 description', true, false, 2, 6, 1);
INSERT INTO public.moon VALUES (9, 'Moon 9', 'Moon 9 description', true, true, 1, 2, 1);
INSERT INTO public.moon VALUES (10, 'Moon 10', 'Moon 10 description', true, true, 2, 3, 1);
INSERT INTO public.moon VALUES (11, 'Moon 11', 'Moon 11 description', true, false, 2, 10, 1);
INSERT INTO public.moon VALUES (12, 'Moon 12', 'Moon 12 description', false, false, 2, 3, 1);
INSERT INTO public.moon VALUES (13, 'Moon 13', 'Moon 13 description', true, false, 2, 6, 1);
INSERT INTO public.moon VALUES (14, 'Moon 14', 'Moon 14 description', true, true, 1, 2, 1);
INSERT INTO public.moon VALUES (15, 'Moon 15', 'Moon 15 description', true, true, 2, 3, 1);
INSERT INTO public.moon VALUES (16, 'Moon 16', 'Moon 16 description', true, false, 2, 10, 1);
INSERT INTO public.moon VALUES (17, 'Moon 17', 'Moon 17 description', false, false, 2, 3, 1);
INSERT INTO public.moon VALUES (18, 'Moon 18', 'Moon 18 description', true, false, 2, 6, 1);
INSERT INTO public.moon VALUES (19, 'Moon 19', 'Moon 19 description', true, true, 1, 2, 1);
INSERT INTO public.moon VALUES (20, 'Moon 20', 'Moon 20 description', true, true, 2, 3, 1);
INSERT INTO public.moon VALUES (21, 'Moon 21', 'Moon 21 description', true, false, 2, 10, 1);
INSERT INTO public.moon VALUES (22, 'Moon 22', 'Moon 22 description', false, false, 2, 3, 1);
INSERT INTO public.moon VALUES (23, 'Moon 23', 'Moon 24 description', true, false, 2, 6, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet 1', 'Planet 1 description', true, true, 1, 2, 1);
INSERT INTO public.planet VALUES (2, 'Planet 2', 'Planet 2 description', true, true, 1, 3, 1);
INSERT INTO public.planet VALUES (3, 'Planet3', 'Planet 3description', true, false, 1, 10, 1);
INSERT INTO public.planet VALUES (4, 'Planet 4', 'Planet 4 description', true, true, 1, 2, 1);
INSERT INTO public.planet VALUES (5, 'Planet 5', 'Planet 5 description', true, true, 2, 3, 1);
INSERT INTO public.planet VALUES (6, 'Planet 6', 'Planet 6 description', true, false, 2, 10, 1);
INSERT INTO public.planet VALUES (7, 'Planet 7', 'Planet 7 description', false, false, 2, 3, 1);
INSERT INTO public.planet VALUES (8, 'Planet 8', 'Planet 8 description', true, false, 2, 6, 1);
INSERT INTO public.planet VALUES (9, 'Planet 9', 'Planet 9 description', true, true, 3, 3, 1);
INSERT INTO public.planet VALUES (10, 'Planet 10', 'Planet 10 description', true, false, 3, 10, 1);
INSERT INTO public.planet VALUES (11, 'Planet 11', 'Planet 11 description', false, false, 3, 3, 1);
INSERT INTO public.planet VALUES (12, 'Planet 12', 'Planet 12 description', true, false, 3, 6, 1);
INSERT INTO public.planet VALUES (13, 'Planet 13', 'Planet 13 description', true, true, 4, 3, 1);
INSERT INTO public.planet VALUES (14, 'Planet 14', 'Planet 14 description', true, false, 4, 10, 1);
INSERT INTO public.planet VALUES (15, 'Planet 15', 'Planet 15 description', false, false, 4, 3, 1);
INSERT INTO public.planet VALUES (16, 'Planet 16', 'Planet 16 description', true, false, 4, 6, 1);
INSERT INTO public.planet VALUES (17, 'Planet 17', 'Planet 17 description', true, true, 5, 3, 1);
INSERT INTO public.planet VALUES (18, 'Planet 18', 'Planet 18 description', true, false, 5, 10, 1);
INSERT INTO public.planet VALUES (19, 'Planet 19', 'Planet 19 description', false, false, 5, 3, 1);
INSERT INTO public.planet VALUES (20, 'Planet 20', 'Planet 16 description', true, false, 5, 6, 1);
INSERT INTO public.planet VALUES (21, 'Planet 21', 'Planet 21 description', true, true, 6, 3, 1);
INSERT INTO public.planet VALUES (22, 'Planet 22', 'Planet 22 description', true, false, 6, 10, 1);
INSERT INTO public.planet VALUES (23, 'Planet 23', 'Planet 23 description', false, false, 6, 3, 1);
INSERT INTO public.planet VALUES (24, 'Planet 24', 'Planet 24 description', true, false, 6, 6, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star 1', 'Star 1 description', true, true, 2, 3, 7);
INSERT INTO public.star VALUES (2, 'Star 2', 'Star 2 description', true, true, 1, 3, 1);
INSERT INTO public.star VALUES (3, 'Star 3', 'Star 3 description', true, false, 3, 3, 1);
INSERT INTO public.star VALUES (4, 'Star 4', 'Star 4 description', true, true, 4, 2, 1);
INSERT INTO public.star VALUES (5, 'Star 5', 'Star 5 description', true, true, 5, 3, 1);
INSERT INTO public.star VALUES (6, 'Star 6', 'Star 6 description', true, false, 6, 10, 1);


--
-- Data for Name: timeline; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.timeline VALUES (1, 'Main Timeline', 1);
INSERT INTO public.timeline VALUES (2, 'Timeline X1Z', 5);
INSERT INTO public.timeline VALUES (3, 'Timeline Y2K', 10);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: timeline_timeline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.timeline_timeline_id_seq', 1, false);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: timeline timeline_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.timeline
    ADD CONSTRAINT timeline_name_key UNIQUE (name);


--
-- Name: timeline timeline_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.timeline
    ADD CONSTRAINT timeline_pkey PRIMARY KEY (timeline_id);


--
-- Name: timeline timeline_timeline_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.timeline
    ADD CONSTRAINT timeline_timeline_id_key UNIQUE (timeline_id);


--
-- Name: galaxy galaxy_timeline_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_timeline_id_fkey FOREIGN KEY (timeline_id) REFERENCES public.timeline(timeline_id);


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

