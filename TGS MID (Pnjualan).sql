PGDMP     (    !            
    z            pnjualan    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16537    pnjualan    DATABASE     h   CREATE DATABASE pnjualan WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE pnjualan;
                postgres    false            ?            1259    16553    baju    TABLE     ?   CREATE TABLE public.baju (
    harga integer NOT NULL,
    ukuran character varying(30),
    nama_pelanggan character varying(30)
);
    DROP TABLE public.baju;
       public         heap    postgres    false            ?            1259    16552    baju_harga_seq    SEQUENCE     ?   CREATE SEQUENCE public.baju_harga_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.baju_harga_seq;
       public          postgres    false    214                       0    0    baju_harga_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.baju_harga_seq OWNED BY public.baju.harga;
          public          postgres    false    213            ?            1259    16539    celana    TABLE     ?   CREATE TABLE public.celana (
    harga integer NOT NULL,
    ukuran character varying(30),
    nama_pelanggan character varying(30)
);
    DROP TABLE public.celana;
       public         heap    postgres    false            ?            1259    16538    celana_harga_seq    SEQUENCE     ?   CREATE SEQUENCE public.celana_harga_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.celana_harga_seq;
       public          postgres    false    210                       0    0    celana_harga_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.celana_harga_seq OWNED BY public.celana.harga;
          public          postgres    false    209            ?            1259    16546    sepatu    TABLE     ?   CREATE TABLE public.sepatu (
    harga integer NOT NULL,
    ukuran character varying(30),
    nama_pemesan character varying(30)
);
    DROP TABLE public.sepatu;
       public         heap    postgres    false            ?            1259    16545    sepatu_harga_seq    SEQUENCE     ?   CREATE SEQUENCE public.sepatu_harga_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.sepatu_harga_seq;
       public          postgres    false    212                       0    0    sepatu_harga_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.sepatu_harga_seq OWNED BY public.sepatu.harga;
          public          postgres    false    211            h           2604    16556 
   baju harga    DEFAULT     h   ALTER TABLE ONLY public.baju ALTER COLUMN harga SET DEFAULT nextval('public.baju_harga_seq'::regclass);
 9   ALTER TABLE public.baju ALTER COLUMN harga DROP DEFAULT;
       public          postgres    false    213    214    214            f           2604    16542    celana harga    DEFAULT     l   ALTER TABLE ONLY public.celana ALTER COLUMN harga SET DEFAULT nextval('public.celana_harga_seq'::regclass);
 ;   ALTER TABLE public.celana ALTER COLUMN harga DROP DEFAULT;
       public          postgres    false    210    209    210            g           2604    16549    sepatu harga    DEFAULT     l   ALTER TABLE ONLY public.sepatu ALTER COLUMN harga SET DEFAULT nextval('public.sepatu_harga_seq'::regclass);
 ;   ALTER TABLE public.sepatu ALTER COLUMN harga DROP DEFAULT;
       public          postgres    false    212    211    212            ?          0    16553    baju 
   TABLE DATA           =   COPY public.baju (harga, ukuran, nama_pelanggan) FROM stdin;
    public          postgres    false    214   ?       ?          0    16539    celana 
   TABLE DATA           ?   COPY public.celana (harga, ukuran, nama_pelanggan) FROM stdin;
    public          postgres    false    210          ?          0    16546    sepatu 
   TABLE DATA           =   COPY public.sepatu (harga, ukuran, nama_pemesan) FROM stdin;
    public          postgres    false    212   K       	           0    0    baju_harga_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.baju_harga_seq', 1, false);
          public          postgres    false    213            
           0    0    celana_harga_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.celana_harga_seq', 1, false);
          public          postgres    false    209                       0    0    sepatu_harga_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sepatu_harga_seq', 1, false);
          public          postgres    false    211            n           2606    16558    baju baju_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.baju
    ADD CONSTRAINT baju_pkey PRIMARY KEY (harga);
 8   ALTER TABLE ONLY public.baju DROP CONSTRAINT baju_pkey;
       public            postgres    false    214            j           2606    16544    celana celana_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.celana
    ADD CONSTRAINT celana_pkey PRIMARY KEY (harga);
 <   ALTER TABLE ONLY public.celana DROP CONSTRAINT celana_pkey;
       public            postgres    false    210            l           2606    16551    sepatu sepatu_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.sepatu
    ADD CONSTRAINT sepatu_pkey PRIMARY KEY (harga);
 <   ALTER TABLE ONLY public.sepatu DROP CONSTRAINT sepatu_pkey;
       public            postgres    false    212            ?   $   x?35500????M??+?Sp,??LT?????? h??      ?   #   x?345 NN??ܼ?<?Ҝ?D?`?=... m?"      ?   $   x??0500????M??+?Sp,??LT?????? h??     