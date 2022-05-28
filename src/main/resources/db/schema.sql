
-- CREATE TABLE Users
-- (
--     ID    SERIAL       NOT NULL,
--     FIRST VARCHAR(100) NOT NULL,
--     LAST  VARCHAR(100) NOT NULL,
--     AGE   INT          NOT NULL,
--     ROLE  VARCHAR(100) NOT NULL,
--     PRIMARY KEY (ID)
-- );

CREATE TABLE IF NOT EXISTS customer (
    customer_id integer NOT NULL,
    firstname VARCHAR(60),
    lastname VARCHAR(60),
    birth_date DATE NOT NULL,
    address VARCHAR(60),
    city VARCHAR(60),
    phoneNo bigserial,
    PRIMARY KEY (customer_id)
);



CREATE TABLE people  (
         person_id BIGINT  NOT NULL PRIMARY KEY,
         first_name VARCHAR(20),
         last_name VARCHAR(20)
);

    insert into customers
(customer_id, firstname, lastname, birth_date, address, city, phoneNo)
VALUES (1, 'Smith', 'Johnson', '1996-12-02', 'Abaya 34', 'Alabama', 87073479754);

select * from customers




CREATE TABLE courses
(
    id          BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    course_name VARCHAR(255),
    instructor  VARCHAR(255),
    email       VARCHAR(255),
    CONSTRAINT pk_courses PRIMARY KEY (id)
);

