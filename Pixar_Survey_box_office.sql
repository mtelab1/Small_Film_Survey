-- Table: public.Pixar_Survey.box_office

-- DROP TABLE public."Pixar_Survey.box_office";

CREATE TABLE public."Pixar_Survey.box_office"
(
    movies text COLLATE pg_catalog."default" NOT NULL,
    usa_box_office double precision,
    world_box_office double precision,
    CONSTRAINT movies PRIMARY KEY (movies)
        INCLUDE(movies)
)

TABLESPACE pg_default;

ALTER TABLE public."Pixar_Survey.box_office"
    OWNER to postgres;