PGDMP                     
    z            siakad2    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16540    siakad2    DATABASE     ?   CREATE DATABASE siakad2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE siakad2;
                postgres    false            ?            1259    16556    dosen1    TABLE     x   CREATE TABLE public.dosen1 (
    namadosen character varying(30) NOT NULL,
    namamk character varying(30) NOT NULL
);
    DROP TABLE public.dosen1;
       public         heap    postgres    false            ?            1259    16544    mahasiswaaa    TABLE     ?   CREATE TABLE public.mahasiswaaa (
    nim integer NOT NULL,
    nama character varying(30) NOT NULL,
    alamat character varying(40) NOT NULL
);
    DROP TABLE public.mahasiswaaa;
       public         heap    postgres    false            ?            1259    16550    matkul1    TABLE     g   CREATE TABLE public.matkul1 (
    namamk character varying(30) NOT NULL,
    nilai integer NOT NULL
);
    DROP TABLE public.matkul1;
       public         heap    postgres    false                       0    16556    dosen1 
   TABLE DATA           3   COPY public.dosen1 (namadosen, namamk) FROM stdin;
    public          postgres    false    216   K       ?          0    16544    mahasiswaaa 
   TABLE DATA           8   COPY public.mahasiswaaa (nim, nama, alamat) FROM stdin;
    public          postgres    false    214   ?       ?          0    16550    matkul1 
   TABLE DATA           0   COPY public.matkul1 (namamk, nilai) FROM stdin;
    public          postgres    false    215   ?       m           2606    16548    mahasiswaaa mahasiswaaa_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.mahasiswaaa
    ADD CONSTRAINT mahasiswaaa_pkey PRIMARY KEY (nim);
 F   ALTER TABLE ONLY public.mahasiswaaa DROP CONSTRAINT mahasiswaaa_pkey;
       public            postgres    false    214            o           2606    16554    matkul1 matkul1_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.matkul1
    ADD CONSTRAINT matkul1_pkey PRIMARY KEY (nilai);
 >   ALTER TABLE ONLY public.matkul1 DROP CONSTRAINT matkul1_pkey;
       public            postgres    false    215                1   x??-?J???tJ,?,VpI,I?r+ML????r?I??p??????? \?      ?   4   x?34615??M??+??I,J??)?241
:??d&s???s??qqq )??      ?      x?p???0?r
??0?????? "     