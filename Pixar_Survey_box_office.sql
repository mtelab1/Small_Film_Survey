{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww22900\viewh14580\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- Table: public.Pixar_Survey.box_office\
\
-- DROP TABLE public."Pixar_Survey.box_office";\
\
CREATE TABLE public."Pixar_Survey.box_office"\
(\
    movies text COLLATE pg_catalog."default" NOT NULL,\
    usa_box_office double precision,\
    world_box_office double precision,\
    CONSTRAINT movies PRIMARY KEY (movies)\
        INCLUDE(movies)\
)\
\
TABLESPACE pg_default;\
\
ALTER TABLE public."Pixar_Survey.box_office"\
    OWNER to postgres;}