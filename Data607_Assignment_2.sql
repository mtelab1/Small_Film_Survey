PGDMP     3                    x           Pixar_Survey    12.4    12.4     H           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            I           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            J           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            K           1262    24583    Pixar_Survey    DATABASE     l   CREATE DATABASE "Pixar_Survey" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE "Pixar_Survey";
                postgres    false            �            1259    24596    Pixar_Survey.box_office    TABLE     �   CREATE TABLE public."Pixar_Survey.box_office" (
    movies text NOT NULL,
    usa_box_office double precision,
    world_box_office double precision
);
 -   DROP TABLE public."Pixar_Survey.box_office";
       public         heap    postgres    false            �            1259    24590    Pixar_Survey.movie_ratings    TABLE     �   CREATE TABLE public."Pixar_Survey.movie_ratings" (
    movies text,
    ratings double precision,
    userid double precision
);
 0   DROP TABLE public."Pixar_Survey.movie_ratings";
       public         heap    postgres    false            E          0    24596    Pixar_Survey.box_office 
   TABLE DATA           ]   COPY public."Pixar_Survey.box_office" (movies, usa_box_office, world_box_office) FROM stdin;
    public          postgres    false    203   �       D          0    24590    Pixar_Survey.movie_ratings 
   TABLE DATA           O   COPY public."Pixar_Survey.movie_ratings" (movies, ratings, userid) FROM stdin;
    public          postgres    false    202   �       �           2606    24605    Pixar_Survey.box_office movies 
   CONSTRAINT     s   ALTER TABLE ONLY public."Pixar_Survey.box_office"
    ADD CONSTRAINT movies PRIMARY KEY (movies) INCLUDE (movies);
 J   ALTER TABLE ONLY public."Pixar_Survey.box_office" DROP CONSTRAINT movies;
       public            postgres    false    203    203            �           1259    24611 
   fki_movies    INDEX     U   CREATE INDEX fki_movies ON public."Pixar_Survey.movie_ratings" USING btree (movies);
    DROP INDEX public.fki_movies;
       public            postgres    false    202            �           2606    24606 !   Pixar_Survey.movie_ratings movies    FK CONSTRAINT     �   ALTER TABLE ONLY public."Pixar_Survey.movie_ratings"
    ADD CONSTRAINT movies FOREIGN KEY (movies) REFERENCES public."Pixar_Survey.box_office"(movies) NOT VALID;
 M   ALTER TABLE ONLY public."Pixar_Survey.movie_ratings" DROP CONSTRAINT movies;
       public          postgres    false    203    3012    202            E   �   x��MKQE�ɯ��+K����,�X�?p#H��2Pgdf�����M�p�ܓ�4����$'
�vM�$|��D���B���/�{^��"��Vع����}?���3B#�&1��#��d|�-�e<��c���-+(q���0�R�����V �&�.��9+�b����XghpU�H�yfƷ�v{}��.�l��(���ẻ9��n�Wh���������njPUr	.A��}���F�      D     x�e�=o�0����25E�kt�(�vHZd	8�p�@r������E�q"�Z��_��$����w!o��5���y����8���k�sx��sw���<��� ���z����>��"�,���|V���aw8|��]����jm��AX��5|g)0i�M�X1IG$�5F	Yi���?O,�é��*-�*,�K��a�X�躨lQ��A�,�bѢ���#B�����A<D%��8A��SIAڡ�"qB��CSJ4�X�Ds�����#Y����DogE�XhJ��kb��ԛc����1�!|)Z%��������IDtwl�X.�Q��$���c��Ev\���G$�H�`�I\�x�h[�n��_]�6���6�_0�%�𽠉sm%�&n��i�!;.����fu� ���$
S���$�o#���-k���.IZwCP�&I+o�E���'��o��B��Z�O�U�&�,�l0c��+�sU���r�*m�b��K�ת*��)z��*����,Uf���i���i��     