CREATE TABLE Users (
    ID    SERIAL       NOT NULL,
    FIRST VARCHAR(100) NOT NULL,
    LAST  VARCHAR(100) NOT NULL,
    AGE   INT          NOT NULL,
    ROLE  VARCHAR(100) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS customers (
                                         customer_id integer NOT NULL,
                                         firstname VARCHAR(60),
    lastname VARCHAR(60),
    birth_date DATE NOT NULL,
    address VARCHAR(60),
    city VARCHAR(60),
    phoneNo bigserial,
    PRIMARY KEY (customer_id)
    );
--
CREATE TABLE IF NOT EXISTS customers (
                                         ID SERIAL PRIMARY KEY,
                                         FIRSTNAME VARCHAR(60),
    LASTNAME VARCHAR(60),
    ADDRESS VARCHAR(60),
    CITY VARCHAR(60),
    PHONENO bigint
    );
CREATE TABLE IF NOT EXISTS customers (
                                         ID SERIAL NOT NULL,
                                         FIRSTNAME VARCHAR(60),
    LASTNAME VARCHAR(60),
    ADDRESS VARCHAR(60),
    CITY VARCHAR(60),
    PHONENO bigint
    );

CREATE SEQUENCE public.customers
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT ID PRIMARY KEY (ID);

insert into customers
( FIRSTNAME, LASTNAME, ADDRESS, CITY, PHONENO)
VALUES ( 'Smith', 'Johnson', 'Abaya 34', 'Alabama', 2522525);

insert into customers
( FIRSTNAME, LASTNAME, ADDRESS, CITY, PHONENO)
VALUES ( 'Smith', 'Johnson', 'Abaya 34', 'Alabama', 2522525);

drop table customers;

CREATE TABLE customers
(
    customer_id  INT  ,
    FIRSTNAME VARCHAR(60),
    LASTNAME VARCHAR(60),
    ADDRESS VARCHAR(60),
    CITY VARCHAR(60),
    PHONENO VARCHAR(255),
    CONSTRAINT pk_customers PRIMARY KEY (customer_id)

--     id          BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
--     course_name VARCHAR(255),
--     instructor  VARCHAR(255),
--     email       VARCHAR(255),
--     CONSTRAINT pk_courses PRIMARY KEY (id)
);

CREATE TABLE people  (
                         person_id BIGINT  NOT NULL PRIMARY KEY,
                         first_name VARCHAR(20),
                         last_name VARCHAR(20)
);


select * from customers

CREATE TABLE public.labels (
                               id integer NOT NULL,
                               name character varying(60) NOT NULL,
                               category character varying(40) NOT NULL,
                               description character varying(500),
                               created_date date,
                               created_by character varying(100),
                               last_modified_by character varying(100),
                               last_modified_date date
);

CREATE SEQUENCE public.ID_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE ONLY public.labels ALTER COLUMN id SET DEFAULT nextval('public.labels_id_seq'::regclass);

ALTER TABLE ONLY public.labels
    ADD CONSTRAINT labels_pkey PRIMARY KEY (id);

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
DROP TABLE public.labels;

CREATE TABLE public.labels (
                               id integer NOT NULL,
                               name character varying(60) NOT NULL,
                               category character varying(40) NOT NULL,
                               description character varying(500),
                               created_date date,
                               created_by character varying(100),
                               last_modified_by character varying(100),
                               last_modified_date date
);




CREATE SEQUENCE public.labels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE ONLY public.labels ALTER COLUMN id SET DEFAULT nextval('public.labels_id_seq'::regclass);

-- Name: labels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres

ALTER TABLE ONLY public.labels
    ADD CONSTRAINT labels_pkey PRIMARY KEY (id);




-- auto-generated definition
create table customers
(
    id        serial
        primary key,
    firstname varchar(60),
    lastname  varchar(60),
    address   varchar(60),
    city      varchar(60),
    phoneno   varchar(60)
);

alter table customers
    owner to postgres;

CREATE TABLE public.users (
      id SERIAL NOT NULL,
      first character varying(100) NOT NULL,
      last character varying(100) NOT NULL,
      age integer NOT NULL,
      username character varying(100) NOT NULL,
      password character varying(100),
      photo bytea,
      roles character varying(100)
);
drop table Users;

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

  SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;

CREATE TABLE public.files (
      id character varying(255),
      name character varying(255),
      type character varying(255),
      data bytea
);

CREATE TABLE public.authorisation (
                                      auth_id integer NOT NULL,
                                      username character varying(100) NOT NULL,
                                      role character varying(100) NOT NULL
);

insert into authorisation (auth_id, username, role) values (1, 'nurlan', 'admin');
delete from authorisation where  auth_id = 1
insert into users (id, first, last, age, username, password, roles)
values (1, 'Nurlan', 'Oibekuly', 21, 'nurlan', '$2a$10$GBXOrsolaVZLdeTjMLZhEOtSvnlHy/dhRVFqJXVIjejynFrLQkxIe', 'ROLE_ADMIN');

CREATE SEQUENCE public.authorisation_auth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

drop table authorisation;
-- auto-generated definition
create table authorisation
(
    auth_id  serial
        primary key,
    username varchar(100) not null
        constraint authorisation_users_username_fk
            references users (username),
    role     varchar(100) not null
);

alter table authorisation
    owner to postgres;

create unique index authorisation_logina_uindex
    on authorisation (username);


drop table users;

-- auto-generated definition
create table users
(
    id       serial
        primary key,
    first    varchar(100) not null,
    last     varchar(100) not null,
    age      integer      not null,
    username varchar(100) not null,
    password varchar(100),
    photo    bytea,
    roles    varchar(100)
);

alter table users
    owner to postgres;

create unique index users_login_uindex
    on users (username);

drop table customers

-- auto-generated definition
create table customers
(
    customer_id integer not null
        constraint pk_customers
            primary key,
    firstname   varchar(60),
    lastname    varchar(60),
    address     varchar(60),
    city        varchar(60),
    phoneno     varchar(255),
    isCustomerRegistered     boolean
);

alter table customers
    owner to postgres;

create table customers
(
    customer_id integer not null
        constraint pk_customers
            primary key,
    firstname   varchar(60),
    lastname    varchar(60),
    address     varchar(60),
    city        varchar(60),
    phoneno     varchar(255)
);
insert into customers (customer_id, firstname, lastname, address, city, phoneno)
values (1,  'Nurlan', 'Oibekuly', 'Abaya 34', 'Almaty', '87073479755');
select * from customers

alter table customers
    owner to postgres;

