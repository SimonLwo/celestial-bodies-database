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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    age_in_millions_of_years integer
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
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
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
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
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
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
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
-- Name: why; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.why (
    why_id integer NOT NULL,
    name character varying(50) NOT NULL,
    for_numeric numeric(5,2)
);


ALTER TABLE public.why OWNER TO freecodecamp;

--
-- Name: why_why_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.why_why_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.why_why_id_seq OWNER TO freecodecamp;

--
-- Name: why_why_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.why_why_id_seq OWNED BY public.why.why_id;


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
-- Name: why why_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.why ALTER COLUMN why_id SET DEFAULT nextval('public.why_why_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'where we live', true, 5000);
INSERT INTO public.galaxy VALUES (2, 'Milky Way2', 'where we live', true, 5000);
INSERT INTO public.galaxy VALUES (3, 'Milky Way3', 'where we live', true, 5000);
INSERT INTO public.galaxy VALUES (4, 'Milky Way4', 'where we live', true, 5000);
INSERT INTO public.galaxy VALUES (5, 'Milky Way5', 'where we live', true, 5000);
INSERT INTO public.galaxy VALUES (6, 'Milky Way6', 'where we live', true, 5000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Luna2', 'moon of Earth', true, 44, 1);
INSERT INTO public.moon VALUES (3, 'Luna3', 'moon of Earth', true, 44, 1);
INSERT INTO public.moon VALUES (4, 'Luna4', 'moon of Earth', true, 44, 1);
INSERT INTO public.moon VALUES (5, 'Luna5', 'moon of Earth', true, 44, 1);
INSERT INTO public.moon VALUES (6, 'Luna6', 'moon of Earth', true, 44, 1);
INSERT INTO public.moon VALUES (7, 'Luna7', 'moon of Earth', true, 44, 1);
INSERT INTO public.moon VALUES (8, 'Luna8', 'moon of Earth', true, 44, 1);
INSERT INTO public.moon VALUES (9, 'Luna9', 'moon of Earth', true, 44, 1);
INSERT INTO public.moon VALUES (10, 'Luna10', 'moon of Earth', true, 44, 1);
INSERT INTO public.moon VALUES (11, 'Luna11', 'moon of Earth', true, 44, 1);
INSERT INTO public.moon VALUES (12, 'Luna12', 'moon of Earth', true, 44, 1);
INSERT INTO public.moon VALUES (13, 'Luna13', 'moon of Earth', true, 44, 1);
INSERT INTO public.moon VALUES (14, 'Luna14', 'moon of Earth', true, 44, 1);
INSERT INTO public.moon VALUES (15, 'Luna15', 'moon of Earth', true, 44, 1);
INSERT INTO public.moon VALUES (16, 'Luna16', 'moon of Earth', true, 44, 1);
INSERT INTO public.moon VALUES (17, 'Luna17', 'moon of Earth', true, 44, 1);
INSERT INTO public.moon VALUES (18, 'Luna18', 'moon of Earth', true, 44, 1);
INSERT INTO public.moon VALUES (19, 'Luna19', 'moon of Earth', true, 44, 1);
INSERT INTO public.moon VALUES (20, 'Luna20', 'moon of Earth', true, 44, 1);
INSERT INTO public.moon VALUES (23, 'Luna23', 'moon of Earth', true, 44, 1);
INSERT INTO public.moon VALUES (24, 'Luna24', 'moon of Earth', true, 44, 1);
INSERT INTO public.moon VALUES (25, 'Luna25', 'moon of Earth', true, 44, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'where we live', true, 45, 1);
INSERT INTO public.planet VALUES (2, 'Earth2', 'where we live', true, 45, 1);
INSERT INTO public.planet VALUES (4, 'Earth4', 'where we live', true, 45, 1);
INSERT INTO public.planet VALUES (5, 'Earth5', 'where we live', true, 45, 1);
INSERT INTO public.planet VALUES (6, 'Earth6', 'where we live', true, 45, 1);
INSERT INTO public.planet VALUES (7, 'Earth7', 'where we live', true, 45, 1);
INSERT INTO public.planet VALUES (8, 'Earth8', 'where we live', true, 45, 1);
INSERT INTO public.planet VALUES (9, 'Earth9', 'where we live', true, 45, 1);
INSERT INTO public.planet VALUES (10, 'Earth10', 'where we live', true, 45, 1);
INSERT INTO public.planet VALUES (11, 'Earth11', 'where we live', true, 45, 1);
INSERT INTO public.planet VALUES (12, 'Earth12', 'where we live', true, 45, 1);
INSERT INTO public.planet VALUES (13, 'Earth13', 'where we live', true, 45, 1);
INSERT INTO public.planet VALUES (14, 'Earth14', 'where we live', true, 45, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Mars', 'Mars_Mars', false, 49, 1);
INSERT INTO public.star VALUES (2, 'Mars2', 'Mars_Mars', false, 49, 1);
INSERT INTO public.star VALUES (3, 'Mars3', 'Mars_Mars', false, 49, 1);
INSERT INTO public.star VALUES (4, 'Mars4', 'Mars_Mars', false, 49, 1);
INSERT INTO public.star VALUES (5, 'Mars5', 'Mars_Mars', false, 49, 1);
INSERT INTO public.star VALUES (6, 'Mars6', 'Mars_Mars', false, 49, 1);


--
-- Data for Name: why; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.why VALUES (1, 'why1', 1.11);
INSERT INTO public.why VALUES (2, 'why2', 2.22);
INSERT INTO public.why VALUES (3, 'why3', 3.33);


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
-- Name: why_why_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.why_why_id_seq', 1, false);


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
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: why unique_why_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.why
    ADD CONSTRAINT unique_why_id UNIQUE (why_id);


--
-- Name: why why_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.why
    ADD CONSTRAINT why_pkey PRIMARY KEY (why_id);


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

