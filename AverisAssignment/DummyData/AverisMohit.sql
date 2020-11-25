--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

-- Started on 2020-11-24 22:17:11

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

--
-- TOC entry 3003 (class 1262 OID 16394)
-- Name: AverisMohit; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "AverisMohit" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United Kingdom.1252';


ALTER DATABASE "AverisMohit" OWNER TO postgres;

\connect "AverisMohit"

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

--
-- TOC entry 3004 (class 0 OID 0)
-- Dependencies: 3003
-- Name: DATABASE "AverisMohit"; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE "AverisMohit" IS 'Database for Dashboard Application';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 201 (class 1259 OID 16405)
-- Name: Candidates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Candidates" (
    id integer NOT NULL,
    "Name" character varying(50),
    email character varying(150),
    phone character varying(20),
    client character varying(50),
    gender "char",
    region "char"
);


ALTER TABLE public."Candidates" OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16395)
-- Name: GraphData; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."GraphData" (
    id integer NOT NULL,
    junior bigint,
    mid bigint,
    senior bigint,
    sick integer,
    emergency integer,
    casual integer,
    unknown integer,
    "InterviewsTaken" integer,
    "SelectedCandidates" integer,
    "Joiners" integer,
    "Leavers" integer,
    "HeadCount" integer,
    "Year" integer,
    "Gender" "char",
    "Region" "char"
);


