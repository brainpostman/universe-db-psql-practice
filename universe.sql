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
    galaxy_type_id integer NOT NULL,
    age_in_billions_of_years numeric(8,2),
    diameter_in_ly integer,
    mass_in_bln_solar_masses integer,
    number_of_stars_in_billions integer,
    distance_from_earth_in_ly numeric(14,2),
    visible_to_naked_eye boolean NOT NULL
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
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: luminosity_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.luminosity_type (
    luminosity_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.luminosity_type OWNER TO freecodecamp;

--
-- Name: luminosity_types_luminosity_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.luminosity_types_luminosity_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.luminosity_types_luminosity_type_id_seq OWNER TO freecodecamp;

--
-- Name: luminosity_types_luminosity_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.luminosity_types_luminosity_type_id_seq OWNED BY public.luminosity_type.luminosity_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    is_spherical boolean,
    planet_id integer,
    age_in_billion_years numeric(8,2),
    radius_in_km integer,
    mass_in_billion_kg integer,
    distance_from_earth_in_ly numeric(14,2),
    visible_to_naked_eye boolean NOT NULL,
    signs_of_life boolean
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
    planet_type_id integer NOT NULL,
    star_id integer,
    age_in_billion_years numeric(8,2),
    radius_in_km integer,
    mass_in_earth_masses numeric(8,3),
    visible_to_naked_eye boolean NOT NULL,
    number_of_satellites integer,
    sings_of_life boolean
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
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_type_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    luminosity_type_id integer NOT NULL,
    galaxy_id integer,
    age_in_billions_of_years numeric(8,2),
    radius_in_solar_radii numeric(8,2),
    mass_in_solar_masses numeric(8,2),
    planetary_system boolean,
    distance_from_earth_in_ly numeric(14,2),
    visible_to_naked_eye boolean NOT NULL
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
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_types_galaxy_type_id_seq'::regclass);


--
-- Name: luminosity_type luminosity_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.luminosity_type ALTER COLUMN luminosity_type_id SET DEFAULT nextval('public.luminosity_types_luminosity_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_types_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way Galaxy', 'The galaxy that includes our Solar System, with the name describing the galaxy''s appearance from Earth', 3, 13.60, 105700, 1500, 250, 30000.00, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'Nearest large galaxy to Milky Way, named after the region of the sky it resides in', 3, 10.01, 220000, 1150, 1000, 2537000.00, true);
INSERT INTO public.galaxy VALUES (3, 'IC 1101', 'Supergiant elliptical galaxy at the center of the Abell 2029 galaxy cluster. It is one of the largest known galaxies.', 1, 12.30, 3913800, 2500000, 100000, 1045000000.00, false);
INSERT INTO public.galaxy VALUES (4, 'Cartwheel Galaxy', 'Lenticular galaxy and ring galaxy about 500 million light-years away in the constellation Sculptor.', 4, 0.20, 130000, 5, NULL, 500000000.00, false);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 'Face-on spiral galaxy 21 million light-years (6.4 megaparsecs) away from Earth in the constellation Ursa Major.', 2, NULL, 170000, 103, 1000, 20900000.00, false);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', '...or Nubecula Major is a satellite galaxy of the Milky Way. Fourth-largest in the Local Group.', 2, 1.10, 14000, 138, 30, 158200.00, true);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'Elliptical', 'They have smooth, featureless light distributions and appear as ellipses in images');
INSERT INTO public.galaxy_type VALUES (3, 'Barred spiral', 'Spiral galaxy with a central bar-shaped structure composed of stars');
INSERT INTO public.galaxy_type VALUES (4, 'Lenticular', 'They contain a large-scale disc but do not have large-scale spiral arms');
INSERT INTO public.galaxy_type VALUES (2, 'Spiral', 'They consist of a flattened disk, with stars forming aspiral structure, and a central concentration of stars known as the bulge');


