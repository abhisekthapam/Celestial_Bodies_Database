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
    speed integer,
    description text,
    name character varying(200) NOT NULL,
    rotation_speed integer DEFAULT 100000 NOT NULL,
    one integer
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
    name character varying(200) NOT NULL,
    has_oxygen boolean NOT NULL,
    planet_id integer NOT NULL,
    code_name character varying(200),
    one integer
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
    name character varying(200) NOT NULL,
    people_count numeric,
    time_travel boolean DEFAULT false NOT NULL,
    star_id integer NOT NULL,
    one integer
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
    radius integer NOT NULL,
    color character varying(200) NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_id integer,
    one integer
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
-- Name: whitehole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.whitehole (
    whitehole_id integer NOT NULL,
    galaxy_id integer,
    warmhole boolean DEFAULT false NOT NULL,
    name character varying(200) NOT NULL,
    one integer
);


ALTER TABLE public.whitehole OWNER TO freecodecamp;

--
-- Name: whitehole_whitehole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.whitehole_whitehole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.whitehole_whitehole_id_seq OWNER TO freecodecamp;

--
-- Name: whitehole_whitehole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.whitehole_whitehole_id_seq OWNED BY public.whitehole.whitehole_id;


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
-- Name: whitehole whitehole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.whitehole ALTER COLUMN whitehole_id SET DEFAULT nextval('public.whitehole_whitehole_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, 'milky_way', 100000, NULL);
INSERT INTO public.galaxy VALUES (2, NULL, NULL, 'andromeda', 100000, NULL);
INSERT INTO public.galaxy VALUES (3, NULL, NULL, 'cugnus_A', 100000, NULL);
INSERT INTO public.galaxy VALUES (4, NULL, NULL, 'maggei_I_and_II', 100000, NULL);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 'virgo_A', 100000, NULL);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, 'magellanic_Clouds', 100000, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', false, 2, 'bingbangboom', NULL);
INSERT INTO public.moon VALUES (3, 'moon2', false, 2, 'bingbangboom1', NULL);
INSERT INTO public.moon VALUES (4, 'moon2', false, 2, 'bingbangboom2', NULL);
INSERT INTO public.moon VALUES (5, 'moon2', false, 2, 'bingbangboom3', NULL);
INSERT INTO public.moon VALUES (6, 'moon2', false, 2, 'bingbangboom4', NULL);
INSERT INTO public.moon VALUES (7, 'moon2', false, 2, 'bingbangboom5', NULL);
INSERT INTO public.moon VALUES (8, 'moon2', false, 2, 'bingbangboom6', NULL);
INSERT INTO public.moon VALUES (9, 'moon2', false, 2, 'bingbangboom7', NULL);
INSERT INTO public.moon VALUES (10, 'moon2', false, 2, 'bingbangboom8', NULL);
INSERT INTO public.moon VALUES (11, 'moon2', false, 2, 'bingbangboom9', NULL);
INSERT INTO public.moon VALUES (12, 'moon2', false, 2, 'bingbangboom10', NULL);
INSERT INTO public.moon VALUES (13, 'moon2', false, 2, 'bingbangboom11', NULL);
INSERT INTO public.moon VALUES (14, 'moon2', false, 2, 'bingbangboom12', NULL);
INSERT INTO public.moon VALUES (15, 'moon2', false, 2, 'bingbangboom13', NULL);
INSERT INTO public.moon VALUES (16, 'moon2', false, 2, 'bingbangboom14', NULL);
INSERT INTO public.moon VALUES (17, 'moon2', false, 2, 'bingbangboom15', NULL);
INSERT INTO public.moon VALUES (18, 'moon2', false, 2, 'bingbangboom16', NULL);
INSERT INTO public.moon VALUES (19, 'moon2', false, 2, 'bingbangboom17', NULL);
INSERT INTO public.moon VALUES (20, 'moon2', false, 2, 'bingbangboom18', NULL);
INSERT INTO public.moon VALUES (21, 'moon2', false, 2, 'bingbangboom19', NULL);
INSERT INTO public.moon VALUES (22, 'moon2', false, 2, 'bingbangboom20', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (2, 'venus', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (3, 'erth', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (4, 'mars', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (5, 'jupiter', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (6, 'saturn', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (7, 'uranus', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (8, 'neptune', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (9, 'pluto', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (10, 'one', NULL, false, 2, NULL);
INSERT INTO public.planet VALUES (11, 'two', NULL, false, 2, NULL);
INSERT INTO public.planet VALUES (12, 'three', NULL, false, 2, NULL);
INSERT INTO public.planet VALUES (13, 'four', NULL, false, 3, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 123456789, 'red', 'beatlejuice', 1, NULL);
INSERT INTO public.star VALUES (2, 123456789, 'white', 'abhi', 1, NULL);
INSERT INTO public.star VALUES (3, 123456789, 'white', 'abhisek', 1, NULL);
INSERT INTO public.star VALUES (4, 1234567889, 'black', 'don', 2, NULL);
INSERT INTO public.star VALUES (5, 1234567889, 'blue', 'doom', 2, NULL);
INSERT INTO public.star VALUES (6, 1234567889, 'skyblue', 'boom', 2, NULL);


--
-- Data for Name: whitehole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.whitehole VALUES (1, NULL, true, 'one', NULL);
INSERT INTO public.whitehole VALUES (2, NULL, true, 'two', NULL);
INSERT INTO public.whitehole VALUES (3, NULL, true, 'three', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: whitehole_whitehole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.whitehole_whitehole_id_seq', 1, false);


--
-- Name: galaxy galaxy_one_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_one_key UNIQUE (one);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_code_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_code_name_key UNIQUE (code_name);


--
-- Name: moon moon_one_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_one_key UNIQUE (one);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_one_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_one_key UNIQUE (one);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_one_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_one_key UNIQUE (one);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: whitehole whitehole_one_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.whitehole
    ADD CONSTRAINT whitehole_one_key UNIQUE (one);


--
-- Name: whitehole whitehole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.whitehole
    ADD CONSTRAINT whitehole_pkey PRIMARY KEY (whitehole_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