ALTER TABLE public."GraphData" OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16410)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(150),
    first_name character varying(150),
    last_name character varying(150),
    password character varying(100),
    created_on date
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 2996 (class 0 OID 16405)
-- Dependencies: 201
-- Data for Name: Candidates; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (1, 'Liam', 'liam26@gmail.com', '60195255686', 'Averis', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (2, 'Noah', 'noah42@gmail.com', '60174417912', 'Microsoft', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (3, 'Oliver', 'oliver65@gmail.com', '60189158914', 'Averis', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (4, 'William', 'william19@gmail.com', '60123789232', 'IRIS', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (5, 'Elijah', 'elijah69@gmail.com', '60155035844', 'Samsung', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (6, 'James', 'james50@gmail.com', '60155270722', 'Custommedia', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (7, 'Benjamin', 'benjamin21@gmail.com', '60181858886', 'Custommedia', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (8, 'Lucas', 'lucas94@gmail.com', '60136314486', 'Custommedia', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (9, 'Mason', 'mason2@gmail.com', '60140571534', 'Samsung', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (10, 'Ethan', 'ethan32@gmail.com', '60131313066', 'Birla', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (11, 'Alexander', 'alexander72@gmail.com', '60124512146', 'Reliance', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (12, 'Henry', 'henry7@gmail.com', '60123023632', 'Google', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (13, 'Jacob', 'jacob78@gmail.com', '60147899390', 'Reliance', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (14, 'Michael', 'michael92@gmail.com', '60130321402', 'Custommedia', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (15, 'Daniel', 'daniel89@gmail.com', '60149019872', 'Birla', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (16, 'Logan', 'logan88@gmail.com', '60193134784', 'Birla', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (17, 'Jackson', 'jackson94@gmail.com', '60194393496', 'IRIS', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (18, 'Sebastian', 'sebastian38@gmail.com', '60174766429', 'Averis', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (19, 'Jack', 'jack10@gmail.com', '60122758951', 'IRIS', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (20, 'Aiden', 'aiden1@gmail.com', '60155959656', 'Reliance', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (21, 'Owen', 'owen62@gmail.com', '60179239176', 'Tata', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (22, 'Samuel', 'samuel68@gmail.com', '60122543147', 'Samsung', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (23, 'Matthew', 'matthew9@gmail.com', '60193502303', 'Averis', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (24, 'Joseph', 'joseph23@gmail.com', '60188879050', 'Reliance', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (25, 'Levi', 'levi51@gmail.com', '60180975505', 'Samsung', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (26, 'Mateo', 'mateo79@gmail.com', '60145763001', 'Birla', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (27, 'David', 'david22@gmail.com', '60128745049', 'Custommedia', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (28, 'John', 'john24@gmail.com', '60191304032', 'Tata', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (29, 'Wyatt', 'wyatt76@gmail.com', '60148418010', 'Microsoft', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (30, 'Carter', 'carter16@gmail.com', '60179385206', 'Birla', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (31, 'Julian', 'julian21@gmail.com', '60128575732', 'IRIS', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (32, 'Luke', 'luke10@gmail.com', '60124515731', 'Microsoft', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (33, 'Grayson', 'grayson60@gmail.com', '60153037660', 'Tata', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (34, 'Isaac', 'isaac84@gmail.com', '60131922540', 'Google', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (35, 'Jayden', 'jayden56@gmail.com', '60196790846', 'Samsung', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (36, 'Theodore', 'theodore60@gmail.com', '60113816166', 'IRIS', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (37, 'Gabriel', 'gabriel85@gmail.com', '60161942340', 'Averis', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (38, 'Anthony', 'anthony13@gmail.com', '60132437675', 'Microsoft', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (39, 'Dylan', 'dylan90@gmail.com', '60154617801', 'Samsung', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (40, 'Leo', 'leo60@gmail.com', '60121000173', 'Microsoft', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (41, 'Lincoln', 'lincoln29@gmail.com', '60121445208', 'Birla', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (42, 'Jaxon', 'jaxon90@gmail.com', '60145324494', 'Reliance', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (43, 'Asher', 'asher40@gmail.com', '60194839155', 'Birla', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (44, 'Christopher', 'christopher47@gmail.com', '60139925708', 'Custommedia', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (45, 'Josiah', 'josiah29@gmail.com', '60144640957', 'Custommedia', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (46, 'Andrew', 'andrew92@gmail.com', '60160888158', 'IRIS', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (47, 'Thomas', 'thomas18@gmail.com', '60179553236', 'Microsoft', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (48, 'Joshua', 'joshua34@gmail.com', '60186221827', 'Reliance', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (49, 'Ezra', 'ezra72@gmail.com', '60194189296', 'Custommedia', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (50, 'Hudson', 'hudson67@gmail.com', '60136294996', 'Custommedia', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (51, 'Charles', 'charles48@gmail.com', '60172286031', 'Tata', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (52, 'Caleb', 'caleb57@gmail.com', '60166689793', 'Samsung', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (53, 'Isaiah', 'isaiah60@gmail.com', '60115508389', 'Birla', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (54, 'Ryan', 'ryan37@gmail.com', '60132317754', 'Reliance', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (55, 'Nathan', 'nathan31@gmail.com', '60111974545', 'Google', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (56, 'Adrian', 'adrian49@gmail.com', '60193233201', 'Microsoft', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (57, 'Christian', 'christian87@gmail.com', '60140592901', 'Google', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (58, 'Maverick', 'maverick29@gmail.com', '60153946389', 'Tata', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (59, 'Colton', 'colton48@gmail.com', '60147293831', 'Averis', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (60, 'Elias', 'elias74@gmail.com', '60159659083', 'Custommedia', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (61, 'Aaron', 'aaron64@gmail.com', '60151533594', 'Samsung', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (62, 'Eli', 'eli70@gmail.com', '60154971871', 'Tata', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (63, 'Landon', 'landon63@gmail.com', '60111837476', 'Reliance', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (64, 'Jonathan', 'jonathan12@gmail.com', '60115184146', 'Averis', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (65, 'Nolan', 'nolan61@gmail.com', '60125224852', 'Samsung', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (66, 'Hunter', 'hunter18@gmail.com', '60194240129', 'Tata', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (67, 'Cameron', 'cameron85@gmail.com', '60154677564', 'Samsung', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (68, 'Connor', 'connor14@gmail.com', '60115595593', 'Microsoft', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (69, 'Santiago', 'santiago47@gmail.com', '60161890761', 'Microsoft', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (70, 'Jeremiah', 'jeremiah28@gmail.com', '60119493009', 'Google', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (71, 'Ezekiel', 'ezekiel72@gmail.com', '60150549510', 'IRIS', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (72, 'Angel', 'angel17@gmail.com', '60185527980', 'Averis', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (73, 'Roman', 'roman94@gmail.com', '60159941328', 'Reliance', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (74, 'Easton', 'easton3@gmail.com', '60172230610', 'Reliance', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (75, 'Miles', 'miles63@gmail.com', '60157768486', 'IRIS', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (76, 'Robert', 'robert66@gmail.com', '60174761074', 'Samsung', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (77, 'Jameson', 'jameson66@gmail.com', '60196746793', 'Reliance', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (78, 'Nicholas', 'nicholas94@gmail.com', '60165674528', 'Tata', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (79, 'Greyson', 'greyson96@gmail.com', '60181788819', 'Tata', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (80, 'Cooper', 'cooper58@gmail.com', '60154260038', 'Samsung', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (81, 'Ian', 'ian7@gmail.com', '60163203677', 'Tata', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (82, 'Carson', 'carson40@gmail.com', '60142081025', 'Microsoft', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (83, 'Axel', 'axel64@gmail.com', '60189430603', 'Reliance', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (84, 'Jaxson', 'jaxson10@gmail.com', '60173936115', 'Birla', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (85, 'Dominic', 'dominic80@gmail.com', '60145483455', 'Tata', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (86, 'Leonardo', 'leonardo87@gmail.com', '60199470689', 'Tata', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (87, 'Luca', 'luca25@gmail.com', '60189267899', 'Reliance', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (88, 'Austin', 'austin53@gmail.com', '60166688990', 'Microsoft', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (89, 'Jordan', 'jordan8@gmail.com', '60111231437', 'Google', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (90, 'Adam', 'adam35@gmail.com', '60150892546', 'Birla', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (91, 'Xavier', 'xavier87@gmail.com', '60112069656', 'Tata', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (92, 'Jose', 'jose9@gmail.com', '60140700907', 'IRIS', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (93, 'Jace', 'jace62@gmail.com', '60176802150', 'Microsoft', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (94, 'Everett', 'everett65@gmail.com', '60147951842', 'Google', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (95, 'Declan', 'declan73@gmail.com', '60175919731', 'Tata', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (96, 'Evan', 'evan7@gmail.com', '60155609049', 'Tata', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (97, 'Kayden', 'kayden68@gmail.com', '60129712731', 'Microsoft', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (98, 'Parker', 'parker27@gmail.com', '60114535320', 'Averis', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (99, 'Wesley', 'wesley83@gmail.com', '60168761874', 'Tata', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (100, 'Kai', 'kai93@gmail.com', '60128536482', 'IRIS', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (101, 'Brayden', 'brayden96@gmail.com', '60158123788', 'IRIS', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (102, 'Bryson', 'bryson3@gmail.com', '60199489931', 'Birla', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (103, 'Weston', 'weston10@gmail.com', '60148062014', 'Averis', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (104, 'Jason', 'jason86@gmail.com', '60127668262', 'Custommedia', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (105, 'Emmett', 'emmett93@gmail.com', '60197574180', 'Reliance', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (106, 'Sawyer', 'sawyer50@gmail.com', '60153361441', 'IRIS', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (107, 'Silas', 'silas61@gmail.com', '60161713077', 'Microsoft', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (108, 'Bennett', 'bennett4@gmail.com', '60113583623', 'Averis', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (109, 'Brooks', 'brooks87@gmail.com', '60165969811', 'Google', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (110, 'Micah', 'micah24@gmail.com', '60134949498', 'Tata', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (111, 'Damian', 'damian42@gmail.com', '60123330026', 'IRIS', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (112, 'Harrison', 'harrison41@gmail.com', '60120900777', 'Tata', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (113, 'Waylon', 'waylon51@gmail.com', '60173802126', 'IRIS', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (114, 'Ayden', 'ayden68@gmail.com', '60157529364', 'Google', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (115, 'Vincent', 'vincent65@gmail.com', '60166148142', 'Reliance', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (116, 'Ryder', 'ryder84@gmail.com', '60127661995', 'Samsung', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (117, 'Kingston', 'kingston47@gmail.com', '60188790126', 'Tata', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (118, 'Rowan', 'rowan60@gmail.com', '60159640724', 'Reliance', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (119, 'George', 'george38@gmail.com', '60126504663', 'Tata', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (120, 'Luis', 'luis68@gmail.com', '60157671149', 'Google', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (121, 'Chase', 'chase75@gmail.com', '60150378207', 'Microsoft', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (122, 'Cole', 'cole76@gmail.com', '60167736710', 'Averis', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (123, 'Nathaniel', 'nathaniel4@gmail.com', '60142874460', 'Samsung', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (124, 'Zachary', 'zachary94@gmail.com', '60151572820', 'Averis', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (125, 'Ashton', 'ashton59@gmail.com', '60181206145', 'IRIS', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (126, 'Braxton', 'braxton98@gmail.com', '60162983117', 'IRIS', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (127, 'Gavin', 'gavin54@gmail.com', '60199714959', 'Microsoft', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (128, 'Tyler', 'tyler87@gmail.com', '60198154714', 'Tata', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (129, 'Diego', 'diego12@gmail.com', '60160612147', 'Reliance', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (130, 'Bentley', 'bentley85@gmail.com', '60130619162', 'Custommedia', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (131, 'Amir', 'amir74@gmail.com', '60160031151', 'Averis', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (132, 'Beau', 'beau12@gmail.com', '60115090287', 'Birla', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (133, 'Gael', 'gael72@gmail.com', '60193788365', 'IRIS', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (134, 'Carlos', 'carlos79@gmail.com', '60163774397', 'Microsoft', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (135, 'Ryker', 'ryker89@gmail.com', '60168835676', 'Microsoft', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (136, 'Jasper', 'jasper40@gmail.com', '60153848297', 'Averis', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (137, 'Max', 'max77@gmail.com', '60119479860', 'Microsoft', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (138, 'Juan', 'juan50@gmail.com', '60138838345', 'Birla', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (139, 'Ivan', 'ivan61@gmail.com', '60190698829', 'Google', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (140, 'Brandon', 'brandon37@gmail.com', '60178132614', 'Tata', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (141, 'Jonah', 'jonah45@gmail.com', '60184314245', 'Birla', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (142, 'Giovanni', 'giovanni14@gmail.com', '60169677860', 'IRIS', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (143, 'Kaiden', 'kaiden57@gmail.com', '60175178727', 'Samsung', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (144, 'Myles', 'myles93@gmail.com', '60194076055', 'Custommedia', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (145, 'Calvin', 'calvin52@gmail.com', '60194096239', 'Averis', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (146, 'Lorenzo', 'lorenzo49@gmail.com', '60199508995', 'IRIS', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (147, 'Maxwell', 'maxwell44@gmail.com', '60123723814', 'Tata', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (148, 'Jayce', 'jayce11@gmail.com', '60138251075', 'Averis', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (149, 'Kevin', 'kevin43@gmail.com', '60174437111', 'Reliance', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (150, 'Legend', 'legend76@gmail.com', '60152848998', 'Samsung', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (151, 'Tristan', 'tristan56@gmail.com', '60130179217', 'Google', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (152, 'Jesus', 'jesus44@gmail.com', '60113060200', 'Custommedia', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (153, 'Jude', 'jude32@gmail.com', '60157005178', 'Microsoft', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (154, 'Zion', 'zion95@gmail.com', '60187946731', 'Google', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (155, 'Justin', 'justin67@gmail.com', '60160150408', 'Birla', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (156, 'Maddox', 'maddox66@gmail.com', '60111832397', 'Tata', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (157, 'Abel', 'abel69@gmail.com', '60156674601', 'IRIS', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (158, 'King', 'king36@gmail.com', '60113725162', 'Samsung', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (159, 'Camden', 'camden9@gmail.com', '60176158318', 'Tata', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (160, 'Elliott', 'elliott92@gmail.com', '60144978536', 'Reliance', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (161, 'Malachi', 'malachi69@gmail.com', '60114292631', 'Custommedia', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (162, 'Milo', 'milo53@gmail.com', '60142808465', 'Microsoft', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (163, 'Olivia', 'olivia57@gmail.com', '60142409222', 'Birla', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (164, 'Emma', 'emma21@gmail.com', '60119713452', 'Custommedia', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (165, 'Ava', 'ava54@gmail.com', '60128591074', 'IRIS', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (166, 'Sophia', 'sophia59@gmail.com', '60177209450', 'Samsung', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (167, 'Isabella', 'isabella29@gmail.com', '60168556220', 'Microsoft', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (168, 'Charlotte', 'charlotte27@gmail.com', '60189733176', 'Birla', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (169, 'Amelia', 'amelia7@gmail.com', '60135562858', 'Averis', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (170, 'Mia', 'mia28@gmail.com', '60148622529', 'IRIS', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (171, 'Harper', 'harper23@gmail.com', '60176154685', 'IRIS', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (172, 'Evelyn', 'evelyn32@gmail.com', '60112302638', 'Averis', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (173, 'Abigail', 'abigail27@gmail.com', '60151917523', 'Google', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (174, 'Emily', 'emily14@gmail.com', '60169485953', 'Averis', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (175, 'Ella', 'ella87@gmail.com', '60159681222', 'Birla', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (176, 'Elizabeth', 'elizabeth10@gmail.com', '60176300449', 'Reliance', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (177, 'Camila', 'camila81@gmail.com', '60144681762', 'Reliance', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (178, 'Luna', 'luna63@gmail.com', '60171065408', 'Averis', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (179, 'Sofia', 'sofia8@gmail.com', '60143687496', 'Tata', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (180, 'Avery', 'avery64@gmail.com', '60197869288', 'Averis', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (181, 'Mila', 'mila32@gmail.com', '60116471373', 'Reliance', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (182, 'Aria', 'aria76@gmail.com', '60193986549', 'Google', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (183, 'Scarlett', 'scarlett16@gmail.com', '60193477819', 'Custommedia', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (184, 'Penelope', 'penelope61@gmail.com', '60139478281', 'Tata', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (185, 'Layla', 'layla1@gmail.com', '60186136952', 'Custommedia', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (186, 'Chloe', 'chloe36@gmail.com', '60125906914', 'Google', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (187, 'Victoria', 'victoria98@gmail.com', '60115762356', 'Custommedia', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (188, 'Madison', 'madison96@gmail.com', '60117337844', 'Microsoft', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (189, 'Eleanor', 'eleanor75@gmail.com', '60117798938', 'Reliance', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (190, 'Grace', 'grace12@gmail.com', '60152653456', 'Microsoft', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (191, 'Nora', 'nora93@gmail.com', '60196562115', 'Averis', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (192, 'Riley', 'riley77@gmail.com', '60183108739', 'Custommedia', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (193, 'Zoey', 'zoey63@gmail.com', '60123984332', 'Birla', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (194, 'Hannah', 'hannah16@gmail.com', '60158198179', 'Custommedia', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (195, 'Hazel', 'hazel86@gmail.com', '60146577955', 'Tata', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (196, 'Lily', 'lily18@gmail.com', '60194760138', 'Averis', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (197, 'Ellie', 'ellie9@gmail.com', '60174984409', 'Birla', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (198, 'Violet', 'violet64@gmail.com', '60158866481', 'Birla', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (199, 'Lillian', 'lillian27@gmail.com', '60150356365', 'Reliance', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (200, 'Zoe', 'zoe55@gmail.com', '60161586645', 'Samsung', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (201, 'Stella', 'stella34@gmail.com', '60137451040', 'Custommedia', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (202, 'Aurora', 'aurora6@gmail.com', '60137432100', 'Averis', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (203, 'Natalie', 'natalie39@gmail.com', '60117703440', 'Microsoft', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (204, 'Emilia', 'emilia3@gmail.com', '60188726763', 'Custommedia', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (205, 'Everly', 'everly27@gmail.com', '60161391146', 'Samsung', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (206, 'Leah', 'leah67@gmail.com', '60137751498', 'Custommedia', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (207, 'Aubrey', 'aubrey80@gmail.com', '60165277840', 'Reliance', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (208, 'Willow', 'willow56@gmail.com', '60154744606', 'Samsung', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (209, 'Addison', 'addison8@gmail.com', '60161818226', 'Reliance', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (210, 'Lucy', 'lucy56@gmail.com', '60112094399', 'Samsung', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (211, 'Audrey', 'audrey49@gmail.com', '60139519464', 'IRIS', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (212, 'Bella', 'bella84@gmail.com', '60114768134', 'Microsoft', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (213, 'Nova', 'nova15@gmail.com', '60199180856', 'Microsoft', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (214, 'Brooklyn', 'brooklyn17@gmail.com', '60131449050', 'Averis', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (215, 'Paisley', 'paisley52@gmail.com', '60124786084', 'Microsoft', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (216, 'Savannah', 'savannah96@gmail.com', '60172164299', 'Reliance', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (217, 'Claire', 'claire67@gmail.com', '60138851865', 'Microsoft', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (218, 'Skylar', 'skylar85@gmail.com', '60133802463', 'Samsung', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (219, 'Isla', 'isla21@gmail.com', '60123882680', 'Google', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (220, 'Genesis', 'genesis31@gmail.com', '60182274440', 'Tata', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (221, 'Naomi', 'naomi60@gmail.com', '60116021615', 'Custommedia', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (222, 'Elena', 'elena35@gmail.com', '60177268443', 'Custommedia', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (223, 'Caroline', 'caroline57@gmail.com', '60157997599', 'Birla', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (224, 'Eliana', 'eliana44@gmail.com', '60167068668', 'Google', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (225, 'Anna', 'anna86@gmail.com', '60148546129', 'Microsoft', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (226, 'Maya', 'maya16@gmail.com', '60169166788', 'Samsung', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (227, 'Valentina', 'valentina58@gmail.com', '60169761699', 'Custommedia', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (228, 'Ruby', 'ruby33@gmail.com', '60152831367', 'Google', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (229, 'Kennedy', 'kennedy92@gmail.com', '60132401362', 'Microsoft', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (230, 'Ivy', 'ivy34@gmail.com', '60143311498', 'Custommedia', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (231, 'Ariana', 'ariana97@gmail.com', '60142302944', 'Reliance', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (232, 'Aaliyah', 'aaliyah15@gmail.com', '60151359099', 'Reliance', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (233, 'Cora', 'cora1@gmail.com', '60184710757', 'Samsung', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (234, 'Madelyn', 'madelyn4@gmail.com', '60124633278', 'Tata', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (235, 'Alice', 'alice59@gmail.com', '60144652265', 'Reliance', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (236, 'Kinsley', 'kinsley55@gmail.com', '60146950525', 'Samsung', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (237, 'Hailey', 'hailey44@gmail.com', '60189833639', 'IRIS', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (238, 'Gabriella', 'gabriella7@gmail.com', '60111858346', 'Averis', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (239, 'Allison', 'allison27@gmail.com', '60168661372', 'Google', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (240, 'Gianna', 'gianna34@gmail.com', '60153092279', 'Birla', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (241, 'Serenity', 'serenity75@gmail.com', '60150827232', 'Google', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (242, 'Samantha', 'samantha10@gmail.com', '60198853348', 'Reliance', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (243, 'Sarah', 'sarah85@gmail.com', '60124099211', 'Custommedia', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (244, 'Autumn', 'autumn58@gmail.com', '60161122469', 'Reliance', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (245, 'Quinn', 'quinn47@gmail.com', '60145383632', 'Reliance', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (246, 'Eva', 'eva87@gmail.com', '60149657443', 'Reliance', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (247, 'Piper', 'piper90@gmail.com', '60117757793', 'Averis', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (248, 'Sophie', 'sophie82@gmail.com', '60157369395', 'Custommedia', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (249, 'Sadie', 'sadie96@gmail.com', '60165011523', 'Averis', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (250, 'Delilah', 'delilah69@gmail.com', '60117543599', 'IRIS', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (251, 'Josephine', 'josephine31@gmail.com', '60180117455', 'Reliance', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (252, 'Nevaeh', 'nevaeh23@gmail.com', '60164265937', 'Microsoft', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (253, 'Adeline', 'adeline2@gmail.com', '60171520363', 'IRIS', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (254, 'Arya', 'arya30@gmail.com', '60148784579', 'IRIS', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (255, 'Emery', 'emery82@gmail.com', '60197352014', 'Birla', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (256, 'Lydia', 'lydia24@gmail.com', '60160382444', 'Averis', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (257, 'Clara', 'clara6@gmail.com', '60157215219', 'IRIS', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (258, 'Vivian', 'vivian35@gmail.com', '60196982115', 'Birla', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (259, 'Madeline', 'madeline43@gmail.com', '60166084822', 'Custommedia', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (260, 'Peyton', 'peyton78@gmail.com', '60161462382', 'Averis', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (261, 'Julia', 'julia19@gmail.com', '60129269655', 'Tata', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (262, 'Rylee', 'rylee69@gmail.com', '60164499512', 'Averis', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (263, 'Brielle', 'brielle82@gmail.com', '60115496560', 'Tata', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (264, 'Reagan', 'reagan93@gmail.com', '60180421085', 'IRIS', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (265, 'Natalia', 'natalia14@gmail.com', '60168529644', 'Custommedia', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (266, 'Jade', 'jade65@gmail.com', '60142035758', 'Microsoft', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (267, 'Athena', 'athena45@gmail.com', '60171441762', 'Microsoft', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (268, 'Maria', 'maria96@gmail.com', '60120119491', 'Tata', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (269, 'Leilani', 'leilani97@gmail.com', '60113021331', 'Tata', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (270, 'Everleigh', 'everleigh82@gmail.com', '60173666314', 'Averis', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (271, 'Liliana', 'liliana46@gmail.com', '60180759418', 'Samsung', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (272, 'Melanie', 'melanie7@gmail.com', '60144183441', 'Microsoft', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (273, 'Mackenzie', 'mackenzie86@gmail.com', '60131237576', 'Samsung', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (274, 'Hadley', 'hadley54@gmail.com', '60111979253', 'Averis', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (275, 'Raelynn', 'raelynn35@gmail.com', '60144819676', 'Birla', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (276, 'Kaylee', 'kaylee7@gmail.com', '60130653886', 'Custommedia', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (277, 'Rose', 'rose90@gmail.com', '60168966855', 'Birla', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (278, 'Arianna', 'arianna1@gmail.com', '60132668223', 'IRIS', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (279, 'Isabelle', 'isabelle82@gmail.com', '60154304943', 'Samsung', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (280, 'Melody', 'melody15@gmail.com', '60117213244', 'Samsung', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (281, 'Eliza', 'eliza86@gmail.com', '60129158616', 'Microsoft', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (282, 'Lyla', 'lyla93@gmail.com', '60145775643', 'Custommedia', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (283, 'Katherine', 'katherine19@gmail.com', '60126942788', 'IRIS', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (284, 'Aubree', 'aubree54@gmail.com', '60156367583', 'Birla', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (285, 'Adalynn', 'adalynn52@gmail.com', '60116957951', 'Custommedia', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (286, 'Kylie', 'kylie10@gmail.com', '60182214037', 'Google', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (287, 'Faith', 'faith15@gmail.com', '60115187586', 'Averis', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (288, 'Mary', 'mary54@gmail.com', '60176229769', 'Custommedia', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (289, 'Margaret', 'margaret75@gmail.com', '60178235100', 'Google', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (290, 'Ximena', 'ximena13@gmail.com', '60133649304', 'Microsoft', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (291, 'Iris', 'iris73@gmail.com', '60188916382', 'Averis', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (292, 'Alexandra', 'alexandra41@gmail.com', '60177649200', 'Reliance', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (293, 'Jasmine', 'jasmine52@gmail.com', '60157175812', 'Samsung', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (294, 'Charlie', 'charlie79@gmail.com', '60194749167', 'Custommedia', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (295, 'Amaya', 'amaya62@gmail.com', '60190021290', 'Microsoft', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (296, 'Taylor', 'taylor76@gmail.com', '60129488809', 'Google', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (297, 'Isabel', 'isabel85@gmail.com', '60130140213', 'IRIS', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (298, 'Ashley', 'ashley66@gmail.com', '60171067793', 'Averis', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (299, 'Khloe', 'khloe94@gmail.com', '60198419050', 'Tata', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (300, 'Ryleigh', 'ryleigh30@gmail.com', '60188034775', 'Microsoft', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (301, 'Alexa', 'alexa10@gmail.com', '60132109005', 'Reliance', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (302, 'Amara', 'amara37@gmail.com', '60116533209', 'Birla', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (303, 'Valeria', 'valeria97@gmail.com', '60161612921', 'Reliance', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (304, 'Andrea', 'andrea68@gmail.com', '60157123088', 'Birla', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (305, 'Parker', 'parker54@gmail.com', '60196679058', 'Custommedia', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (306, 'Norah', 'norah94@gmail.com', '60169636654', 'Tata', 'F', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (307, 'Eden', 'eden38@gmail.com', '60181207168', 'Averis', 'M', 'L');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (308, 'Elliana', 'elliana75@gmail.com', '60154371256', 'Google', 'F', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (309, 'Brianna', 'brianna15@gmail.com', '60123134492', 'Microsoft', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (310, 'Emersyn', 'emersyn99@gmail.com', '60152644917', 'Reliance', 'M', 'E');
INSERT INTO public."Candidates" (id, "Name", email, phone, client, gender, region) VALUES (311, 'Valerie', 'valerie39@gmail.com', '60141882681', 'Samsung', 'F', 'L');


--
-- TOC entry 2995 (class 0 OID 16395)
-- Dependencies: 200
-- Data for Name: GraphData; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."GraphData" (id, junior, mid, senior, sick, emergency, casual, unknown, "InterviewsTaken", "SelectedCandidates", "Joiners", "Leavers", "HeadCount", "Year", "Gender", "Region") VALUES (1, 3048500, 4930000, 3625000, 2207, 626, 443, 44, 2200, 723, 720, 54, 1741, 2020, 'M', 'L');
INSERT INTO public."GraphData" (id, junior, mid, senior, sick, emergency, casual, unknown, "InterviewsTaken", "SelectedCandidates", "Joiners", "Leavers", "HeadCount", "Year", "Gender", "Region") VALUES (2, 2156000, 3485000, 2562500, 1594, 453, 320, 32, 1575, 533, 525, 21, 1231, 2020, 'F', 'L');
INSERT INTO public."GraphData" (id, junior, mid, senior, sick, emergency, casual, unknown, "InterviewsTaken", "SelectedCandidates", "Joiners", "Leavers", "HeadCount", "Year", "Gender", "Region") VALUES (3, 6492500, 10514500, 7725000, 4842, 1375, 971, 97, 3200, 1067, 1065, 45, 3710, 2020, 'M', 'E');
INSERT INTO public."GraphData" (id, junior, mid, senior, sick, emergency, casual, unknown, "InterviewsTaken", "SelectedCandidates", "Joiners", "Leavers", "HeadCount", "Year", "Gender", "Region") VALUES (4, 4389000, 7106000, 5225000, 3138, 891, 630, 63, 3100, 1034, 1027, 98, 2508, 2020, 'F', 'E');
INSERT INTO public."GraphData" (id, junior, mid, senior, sick, emergency, casual, unknown, "InterviewsTaken", "SelectedCandidates", "Joiners", "Leavers", "HeadCount", "Year", "Gender", "Region") VALUES (5, 1883000, 3043000, 2237500, 1273, 362, 255, 26, 900, 296, 294, 78, 1075, 2019, 'M', 'L');
INSERT INTO public."GraphData" (id, junior, mid, senior, sick, emergency, casual, unknown, "InterviewsTaken", "SelectedCandidates", "Joiners", "Leavers", "HeadCount", "Year", "Gender", "Region") VALUES (6, 1274000, 2057000, 1512500, 855, 243, 171, 17, 400, 135, 135, 56, 727, 2019, 'F', 'L');
INSERT INTO public."GraphData" (id, junior, mid, senior, sick, emergency, casual, unknown, "InterviewsTaken", "SelectedCandidates", "Joiners", "Leavers", "HeadCount", "Year", "Gender", "Region") VALUES (7, 4707500, 7624500, 5600000, 3512, 997, 705, 70, 1200, 395, 391, 32, 2690, 2019, 'M', 'E');
INSERT INTO public."GraphData" (id, junior, mid, senior, sick, emergency, casual, unknown, "InterviewsTaken", "SelectedCandidates", "Joiners", "Leavers", "HeadCount", "Year", "Gender", "Region") VALUES (8, 2765000, 4471000, 3287500, 1925, 547, 386, 39, 500, 165, 165, 87, 1579, 2019, 'F', 'E');
INSERT INTO public."GraphData" (id, junior, mid, senior, sick, emergency, casual, unknown, "InterviewsTaken", "SelectedCandidates", "Joiners", "Leavers", "HeadCount", "Year", "Gender", "Region") VALUES (9, 1505000, 2431000, 1787500, 1052, 299, 211, 21, 400, 135, 127, 45, 859, 2018, 'M', 'L');
INSERT INTO public."GraphData" (id, junior, mid, senior, sick, emergency, casual, unknown, "InterviewsTaken", "SelectedCandidates", "Joiners", "Leavers", "HeadCount", "Year", "Gender", "Region") VALUES (10, 1134000, 1836000, 1350000, 731, 208, 147, 15, 250, 93, 88, 65, 648, 2018, 'F', 'L');
INSERT INTO public."GraphData" (id, junior, mid, senior, sick, emergency, casual, unknown, "InterviewsTaken", "SelectedCandidates", "Joiners", "Leavers", "HeadCount", "Year", "Gender", "Region") VALUES (11, 4081000, 6604500, 4850000, 3074, 873, 617, 62, 700, 255, 246, 12, 2331, 2018, 'M', 'E');
INSERT INTO public."GraphData" (id, junior, mid, senior, sick, emergency, casual, unknown, "InterviewsTaken", "SelectedCandidates", "Joiners", "Leavers", "HeadCount", "Year", "Gender", "Region") VALUES (12, 2628500, 4250000, 3125000, 1966, 558, 394, 39, 400, 147, 137, 15, 1501, 2018, 'F', 'E');
INSERT INTO public."GraphData" (id, junior, mid, senior, sick, emergency, casual, unknown, "InterviewsTaken", "SelectedCandidates", "Joiners", "Leavers", "HeadCount", "Year", "Gender", "Region") VALUES (13, 1361500, 2201500, 1612500, 1023, 290, 205, 21, 200, 69, 65, 5, 777, 2017, 'M', 'L');
INSERT INTO public."GraphData" (id, junior, mid, senior, sick, emergency, casual, unknown, "InterviewsTaken", "SelectedCandidates", "Joiners", "Leavers", "HeadCount", "Year", "Gender", "Region") VALUES (14, 1095500, 1768000, 1300000, 829, 235, 166, 17, 150, 53, 45, 1, 625, 2017, 'F', 'L');
INSERT INTO public."GraphData" (id, junior, mid, senior, sick, emergency, casual, unknown, "InterviewsTaken", "SelectedCandidates", "Joiners", "Leavers", "HeadCount", "Year", "Gender", "Region") VALUES (15, 3671500, 5941500, 4362500, 2760, 783, 554, 55, 500, 174, 164, 14, 2097, 2017, 'M', 'E');
INSERT INTO public."GraphData" (id, junior, mid, senior, sick, emergency, casual, unknown, "InterviewsTaken", "SelectedCandidates", "Joiners", "Leavers", "HeadCount", "Year", "Gender", "Region") VALUES (16, 2415000, 3910000, 2862500, 1816, 515, 364, 36, 250, 93, 89, 9, 1379, 2017, 'F', 'E');
INSERT INTO public."GraphData" (id, junior, mid, senior, sick, emergency, casual, unknown, "InterviewsTaken", "SelectedCandidates", "Joiners", "Leavers", "HeadCount", "Year", "Gender", "Region") VALUES (17, 1256500, 2031500, 1487500, 923, 262, 185, 19, 250, 81, 80, 15, 717, 2016, 'M', 'L');
INSERT INTO public."GraphData" (id, junior, mid, senior, sick, emergency, casual, unknown, "InterviewsTaken", "SelectedCandidates", "Joiners", "Leavers", "HeadCount", "Year", "Gender", "Region") VALUES (18, 1018500, 1649000, 1200000, 766, 218, 154, 15, 150, 66, 56, 3, 581, 2016, 'F', 'L');
INSERT INTO public."GraphData" (id, junior, mid, senior, sick, emergency, casual, unknown, "InterviewsTaken", "SelectedCandidates", "Joiners", "Leavers", "HeadCount", "Year", "Gender", "Region") VALUES (19, 3409000, 5516500, 4050000, 2530, 718, 508, 51, 450, 163, 156, 29, 1947, 2016, 'M', 'E');
INSERT INTO public."GraphData" (id, junior, mid, senior, sick, emergency, casual, unknown, "InterviewsTaken", "SelectedCandidates", "Joiners", "Leavers", "HeadCount", "Year", "Gender", "Region") VALUES (20, 2275000, 3680500, 2700000, 1703, 483, 342, 34, 250, 88, 81, 12, 1299, 2016, 'F', 'E');


--
-- TOC entry 2997 (class 0 OID 16410)
-- Dependencies: 202
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, email, first_name, last_name, password, created_on) VALUES (1, 'mohit5783@gmail.com', 'Mohit', 'Shrivastava', '$2a$10$1sa/ujDlxZM2ympCiij97.iY25yb4rpXjccUvfX0M24qPZwabwQoS', NULL);
INSERT INTO public.users (id, email, first_name, last_name, password, created_on) VALUES (2, 'demo@demo.com', 'Demo', 'Last', '$2y$10$zva.armT6aeDvq/MdA1IgOqWeVLChRoAd0V4THxR3t2GHBacYGBga', '2020-11-24');


--
-- TOC entry 2860 (class 2606 OID 16409)
-- Name: Candidates Candidates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Candidates"
    ADD CONSTRAINT "Candidates_pkey" PRIMARY KEY (id);


--
-- TOC entry 2858 (class 2606 OID 16399)
-- Name: GraphData GraphData_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GraphData"
    ADD CONSTRAINT "GraphData_pkey" PRIMARY KEY (id);


--
-- TOC entry 2862 (class 2606 OID 16419)
-- Name: users uq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT uq UNIQUE (email);


--
-- TOC entry 2864 (class 2606 OID 16417)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


-- Completed on 2020-11-24 22:17:11

--
-- PostgreSQL database dump complete
--

