PGDMP     &                
    z            dbsiakad    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16483    dbsiakad    DATABASE     ?   CREATE DATABASE dbsiakad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE dbsiakad;
                postgres    false            ?            1259    16495    dosen    TABLE     w   CREATE TABLE public.dosen (
    namadosen character varying(30) NOT NULL,
    namamk character varying(30) NOT NULL
);
    DROP TABLE public.dosen;
       public         heap    postgres    false            ?            1259    16485 	   mahasiswa    TABLE     ?   CREATE TABLE public.mahasiswa (
    nim integer NOT NULL,
    nama character varying(30) NOT NULL,
    alamat character varying(30) NOT NULL
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false            ?            1259    16490    makul    TABLE     c   CREATE TABLE public.makul (
    namamk character varying(30) NOT NULL,
    sks integer NOT NULL
);
    DROP TABLE public.makul;
       public         heap    postgres    false                       0    16495    dosen 
   TABLE DATA           2   COPY public.dosen (namadosen, namamk) FROM stdin;
    public          postgres    false    216          ?          0    16485 	   mahasiswa 
   TABLE DATA           6   COPY public.mahasiswa (nim, nama, alamat) FROM stdin;
    public          postgres    false    214   l       ?          0    16490    makul 
   TABLE DATA           ,   COPY public.makul (namamk, sks) FROM stdin;
    public          postgres    false    215   ?       m           2606    16489    mahasiswa mahasiswa_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);
 B   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_pkey;
       public            postgres    false    214            o           2606    16494    makul makul_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.makul
    ADD CONSTRAINT makul_pkey PRIMARY KEY (sks);
 :   ALTER TABLE ONLY public.makul DROP CONSTRAINT makul_pkey;
       public            postgres    false    215                D   x??-?J???tJ,?,VpI,I??,?M,????????K)J?t,????+x?????q???)F??? ^X%W      ?   X   x?342661???M??+?Sp,??LT?I,J??)?24261????K?HI??N?-(?KWpJ,?H?u??d?s???s??qqq 9?      ?   &   x?p??4?????4?rJ,?,VpI,I?4?????? n??     