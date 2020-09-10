{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww22380\viewh14560\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- Table: public.Pixar_Survey.movie_ratings\
\
-- DROP TABLE public."Pixar_Survey.movie_ratings";\
\
CREATE TABLE public."Pixar_Survey.movie_ratings"\
(\
    movies text COLLATE pg_catalog."default",\
    ratings double precision,\
    userid double precision,\
    CONSTRAINT movies FOREIGN KEY (movies)\
        REFERENCES public."Pixar_Survey.box_office" (movies) MATCH SIMPLE\
        ON UPDATE NO ACTION\
        ON DELETE NO ACTION\
        NOT VALID\
)\
\
TABLESPACE pg_default;\
\
ALTER TABLE public."Pixar_Survey.movie_ratings"\
    OWNER to postgres;\
-- Index: fki_movies\
\
-- DROP INDEX public.fki_movies;\
\
CREATE INDEX fki_movies\
    ON public."Pixar_Survey.movie_ratings" USING btree\
    (movies COLLATE pg_catalog."default" ASC NULLS LAST)\
    TABLESPACE pg_default;}
