PGDMP     8            	         |            puntodeventa    14.7    14.7     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16937    puntodeventa    DATABASE     j   CREATE DATABASE puntodeventa WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE puntodeventa;
                postgres    false            �            1259    16982    producto    TABLE     �   CREATE TABLE public.producto (
    "idProducto" bigint NOT NULL,
    nombre character varying(25) NOT NULL,
    precio numeric(1000,2) NOT NULL,
    descripcion character varying(75) NOT NULL,
    existencias integer NOT NULL
);
    DROP TABLE public.producto;
       public         heap    postgres    false            �            1259    16981    producto_idProducto_seq    SEQUENCE     �   CREATE SEQUENCE public."producto_idProducto_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."producto_idProducto_seq";
       public          postgres    false    210            �           0    0    producto_idProducto_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."producto_idProducto_seq" OWNED BY public.producto."idProducto";
          public          postgres    false    209            \           2604    16985    producto idProducto    DEFAULT     ~   ALTER TABLE ONLY public.producto ALTER COLUMN "idProducto" SET DEFAULT nextval('public."producto_idProducto_seq"'::regclass);
 D   ALTER TABLE public.producto ALTER COLUMN "idProducto" DROP DEFAULT;
       public          postgres    false    209    210    210            �          0    16982    producto 
   TABLE DATA           Z   COPY public.producto ("idProducto", nombre, precio, descripcion, existencias) FROM stdin;
    public          postgres    false    210   n       �           0    0    producto_idProducto_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."producto_idProducto_seq"', 2, true);
          public          postgres    false    209            ^           2606    16987    producto producto_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY ("idProducto");
 @   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
       public            postgres    false    210            �   D   x�3��M̫J�K�4�32��p�
��K2S�c�8�L��8R���@,������DNS�=... !�     