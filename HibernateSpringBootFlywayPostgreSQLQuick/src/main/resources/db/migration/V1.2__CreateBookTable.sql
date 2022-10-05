CREATE TABLE book
(
    id bigserial NOT NULL,
    isbn character varying(255) COLLATE pg_catalog."default",
    title character varying(255) COLLATE pg_catalog."default",
    author_id bigint,
    CONSTRAINT book_pkey PRIMARY KEY (id),
    CONSTRAINT fkklnrv3weler2ftkweewlky958 FOREIGN KEY (author_id)
        REFERENCES author (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE book
    OWNER to postgres;

CREATE SEQUENCE book_generator_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

ALTER TABLE book_generator_seq
  OWNER TO postgres;