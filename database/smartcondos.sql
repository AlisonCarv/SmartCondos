--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: Aviso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Aviso" (
    "idAviso" integer NOT NULL,
    "textoAviso" text NOT NULL
);


ALTER TABLE public."Aviso" OWNER TO postgres;

--
-- Name: Condomino; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Condomino" (
    "cpfCondomino" bigint NOT NULL,
    "aptoCondomino" integer NOT NULL
);


ALTER TABLE public."Condomino" OWNER TO postgres;

--
-- Name: Encomenda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Encomenda" (
    "idEncomenda" integer NOT NULL,
    "dataEncomenda" date NOT NULL,
    "aptoEncomenda" integer NOT NULL,
    "cpfFuncionario" bigint NOT NULL
);


ALTER TABLE public."Encomenda" OWNER TO postgres;

--
-- Name: TABLE "Encomenda"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public."Encomenda" IS 'Encomenda recebida pelo ''Funcionario''';


--
-- Name: Funcionario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Funcionario" (
    cpf bigint NOT NULL,
    "cargoFuncionario" text NOT NULL,
    "turnoFuncionario" text NOT NULL
);


ALTER TABLE public."Funcionario" OWNER TO postgres;

--
-- Name: Ocorrencia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Ocorrencia" (
    "idOcorrencia" integer NOT NULL,
    "textoOcorrencia" text NOT NULL,
    "cpfOcorrencia" bigint
);


ALTER TABLE public."Ocorrencia" OWNER TO postgres;

--
-- Name: Pessoa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pessoa" (
    cpf bigint NOT NULL,
    nome text NOT NULL,
    telefone text NOT NULL,
    email text,
    endereco text,
    condomino boolean NOT NULL
);


ALTER TABLE public."Pessoa" OWNER TO postgres;

--
-- Name: Reserva; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Reserva" (
    "idReserva" integer NOT NULL,
    "localReserva" text NOT NULL,
    "dataReserva" date NOT NULL,
    "valorReserva" money NOT NULL,
    "cpfReserva" bigint NOT NULL
);


ALTER TABLE public."Reserva" OWNER TO postgres;

--
-- Name: Sindico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Sindico" (
    "mandatoInicio" date NOT NULL,
    "mandatoFim" date NOT NULL,
    "cpfSindico" bigint NOT NULL
);


ALTER TABLE public."Sindico" OWNER TO postgres;

--
-- Name: Tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tag" (
    "idTag" integer NOT NULL,
    "cpfCodomino" bigint NOT NULL
);


ALTER TABLE public."Tag" OWNER TO postgres;

--
-- Name: Visitante; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Visitante" (
    cpf bigint NOT NULL,
    "dataEntrada" date NOT NULL,
    "dataSaida" date NOT NULL
);


ALTER TABLE public."Visitante" OWNER TO postgres;

--
-- Data for Name: Aviso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Aviso" ("idAviso", "textoAviso") FROM stdin;
\.


--
-- Data for Name: Condomino; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Condomino" ("cpfCondomino", "aptoCondomino") FROM stdin;
\.


--
-- Data for Name: Encomenda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Encomenda" ("idEncomenda", "dataEncomenda", "aptoEncomenda", "cpfFuncionario") FROM stdin;
\.


--
-- Data for Name: Funcionario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Funcionario" (cpf, "cargoFuncionario", "turnoFuncionario") FROM stdin;
\.


--
-- Data for Name: Ocorrencia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Ocorrencia" ("idOcorrencia", "textoOcorrencia", "cpfOcorrencia") FROM stdin;
\.


--
-- Data for Name: Pessoa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pessoa" (cpf, nome, telefone, email, endereco, condomino) FROM stdin;
0	Matheus	14996152005	maguigames123@gmail.com	cornelio procopio, rua 2	t
\.


--
-- Data for Name: Reserva; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Reserva" ("idReserva", "localReserva", "dataReserva", "valorReserva", "cpfReserva") FROM stdin;
\.


--
-- Data for Name: Sindico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Sindico" ("mandatoInicio", "mandatoFim", "cpfSindico") FROM stdin;
\.


--
-- Data for Name: Tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Tag" ("idTag", "cpfCodomino") FROM stdin;
\.


--
-- Data for Name: Visitante; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Visitante" (cpf, "dataEntrada", "dataSaida") FROM stdin;
\.


--
-- Name: Aviso Aviso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Aviso"
    ADD CONSTRAINT "Aviso_pkey" PRIMARY KEY ("idAviso");


--
-- Name: Condomino Condomino_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Condomino"
    ADD CONSTRAINT "Condomino_pkey" PRIMARY KEY ("cpfCondomino");


