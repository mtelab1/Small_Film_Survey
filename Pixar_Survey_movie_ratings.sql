-- Table: public.Pixar_Survey.movie_ratings

-- DROP TABLE public."Pixar_Survey.movie_ratings";

CREATE TABLE public."Pixar_Survey.movie_ratings"
(
    movies text COLLATE pg_catalog."default",
    ratings double precision,
    userid double precision,
    CONSTRAINT movies FOREIGN KEY (movies)
        REFERENCES public."Pixar_Survey.box_office" (movies) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public."Pixar_Survey.movie_ratings"
    OWNER to postgres;
-- Index: fki_movies

-- DROP INDEX public.fki_movies;

CREATE INDEX fki_movies
    ON public."Pixar_Survey.movie_ratings" USING btree
    (movies COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;