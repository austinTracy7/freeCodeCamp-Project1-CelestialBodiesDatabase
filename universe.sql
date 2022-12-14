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
    name character varying,
    area_in_light_years_squared numeric,
    first_telescope_to_find_it character varying(64) NOT NULL,
    spaceship_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.galaxy ALTER COLUMN galaxy_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.galaxy_galaxyid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying,
    radius_in_m integer NOT NULL,
    weight_in_kilos numeric NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moonid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.moon ALTER COLUMN moon_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.moon_moonid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying,
    radius_in_m integer NOT NULL,
    weight_in_kilos numeric NOT NULL,
    is_inhabitable boolean,
    has_water boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planetid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.planet ALTER COLUMN planet_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.planet_planetid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: spaceship; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spaceship (
    spaceship_id integer NOT NULL,
    name character varying,
    shiplogs text,
    vinnumber character varying NOT NULL,
    light_years_travelled integer DEFAULT 0 NOT NULL,
    year_created integer
);


ALTER TABLE public.spaceship OWNER TO freecodecamp;

--
-- Name: spaceship_spaceshipid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.spaceship ALTER COLUMN spaceship_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.spaceship_spaceshipid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying,
    radius_in_m integer NOT NULL,
    weight_in_kilos numeric NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_starid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.star ALTER COLUMN star_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.star_starid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'uncreative_galaxy_name_1', 232352, 'mine', NULL);
INSERT INTO public.galaxy VALUES (2, 'uncreative_galaxy_name_2', 246652, 'yours', NULL);
INSERT INTO public.galaxy VALUES (4, 'uncreative_galaxy_name_3', 11355652, 'mine', NULL);
INSERT INTO public.galaxy VALUES (5, 'uncreative_galaxy_name_4', 2345, 'yours', NULL);
INSERT INTO public.galaxy VALUES (6, 'uncreative_galaxy_name_5', 212345, 'yours', NULL);
INSERT INTO public.galaxy VALUES (7, 'uncreative_galaxy_name_6', 7, 'mine', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.moon VALUES (1, 'uncreative_moon_name_1', 24246, 246.23, 1);
INSERT INTO public.moon VALUES (2, 'uncreative_moon_name_2', 24623, 455.23, 3);
INSERT INTO public.moon VALUES (3, 'uncreative_moon_name_3', 123, 462.23, 4);
INSERT INTO public.moon VALUES (4, 'uncreative_moon_name_4', 143, 213.27, 5);
INSERT INTO public.moon VALUES (5, 'uncreative_moon_name_5', 2135, 568.23, 6);
INSERT INTO public.moon VALUES (6, 'uncreative_moon_name_6', 13555, 789.23, 6);
INSERT INTO public.moon VALUES (7, 'uncreative_moon_name_7', 135566, 785.23, 6);
INSERT INTO public.moon VALUES (8, 'uncreative_moon_name_8', 12345, 356.23, 7);
INSERT INTO public.moon VALUES (9, 'uncreative_moon_name_9', 13556, 46.23, 8);
INSERT INTO public.moon VALUES (10, 'uncreative_moon_name_10', 14432, 456.23, 9);
INSERT INTO public.moon VALUES (11, 'uncreative_moon_name_11', 12355, 346.23, 9);
INSERT INTO public.moon VALUES (12, 'uncreative_moon_name_12', 13566, 755.23, 9);
INSERT INTO public.moon VALUES (13, 'uncreative_moon_name_13', 423, 755.23, 9);
INSERT INTO public.moon VALUES (14, 'uncreative_moon_name_14', 456, 755.23, 9);
INSERT INTO public.moon VALUES (15, 'uncreative_moon_name_15', 453, 755.23, 9);
INSERT INTO public.moon VALUES (16, 'uncreative_moon_name_16', 78789, 488.23, 9);
INSERT INTO public.moon VALUES (17, 'uncreative_moon_name_17', 4562, 489.23, 9);
INSERT INTO public.moon VALUES (18, 'uncreative_moon_name_18', 789, 755.23, 9);
INSERT INTO public.moon VALUES (19, 'uncreative_moon_name_19', 4563, 789.23, 9);
INSERT INTO public.moon VALUES (20, 'uncreative_moon_name_20', 4568, 755.23, 9);



--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.planet VALUES (1, 'uncreative_planet_name_1', 24246, 246.23, False, False, 1);
INSERT INTO public.planet VALUES (2, 'uncreative_planet_name_2', 24623, 455.23, False, False, 1);
INSERT INTO public.planet VALUES (3, 'uncreative_planet_name_3', 123, 462.23, False, False, 1);
INSERT INTO public.planet VALUES (4, 'uncreative_planet_name_4', 143, 213.27, False, False, 2);
INSERT INTO public.planet VALUES (5, 'uncreative_planet_name_5', 2135, 568.23, False, False, 2);
INSERT INTO public.planet VALUES (6, 'uncreative_planet_name_6', 13555, 789.23, False, False, 3);
INSERT INTO public.planet VALUES (7, 'uncreative_planet_name_7', 135566, 785.23, False, False, 4);
INSERT INTO public.planet VALUES (8, 'uncreative_planet_name_8', 12345, 356.23, False, False, 4);
INSERT INTO public.planet VALUES (9, 'uncreative_planet_name_9', 13556, 46.23, False, False, 5);
INSERT INTO public.planet VALUES (10, 'uncreative_planet_name_10', 14432, 456.23, False, False, 5);
INSERT INTO public.planet VALUES (11, 'uncreative_planet_name_11', 12355, 346.23, False, False, 5);
INSERT INTO public.planet VALUES (12, 'uncreative_planet_name_12', 13566, 755.23, False, False, 6);



--
-- Data for Name: spaceship; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.spaceship VALUES (1, 'uncreative_spaceship_name', '', 'swet135knh57t75', 0, 2050);
INSERT INTO public.spaceship VALUES (2, 'uncreative_spaceship_name_2', '', 'swet135knh57t75', 0, 2050);
INSERT INTO public.spaceship VALUES (3, 'uncreative_spaceship_name_3', '', 'swet135knh57t75', 0, 2050);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.star VALUES (1, 'uncreative_star_name_1', 456542, 25652.23, 1);
INSERT INTO public.star VALUES (2, 'uncreative_star_name_2', 235735, 21333.23, 1);
INSERT INTO public.star VALUES (3, 'uncreative_star_name_3', 357866, 23456.23, 1);
INSERT INTO public.star VALUES (4, 'uncreative_star_name_4', 1346588, 34663.23, 1);
INSERT INTO public.star VALUES (5, 'uncreative_star_name_5', 136476, 10234.23, 1);
INSERT INTO public.star VALUES (6, 'uncreative_star_name_6', 24446, 2324.23, 2);


--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxyid_seq', 7, true);


--
-- Name: moon_moonid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moonid_seq', 1, false);


--
-- Name: planet_planetid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planetid_seq', 1, false);


--
-- Name: spaceship_spaceshipid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.spaceship_spaceshipid_seq', 1, false);


--
-- Name: star_starid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_starid_seq', 1, false);


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
-- Name: spaceship spaceship_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_pkey PRIMARY KEY (spaceship_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: spaceship unique_vin; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT unique_vin UNIQUE (vinnumber);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy galaxy_spaceship_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_spaceship_id_fkey FOREIGN KEY (spaceship_id) REFERENCES public.spaceship(spaceship_id);


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

