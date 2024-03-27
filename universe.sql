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
    age_in_millions_of_years integer,
    distabce_from_earth integer,
    size numeric(14,2),
    description text,
    is_gastype boolean,
    name character varying(30) NOT NULL
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
    planet_id integer,
    age_in_millions_of_years integer,
    distabce_from_earth integer,
    size numeric(14,2),
    description text,
    is_gastype boolean
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
-- Name: nogood; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nogood (
    nogood_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    size integer,
    size2 integer,
    num numeric(4,2)
);


ALTER TABLE public.nogood OWNER TO freecodecamp;

--
-- Name: nogood_nogood_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nogood_nogood_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nogood_nogood_id_seq OWNER TO freecodecamp;

--
-- Name: nogood_nogood_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nogood_nogood_id_seq OWNED BY public.nogood.nogood_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    age_in_millions_of_years integer,
    distabce_from_earth integer,
    size numeric(14,2),
    description text,
    is_gastype boolean
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
    galaxy_id integer,
    age_in_millions_of_years integer,
    distabce_from_earth integer,
    size numeric(14,2),
    description text,
    is_gastype boolean
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: nogood nogood_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nogood ALTER COLUMN nogood_id SET DEFAULT nextval('public.nogood_nogood_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 100, 100, 100.00, 'G1 Desc', true, 'G1');
INSERT INTO public.galaxy VALUES (2, 100, 100, 100.00, 'G2 Desc', true, 'G2');
INSERT INTO public.galaxy VALUES (3, 100, 100, 100.00, 'G3 Desc', true, 'G3');
INSERT INTO public.galaxy VALUES (4, 100, 100, 100.00, 'G4 Desc', true, 'G4');
INSERT INTO public.galaxy VALUES (5, 100, 100, 100.00, 'G5 Desc', true, 'G5');
INSERT INTO public.galaxy VALUES (6, 100, 100, 100.00, 'G6 Desc', true, 'G6');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'M01', 1, 3001, 3001, 3001.00, 'M01 Desc', true);
INSERT INTO public.moon VALUES (2, 'M02', 1, 3001, 3001, 3001.00, 'M02 Desc', true);
INSERT INTO public.moon VALUES (3, 'M03', 2, 3001, 3001, 3001.00, 'M03 Desc', true);
INSERT INTO public.moon VALUES (4, 'M04', 2, 3001, 3001, 3001.00, 'M04 Desc', true);
INSERT INTO public.moon VALUES (5, 'M05', 3, 3001, 3001, 3001.00, 'M05 Desc', true);
INSERT INTO public.moon VALUES (6, 'M06', 3, 3001, 3001, 3001.00, 'M06 Desc', true);
INSERT INTO public.moon VALUES (7, 'M07', 4, 3001, 3001, 3001.00, 'M07 Desc', true);
INSERT INTO public.moon VALUES (8, 'M08', 4, 3001, 3001, 3001.00, 'M08 Desc', true);
INSERT INTO public.moon VALUES (9, 'M09', 5, 3001, 3001, 3001.00, 'M09 Desc', true);
INSERT INTO public.moon VALUES (10, 'M10', 5, 3001, 3001, 3001.00, 'M10 Desc', true);
INSERT INTO public.moon VALUES (11, 'M11', 6, 3001, 3001, 3001.00, 'M11 Desc', true);
INSERT INTO public.moon VALUES (12, 'M12', 6, 3001, 3001, 3001.00, 'M12 Desc', true);
INSERT INTO public.moon VALUES (13, 'M13', 7, 3001, 3001, 3001.00, 'M13 Desc', true);
INSERT INTO public.moon VALUES (14, 'M14', 7, 3001, 3001, 3001.00, 'M14 Desc', true);
INSERT INTO public.moon VALUES (15, 'M15', 8, 3001, 3001, 3001.00, 'M15 Desc', true);
INSERT INTO public.moon VALUES (16, 'M16', 8, 3001, 3001, 3001.00, 'M16 Desc', true);
INSERT INTO public.moon VALUES (17, 'M17', 8, 3001, 3001, 3001.00, 'M17 Desc', true);
INSERT INTO public.moon VALUES (18, 'M18', 8, 3001, 3001, 3001.00, 'M18 Desc', true);
INSERT INTO public.moon VALUES (19, 'M19', 8, 3001, 3001, 3001.00, 'M17 Desc', true);
INSERT INTO public.moon VALUES (20, 'M20', 8, 3001, 3001, 3001.00, 'M18 Desc', true);


--
-- Data for Name: nogood; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nogood VALUES (1, '1', '1', 1, 1, 1.00);
INSERT INTO public.nogood VALUES (2, '12', '12', 1, 1, 1.00);
INSERT INTO public.nogood VALUES (3, '123', '123', 1, 1, 1.00);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'P1', 1, 2001, 2001, 2001.00, 'P1 desc', true);
INSERT INTO public.planet VALUES (2, 'P2', 1, 2001, 2001, 2001.00, 'P2 desc', true);
INSERT INTO public.planet VALUES (3, 'P3', 2, 2001, 2001, 2001.00, 'P3 desc', true);
INSERT INTO public.planet VALUES (4, 'P4', 2, 2001, 2001, 2001.00, 'P4 desc', true);
INSERT INTO public.planet VALUES (5, 'P5', 3, 2001, 2001, 2001.00, 'P5 desc', true);
INSERT INTO public.planet VALUES (6, 'P6', 3, 2001, 2001, 2001.00, 'P6 desc', true);
INSERT INTO public.planet VALUES (7, 'P7', 4, 2001, 2001, 2001.00, 'P7 desc', true);
INSERT INTO public.planet VALUES (8, 'P8', 4, 2001, 2001, 2001.00, 'P8 desc', true);
INSERT INTO public.planet VALUES (9, 'P9', 5, 2001, 2001, 2001.00, 'P9 desc', true);
INSERT INTO public.planet VALUES (10, 'P10', 5, 2001, 2001, 2001.00, 'P10 desc', true);
INSERT INTO public.planet VALUES (11, 'P11', 6, 2001, 2001, 2001.00, 'P11 desc', true);
INSERT INTO public.planet VALUES (12, 'P12', 6, 2001, 2001, 2001.00, 'P12 desc', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'S1', 1, 1001, 1001, 1001.00, 'S1 Desc', true);
INSERT INTO public.star VALUES (2, 'S2', 2, 1001, 1001, 1001.00, 'S2 Desc', true);
INSERT INTO public.star VALUES (3, 'S3', 3, 1001, 1001, 1001.00, 'S3 Desc', true);
INSERT INTO public.star VALUES (4, 'S4', 4, 1001, 1001, 1001.00, 'S4 Desc', true);
INSERT INTO public.star VALUES (5, 'S5', 5, 1001, 1001, 1001.00, 'S5 Desc', true);
INSERT INTO public.star VALUES (6, 'S6', 6, 1001, 1001, 1001.00, 'S6 Desc', true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: nogood_nogood_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nogood_nogood_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy guname; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT guname UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon muname; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT muname UNIQUE (name);


--
-- Name: nogood nogood_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nogood
    ADD CONSTRAINT nogood_name_key UNIQUE (name);


--
-- Name: nogood nogood_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nogood
    ADD CONSTRAINT nogood_pkey PRIMARY KEY (nogood_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet puname; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT puname UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star suname; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT suname UNIQUE (name);


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

