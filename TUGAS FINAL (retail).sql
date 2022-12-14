PGDMP     .            	        z            retail    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16675    retail    DATABASE     ?   CREATE DATABASE retail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE retail;
                postgres    false            ?            1259    16681    barang    TABLE     ?   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(50) NOT NULL,
    harga_barang integer,
    stok_barang integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    16696 
   pembayaran    TABLE     ?   CREATE TABLE public.pembayaran (
    id_pembayaran integer NOT NULL,
    tanggal_bayar date,
    total_pembayaran integer,
    id_transaksi integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            ?            1259    16686    pembeli    TABLE     ?   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(50) NOT NULL,
    jenis_kelamin character(3),
    no_telp character(15),
    alamat character varying(20)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            ?            1259    16676    supplier    TABLE     ?   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(50) NOT NULL,
    nomor_telpon character(30),
    alamat character varying(100)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            ?            1259    16691 	   transaksi    TABLE     ?   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    id_barang integer,
    id_pembeli integer,
    tanggal date,
    keterangan character varying(100)
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false                      0    16681    barang 
   TABLE DATA           `   COPY public.barang (id_barang, nama_barang, harga_barang, stok_barang, id_supplier) FROM stdin;
    public          postgres    false    215                    0    16696 
   pembayaran 
   TABLE DATA           b   COPY public.pembayaran (id_pembayaran, tanggal_bayar, total_pembayaran, id_transaksi) FROM stdin;
    public          postgres    false    218   #                 0    16686    pembeli 
   TABLE DATA           [   COPY public.pembeli (id_pembeli, nama_pembeli, jenis_kelamin, no_telp, alamat) FROM stdin;
    public          postgres    false    216   ?                 0    16676    supplier 
   TABLE DATA           T   COPY public.supplier (id_supplier, nama_supplier, nomor_telpon, alamat) FROM stdin;
    public          postgres    false    214   ?                 0    16691 	   transaksi 
   TABLE DATA           ]   COPY public.transaksi (id_transaksi, id_barang, id_pembeli, tanggal, keterangan) FROM stdin;
    public          postgres    false    217           w           2606    16685    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    215            }           2606    16700    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (id_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    218            y           2606    16690    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    216            u           2606    16680    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    214            {           2606    16695    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    217            ~           2606    16701    supplier fk_barang_supplier    FK CONSTRAINT     ?   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT fk_barang_supplier FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.supplier DROP CONSTRAINT fk_barang_supplier;
       public          postgres    false    214    214    3189                       2606    16706    barang fk_pembayaran_barang    FK CONSTRAINT     ?   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT fk_pembayaran_barang FOREIGN KEY (id_barang) REFERENCES public.barang(id_barang) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.barang DROP CONSTRAINT fk_pembayaran_barang;
       public          postgres    false    215    3191    215            ?           2606    16716 "   pembayaran fk_transaksi_pembayaran    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT fk_transaksi_pembayaran FOREIGN KEY (id_transaksi) REFERENCES public.transaksi(id_transaksi) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT fk_transaksi_pembayaran;
       public          postgres    false    3195    218    217            ?           2606    16711    transaksi fk_transaksi_pembeli    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_transaksi_pembeli FOREIGN KEY (id_pembeli) REFERENCES public.pembeli(id_pembeli) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_transaksi_pembeli;
       public          postgres    false    3193    216    217                 x?5?]?? ???)z??/?.?Bڵ??UJV??ט4Rx?όAt?^	??????A??k9????0Lm?[.5??od?[???F??????5?:?x??Yn?9??,?6???ŷTf?ϬB??,X?Tz???L;?&paޏ&??5\?F??>?LG?|?5W~?????c???y5)g:Eݳ-LT??J??њ7<?u???[g? #?t??ʜ??mBo?V?/?S=y?o{???????????n????R??e?         ?   x?M??!Cѳ?%ˀ?^?Ap0??g?hips??#????B&;x???^?C^?5??M??-?#???{z?S?H?*??>???)??????|?/D?];x??>yk??)?Oܢ??-?y?V???}??????a?$M?}K)??>~           x?m?Kn?0??p
Na??]? ?????l??????F?[6?㟗h?~ ??%?u?l??rn榦o??ʩJ???X?6?+???`Wn/?X?٩??2??A?
?gde?-?b???$?Mr[ͯ?Eh?-BM?O????+G??0?l!Šq/????????L;?1~鵨.?b@?y??Zv?w?'5e??<?45ZP?-5J????p-'??SfL??'?ݠ+:-??&1???e?+???#F???+!m?dÃ}???;-R?v???q???           x?u?]n? ?g]?+h?_|#Ђ??I???2?4x;???0sg??U?S?R0Q7?hF&????
??k???l?9Hb??4H? ?aiv??????:A?1]?fV3??t??w????G?ZR?I?ҤiV?h1둖(V??Ԕ;???c??g 's?	?C???F??:c??30??r?$??j??+C#U??2`?[?:xe???BP?*??S+Nc0?ь៩a??-?{?z??N9L???????d???	?US??(???(??         ?   x?E?;? E???????I?I????ѓ?9c?????*??(???\_߿?뛊?-@!??E!??z6??^@ko? ?????C4??kP D?&??K?d?̋?
?? ?y???Ӑ?h?E?F?DWxW0?5?P????p??aQ^?????~4?7F%??2#:?;?)??ܚlF     