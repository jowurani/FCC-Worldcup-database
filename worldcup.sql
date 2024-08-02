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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (65, 498, 499, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (66, 500, 501, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (67, 499, 501, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (68, 498, 500, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (69, 499, 502, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (70, 501, 503, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (71, 500, 504, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (72, 498, 505, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (73, 501, 506, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (74, 503, 507, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (75, 500, 508, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (76, 504, 509, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (77, 499, 510, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (78, 502, 511, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (79, 505, 512, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (80, 498, 513, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (81, 514, 513, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (82, 515, 504, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (83, 513, 515, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (84, 514, 504, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (85, 515, 516, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (86, 513, 500, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (87, 504, 506, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (88, 514, 498, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (89, 504, 517, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (90, 506, 505, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (91, 498, 518, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (92, 514, 519, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (93, 515, 509, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (94, 516, 520, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (95, 513, 507, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (96, 500, 521, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (498, 'France');
INSERT INTO public.teams VALUES (499, 'Croatia');
INSERT INTO public.teams VALUES (500, 'Belgium');
INSERT INTO public.teams VALUES (501, 'England');
INSERT INTO public.teams VALUES (502, 'Russia');
INSERT INTO public.teams VALUES (503, 'Sweden');
INSERT INTO public.teams VALUES (504, 'Brazil');
INSERT INTO public.teams VALUES (505, 'Uruguay');
INSERT INTO public.teams VALUES (506, 'Colombia');
INSERT INTO public.teams VALUES (507, 'Switzerland');
INSERT INTO public.teams VALUES (508, 'Japan');
INSERT INTO public.teams VALUES (509, 'Mexico');
INSERT INTO public.teams VALUES (510, 'Denmark');
INSERT INTO public.teams VALUES (511, 'Spain');
INSERT INTO public.teams VALUES (512, 'Portugal');
INSERT INTO public.teams VALUES (513, 'Argentina');
INSERT INTO public.teams VALUES (514, 'Germany');
INSERT INTO public.teams VALUES (515, 'Netherlands');
INSERT INTO public.teams VALUES (516, 'Costa Rica');
INSERT INTO public.teams VALUES (517, 'Chile');
INSERT INTO public.teams VALUES (518, 'Nigeria');
INSERT INTO public.teams VALUES (519, 'Algeria');
INSERT INTO public.teams VALUES (520, 'Greece');
INSERT INTO public.teams VALUES (521, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 521, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

