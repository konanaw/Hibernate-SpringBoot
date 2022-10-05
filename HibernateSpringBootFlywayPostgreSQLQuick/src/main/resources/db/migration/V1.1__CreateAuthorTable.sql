CREATE TABLE author
(
    id bigserial NOT NULL,
    age integer NOT NULL,
    genre character varying(255) COLLATE pg_catalog."default",
    name character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT author_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE author
    OWNER to postgres;

CREATE SEQUENCE author_generator_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

ALTER TABLE author_generator_seq
  OWNER TO postgres;