--
-- Name: Encomenda Encomenda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Encomenda"
    ADD CONSTRAINT "Encomenda_pkey" PRIMARY KEY ("idEncomenda");


--
-- Name: Funcionario Funcionario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Funcionario"
    ADD CONSTRAINT "Funcionario_pkey" PRIMARY KEY (cpf);


--
-- Name: Ocorrencia Ocorrencia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ocorrencia"
    ADD CONSTRAINT "Ocorrencia_pkey" PRIMARY KEY ("idOcorrencia");


--
-- Name: Pessoa Pessoa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pessoa"
    ADD CONSTRAINT "Pessoa_pkey" PRIMARY KEY (cpf);


--
-- Name: Reserva Reserva_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Reserva"
    ADD CONSTRAINT "Reserva_pkey" PRIMARY KEY ("idReserva");


--
-- Name: Sindico Sindico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sindico"
    ADD CONSTRAINT "Sindico_pkey" PRIMARY KEY ("cpfSindico");


--
-- Name: Tag Tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tag"
    ADD CONSTRAINT "Tag_pkey" PRIMARY KEY ("idTag");


--
-- Name: Visitante Visitante_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Visitante"
    ADD CONSTRAINT "Visitante_pkey" PRIMARY KEY (cpf);


--
-- Name: Condomino unique_cpf_condomino; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Condomino"
    ADD CONSTRAINT unique_cpf_condomino UNIQUE ("cpfCondomino");


--
-- Name: Condomino fk_condomino_pessoa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Condomino"
    ADD CONSTRAINT fk_condomino_pessoa FOREIGN KEY ("cpfCondomino") REFERENCES public."Pessoa"(cpf) NOT VALID;


--
-- Name: Encomenda fk_encomenda_funcionario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Encomenda"
    ADD CONSTRAINT fk_encomenda_funcionario FOREIGN KEY ("cpfFuncionario") REFERENCES public."Funcionario"(cpf) NOT VALID;


--
-- Name: CONSTRAINT fk_encomenda_funcionario ON "Encomenda"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON CONSTRAINT fk_encomenda_funcionario ON public."Encomenda" IS 'CPF do funcionario que recebeu a encomenda';


--
-- Name: Funcionario fk_funcionario_pessoa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Funcionario"
    ADD CONSTRAINT fk_funcionario_pessoa FOREIGN KEY (cpf) REFERENCES public."Pessoa"(cpf);


--
-- Name: CONSTRAINT fk_funcionario_pessoa ON "Funcionario"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON CONSTRAINT fk_funcionario_pessoa ON public."Funcionario" IS 'CPF da tabela/classe ''Pessoa''';


--
-- Name: Ocorrencia fk_ocorrencia_condomino; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ocorrencia"
    ADD CONSTRAINT fk_ocorrencia_condomino FOREIGN KEY ("cpfOcorrencia") REFERENCES public."Condomino"("cpfCondomino") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: CONSTRAINT fk_ocorrencia_condomino ON "Ocorrencia"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON CONSTRAINT fk_ocorrencia_condomino ON public."Ocorrencia" IS 'CPF de quem fez a ocorrência';


--
-- Name: Reserva fk_reserva_condomino; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Reserva"
    ADD CONSTRAINT fk_reserva_condomino FOREIGN KEY ("cpfReserva") REFERENCES public."Condomino"("cpfCondomino");


--
-- Name: CONSTRAINT fk_reserva_condomino ON "Reserva"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON CONSTRAINT fk_reserva_condomino ON public."Reserva" IS 'CPF de quem realizou a reserva';


--
-- Name: Sindico fk_sindico_condomino; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sindico"
    ADD CONSTRAINT fk_sindico_condomino FOREIGN KEY ("cpfSindico") REFERENCES public."Condomino"("cpfCondomino");


--
-- Name: Tag fk_tag_condomino; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tag"
    ADD CONSTRAINT fk_tag_condomino FOREIGN KEY ("cpfCodomino") REFERENCES public."Condomino"("cpfCondomino");


--
-- Name: CONSTRAINT fk_tag_condomino ON "Tag"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON CONSTRAINT fk_tag_condomino ON public."Tag" IS 'CPF do ''Condomino'' que criou e gerencia a Tag';


--
-- Name: Visitante fk_visitante_pessoa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Visitante"
    ADD CONSTRAINT fk_visitante_pessoa FOREIGN KEY (cpf) REFERENCES public."Pessoa"(cpf) NOT VALID;


--
-- PostgreSQL database dump complete
--