--
-- Data for Name: luminosity_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.luminosity_type VALUES (1, 'O', 'O-type stars are very hot and extremely luminous, with most of their radiated output in the ultraviolet range.');
INSERT INTO public.luminosity_type VALUES (2, 'B', 'B-type stars are very luminous and blue.');
INSERT INTO public.luminosity_type VALUES (3, 'A', 'A-type stars are among the more common naked eye stars, and are white or bluish-white.');
INSERT INTO public.luminosity_type VALUES (4, 'F', 'F-type stars have strengthening spectral lines H and K of Ca II. Their color is white');
INSERT INTO public.luminosity_type VALUES (5, 'G', 'G-type stars, including the Sun,[11] have prominent spectral lines H and K of Ca II');
INSERT INTO public.luminosity_type VALUES (6, 'K', 'K-type stars are orangish stars that are slightly cooler than the Sun.');
INSERT INTO public.luminosity_type VALUES (7, 'M', 'Although most class M stars are red dwarfs, most of the largest-ever supergiant stars in the Milky Way are M stars');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', NULL, NULL, 3, NULL, NULL, NULL, NULL, true, NULL);
INSERT INTO public.moon VALUES (2, 'Deimos', NULL, NULL, 4, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (3, 'Phobos', NULL, NULL, 4, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (4, 'Metis', NULL, NULL, 5, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (5, 'Adrastea', NULL, NULL, 5, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (6, 'Amalthea', NULL, NULL, 5, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (7, 'Thebe', NULL, NULL, 5, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (8, 'Io', NULL, NULL, 5, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (9, 'Europa', NULL, NULL, 5, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (10, 'Ganymede', NULL, NULL, 5, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (11, 'Callisto', NULL, NULL, 5, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (12, 'Mimas', NULL, NULL, 6, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (13, 'Enceladus', NULL, NULL, 6, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (14, 'Tethys', NULL, NULL, 6, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (15, 'Dione', NULL, NULL, 6, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (16, 'Rhea', NULL, NULL, 6, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (17, 'Titan', NULL, NULL, 6, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (18, 'Iapetus', NULL, NULL, 6, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (19, 'Proteus', NULL, NULL, 7, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (20, 'Larissa', NULL, NULL, 7, NULL, NULL, NULL, NULL, false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The smallest planet in the Solar System and the closest to the Sun', 4, 1, 4.50, 2440, 0.055, true, 0, false);
INSERT INTO public.planet VALUES (2, 'Venus', 'Second planet from the Sun and is named after the Roman goddess of love and beauty', 4, 1, 4.51, 6051, 0.815, true, 0, false);
INSERT INTO public.planet VALUES (3, 'Earth', 'Third planet from the Sun and the only astronomical object known to harbor life', 4, 1, 4.54, 6371, 1.000, true, 1, true);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, 4, 1, NULL, NULL, NULL, true, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, 1, 1, NULL, NULL, NULL, true, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, 1, 1, NULL, NULL, NULL, true, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, 2, 1, NULL, NULL, NULL, false, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, 2, 1, NULL, NULL, NULL, false, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, 5, 1, NULL, NULL, NULL, false, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', NULL, 4, 4, NULL, NULL, NULL, false, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri d', NULL, 4, 4, NULL, NULL, NULL, false, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri c', NULL, 3, 4, NULL, NULL, NULL, false, NULL, NULL);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'Gas giant', 'Planets the size of Saturn or Jupiter, the largest planet in our solar system, or much, much larger.');
INSERT INTO public.planet_type VALUES (2, 'Neptune-like', 'Neptunian planets are similar in size to Neptune or Uranus in our solar system.');
INSERT INTO public.planet_type VALUES (3, 'Super-Earths', 'Typically terrestrial planets that may or may not have atmospheres. They are more massive than Earth, but lighter than Neptune.');
INSERT INTO public.planet_type VALUES (4, 'Terrestrial', 'Earth sized and smaller, composed of rock, silicate, water or carbon.');
INSERT INTO public.planet_type VALUES (5, 'Dwarf planet', 'Small planetary-mass object that is in direct orbit of the Sun – something smaller than any of the eight classical planets, but still a world in its own right');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of the Solar System, orbited by the Earth', 5, 1, 4.60, 1.00, 1.00, true, 0.00, true);
INSERT INTO public.star VALUES (2, 'North star', 'Star in the northern circumpolar constellation of Ursa Minor.', 4, 1, 0.07, 37.80, 5.40, NULL, 350.00, true);
INSERT INTO public.star VALUES (3, 'Sirius A', 'The brightest star in the night sky. Part of the binary star system.', 3, 1, 0.23, 1.71, 2.06, NULL, 9.00, true);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'Small, low-mass star located in the southern constellation of Centaurus', 7, 1, 4.85, 0.15, 0.12, true, 4.25, false);
INSERT INTO public.star VALUES (5, 'Begelgeuse', 'Usually the tenth-brightest star in the night sky and, after Rigel, the second-brightest in the constellation of Orion.', 7, 1, 0.01, 900.00, 18.00, NULL, 548.00, true);
INSERT INTO public.star VALUES (6, 'Vega', 'Brightest star in the northern constellation of Lyra.', 3, 1, 0.46, 2.36, 2.14, true, 25.04, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_type_id_seq', 4, true);


--
-- Name: luminosity_types_luminosity_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.luminosity_types_luminosity_type_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_type_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: galaxy_type galaxy_types_galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_types_galaxy_type_key UNIQUE (name);


--
-- Name: galaxy_type galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_type_id);


--
-- Name: luminosity_type luminosity_types_luminosity_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.luminosity_type
    ADD CONSTRAINT luminosity_types_luminosity_type_key UNIQUE (name);


--
-- Name: luminosity_type luminosity_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.luminosity_type
    ADD CONSTRAINT luminosity_types_pkey PRIMARY KEY (luminosity_type_id);


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
-- Name: planet_type planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_type_id);


--
-- Name: planet_type planet_types_planet_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_types_planet_type_key UNIQUE (name);


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
-- Name: galaxy galaxy_galaxy_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_id_fkey FOREIGN KEY (galaxy_type_id) REFERENCES public.galaxy_type(galaxy_type_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_id_fkey FOREIGN KEY (planet_type_id) REFERENCES public.planet_type(planet_type_id);


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
-- Name: star star_luminosity_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_luminosity_type_id_fkey FOREIGN KEY (luminosity_type_id) REFERENCES public.luminosity_type(luminosity_type_id);


--
-- PostgreSQL database dump complete
--

