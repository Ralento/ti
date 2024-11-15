PGDMP  5                
    |            parque     16.5 (Ubuntu 16.5-1.pgdg24.04+1)     17.1 (Ubuntu 17.1-1.pgdg24.04+1) C    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    24768    parque    DATABASE     r   CREATE DATABASE parque WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE parque;
                     postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            �            1259    24770    administracion    TABLE     *  CREATE TABLE public.administracion (
    id_admin integer NOT NULL,
    nombre character varying(50),
    email character varying(100),
    telefono character varying(15),
    rol character varying(50),
    permisos text,
    id_atraccion integer,
    contrasena character varying(255) NOT NULL
);
 "   DROP TABLE public.administracion;
       public         heap r       postgres    false    4            �            1259    24769    administracion_id_admin_seq    SEQUENCE     �   CREATE SEQUENCE public.administracion_id_admin_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.administracion_id_admin_seq;
       public               postgres    false    216    4            �           0    0    administracion_id_admin_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.administracion_id_admin_seq OWNED BY public.administracion.id_admin;
          public               postgres    false    215            �            1259    24779    atracciones    TABLE     �   CREATE TABLE public.atracciones (
    id_atraccion integer NOT NULL,
    nombre character varying(100),
    descripcion text,
    ubicacion character varying(100),
    horario character varying(50)
);
    DROP TABLE public.atracciones;
       public         heap r       postgres    false    4            �            1259    24778    atracciones_id_atraccion_seq    SEQUENCE     �   CREATE SEQUENCE public.atracciones_id_atraccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.atracciones_id_atraccion_seq;
       public               postgres    false    218    4            �           0    0    atracciones_id_atraccion_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.atracciones_id_atraccion_seq OWNED BY public.atracciones.id_atraccion;
          public               postgres    false    217            �            1259    24788 
   calendario    TABLE     �   CREATE TABLE public.calendario (
    id_evento integer NOT NULL,
    nombre_evento character varying(100),
    fecha date,
    descripcion text,
    id_atraccion integer,
    id_promocion integer
);
    DROP TABLE public.calendario;
       public         heap r       postgres    false    4            �            1259    24787    calendario_id_evento_seq    SEQUENCE     �   CREATE SEQUENCE public.calendario_id_evento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.calendario_id_evento_seq;
       public               postgres    false    220    4            �           0    0    calendario_id_evento_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.calendario_id_evento_seq OWNED BY public.calendario.id_evento;
          public               postgres    false    219            �            1259    24804 	   ocupacion    TABLE     �   CREATE TABLE public.ocupacion (
    id_ocupacion integer NOT NULL,
    fecha date,
    ocupacion_diaria integer,
    ocupacion_semanal integer,
    ocupacion_mensual integer,
    id_atraccion integer
);
    DROP TABLE public.ocupacion;
       public         heap r       postgres    false    4            �            1259    24803    ocupacion_id_ocupacion_seq    SEQUENCE     �   CREATE SEQUENCE public.ocupacion_id_ocupacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.ocupacion_id_ocupacion_seq;
       public               postgres    false    224    4            �           0    0    ocupacion_id_ocupacion_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.ocupacion_id_ocupacion_seq OWNED BY public.ocupacion.id_ocupacion;
          public               postgres    false    223            �            1259    24811    promociones    TABLE     �   CREATE TABLE public.promociones (
    id_promocion integer NOT NULL,
    descripcion text,
    fecha_inicio date,
    fecha_fin date,
    descuento numeric(5,2)
);
    DROP TABLE public.promociones;
       public         heap r       postgres    false    4            �            1259    24810    promociones_id_promocion_seq    SEQUENCE     �   CREATE SEQUENCE public.promociones_id_promocion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.promociones_id_promocion_seq;
       public               postgres    false    226    4            �           0    0    promociones_id_promocion_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.promociones_id_promocion_seq OWNED BY public.promociones.id_promocion;
          public               postgres    false    225            �            1259    24820    reservaciones    TABLE     �   CREATE TABLE public.reservaciones (
    id_reservacion integer NOT NULL,
    id_cliente integer,
    id_atraccion integer,
    fecha_reservacion date,
    cantidad_personas integer
);
 !   DROP TABLE public.reservaciones;
       public         heap r       postgres    false    4            �            1259    24819     reservaciones_id_reservacion_seq    SEQUENCE     �   CREATE SEQUENCE public.reservaciones_id_reservacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.reservaciones_id_reservacion_seq;
       public               postgres    false    228    4            �           0    0     reservaciones_id_reservacion_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.reservaciones_id_reservacion_seq OWNED BY public.reservaciones.id_reservacion;
          public               postgres    false    227            �            1259    24797    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    usuario character varying(50),
    contrasena character varying(50),
    telefono character varying(15),
    correo character varying(100)
);
    DROP TABLE public.usuarios;
       public         heap r       postgres    false    4            �            1259    24796    usuarios_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.usuarios_id_usuario_seq;
       public               postgres    false    4    222            �           0    0    usuarios_id_usuario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;
          public               postgres    false    221            �           2604    24773    administracion id_admin    DEFAULT     �   ALTER TABLE ONLY public.administracion ALTER COLUMN id_admin SET DEFAULT nextval('public.administracion_id_admin_seq'::regclass);
 F   ALTER TABLE public.administracion ALTER COLUMN id_admin DROP DEFAULT;
       public               postgres    false    216    215    216            �           2604    24782    atracciones id_atraccion    DEFAULT     �   ALTER TABLE ONLY public.atracciones ALTER COLUMN id_atraccion SET DEFAULT nextval('public.atracciones_id_atraccion_seq'::regclass);
 G   ALTER TABLE public.atracciones ALTER COLUMN id_atraccion DROP DEFAULT;
       public               postgres    false    217    218    218            �           2604    24791    calendario id_evento    DEFAULT     |   ALTER TABLE ONLY public.calendario ALTER COLUMN id_evento SET DEFAULT nextval('public.calendario_id_evento_seq'::regclass);
 C   ALTER TABLE public.calendario ALTER COLUMN id_evento DROP DEFAULT;
       public               postgres    false    220    219    220            �           2604    24807    ocupacion id_ocupacion    DEFAULT     �   ALTER TABLE ONLY public.ocupacion ALTER COLUMN id_ocupacion SET DEFAULT nextval('public.ocupacion_id_ocupacion_seq'::regclass);
 E   ALTER TABLE public.ocupacion ALTER COLUMN id_ocupacion DROP DEFAULT;
       public               postgres    false    224    223    224            �           2604    24814    promociones id_promocion    DEFAULT     �   ALTER TABLE ONLY public.promociones ALTER COLUMN id_promocion SET DEFAULT nextval('public.promociones_id_promocion_seq'::regclass);
 G   ALTER TABLE public.promociones ALTER COLUMN id_promocion DROP DEFAULT;
       public               postgres    false    226    225    226            �           2604    24823    reservaciones id_reservacion    DEFAULT     �   ALTER TABLE ONLY public.reservaciones ALTER COLUMN id_reservacion SET DEFAULT nextval('public.reservaciones_id_reservacion_seq'::regclass);
 K   ALTER TABLE public.reservaciones ALTER COLUMN id_reservacion DROP DEFAULT;
       public               postgres    false    228    227    228            �           2604    24800    usuarios id_usuario    DEFAULT     z   ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);
 B   ALTER TABLE public.usuarios ALTER COLUMN id_usuario DROP DEFAULT;
       public               postgres    false    221    222    222            �          0    24770    administracion 
   TABLE DATA           t   COPY public.administracion (id_admin, nombre, email, telefono, rol, permisos, id_atraccion, contrasena) FROM stdin;
    public               postgres    false    216   �R       �          0    24779    atracciones 
   TABLE DATA           \   COPY public.atracciones (id_atraccion, nombre, descripcion, ubicacion, horario) FROM stdin;
    public               postgres    false    218   IS       �          0    24788 
   calendario 
   TABLE DATA           n   COPY public.calendario (id_evento, nombre_evento, fecha, descripcion, id_atraccion, id_promocion) FROM stdin;
    public               postgres    false    220   �U       �          0    24804 	   ocupacion 
   TABLE DATA           ~   COPY public.ocupacion (id_ocupacion, fecha, ocupacion_diaria, ocupacion_semanal, ocupacion_mensual, id_atraccion) FROM stdin;
    public               postgres    false    224   �U       �          0    24811    promociones 
   TABLE DATA           d   COPY public.promociones (id_promocion, descripcion, fecha_inicio, fecha_fin, descuento) FROM stdin;
    public               postgres    false    226   �U       �          0    24820    reservaciones 
   TABLE DATA           w   COPY public.reservaciones (id_reservacion, id_cliente, id_atraccion, fecha_reservacion, cantidad_personas) FROM stdin;
    public               postgres    false    228   �V       �          0    24797    usuarios 
   TABLE DATA           U   COPY public.usuarios (id_usuario, usuario, contrasena, telefono, correo) FROM stdin;
    public               postgres    false    222   �V       �           0    0    administracion_id_admin_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.administracion_id_admin_seq', 1, true);
          public               postgres    false    215            �           0    0    atracciones_id_atraccion_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.atracciones_id_atraccion_seq', 10, true);
          public               postgres    false    217            �           0    0    calendario_id_evento_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.calendario_id_evento_seq', 1, false);
          public               postgres    false    219            �           0    0    ocupacion_id_ocupacion_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.ocupacion_id_ocupacion_seq', 1, false);
          public               postgres    false    223            �           0    0    promociones_id_promocion_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.promociones_id_promocion_seq', 10, true);
          public               postgres    false    225            �           0    0     reservaciones_id_reservacion_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.reservaciones_id_reservacion_seq', 1, false);
          public               postgres    false    227            �           0    0    usuarios_id_usuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 1, true);
          public               postgres    false    221            �           2606    24777 "   administracion administracion_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.administracion
    ADD CONSTRAINT administracion_pkey PRIMARY KEY (id_admin);
 L   ALTER TABLE ONLY public.administracion DROP CONSTRAINT administracion_pkey;
       public                 postgres    false    216            �           2606    24786    atracciones atracciones_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.atracciones
    ADD CONSTRAINT atracciones_pkey PRIMARY KEY (id_atraccion);
 F   ALTER TABLE ONLY public.atracciones DROP CONSTRAINT atracciones_pkey;
       public                 postgres    false    218            �           2606    24795    calendario calendario_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.calendario
    ADD CONSTRAINT calendario_pkey PRIMARY KEY (id_evento);
 D   ALTER TABLE ONLY public.calendario DROP CONSTRAINT calendario_pkey;
       public                 postgres    false    220                       2606    24809    ocupacion ocupacion_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.ocupacion
    ADD CONSTRAINT ocupacion_pkey PRIMARY KEY (id_ocupacion);
 B   ALTER TABLE ONLY public.ocupacion DROP CONSTRAINT ocupacion_pkey;
       public                 postgres    false    224                       2606    24818    promociones promociones_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.promociones
    ADD CONSTRAINT promociones_pkey PRIMARY KEY (id_promocion);
 F   ALTER TABLE ONLY public.promociones DROP CONSTRAINT promociones_pkey;
       public                 postgres    false    226                       2606    24825     reservaciones reservaciones_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.reservaciones
    ADD CONSTRAINT reservaciones_pkey PRIMARY KEY (id_reservacion);
 J   ALTER TABLE ONLY public.reservaciones DROP CONSTRAINT reservaciones_pkey;
       public                 postgres    false    228                       2606    24802    usuarios usuarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public                 postgres    false    222            �           1259    24826    idx_administracion_id_atraccion    INDEX     b   CREATE INDEX idx_administracion_id_atraccion ON public.administracion USING btree (id_atraccion);
 3   DROP INDEX public.idx_administracion_id_atraccion;
       public                 postgres    false    216            �           1259    24827    idx_calendario_id_atraccion    INDEX     Z   CREATE INDEX idx_calendario_id_atraccion ON public.calendario USING btree (id_atraccion);
 /   DROP INDEX public.idx_calendario_id_atraccion;
       public                 postgres    false    220                        1259    24828    idx_calendario_id_promocion    INDEX     Z   CREATE INDEX idx_calendario_id_promocion ON public.calendario USING btree (id_promocion);
 /   DROP INDEX public.idx_calendario_id_promocion;
       public                 postgres    false    220                       1259    24829    idx_ocupacion_id_atraccion    INDEX     X   CREATE INDEX idx_ocupacion_id_atraccion ON public.ocupacion USING btree (id_atraccion);
 .   DROP INDEX public.idx_ocupacion_id_atraccion;
       public                 postgres    false    224                       1259    24831    idx_reservaciones_id_atraccion    INDEX     `   CREATE INDEX idx_reservaciones_id_atraccion ON public.reservaciones USING btree (id_atraccion);
 2   DROP INDEX public.idx_reservaciones_id_atraccion;
       public                 postgres    false    228            	           1259    24830    idx_reservaciones_id_cliente    INDEX     \   CREATE INDEX idx_reservaciones_id_cliente ON public.reservaciones USING btree (id_cliente);
 0   DROP INDEX public.idx_reservaciones_id_cliente;
       public                 postgres    false    228                       2606    24832 -   administracion fk_administracion_id_atraccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.administracion
    ADD CONSTRAINT fk_administracion_id_atraccion FOREIGN KEY (id_atraccion) REFERENCES public.atracciones(id_atraccion);
 W   ALTER TABLE ONLY public.administracion DROP CONSTRAINT fk_administracion_id_atraccion;
       public               postgres    false    218    3324    216                       2606    24837 %   calendario fk_calendario_id_atraccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.calendario
    ADD CONSTRAINT fk_calendario_id_atraccion FOREIGN KEY (id_atraccion) REFERENCES public.atracciones(id_atraccion);
 O   ALTER TABLE ONLY public.calendario DROP CONSTRAINT fk_calendario_id_atraccion;
       public               postgres    false    3324    218    220                       2606    24842 %   calendario fk_calendario_id_promocion    FK CONSTRAINT     �   ALTER TABLE ONLY public.calendario
    ADD CONSTRAINT fk_calendario_id_promocion FOREIGN KEY (id_promocion) REFERENCES public.promociones(id_promocion);
 O   ALTER TABLE ONLY public.calendario DROP CONSTRAINT fk_calendario_id_promocion;
       public               postgres    false    226    3335    220                       2606    24847 #   ocupacion fk_ocupacion_id_atraccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.ocupacion
    ADD CONSTRAINT fk_ocupacion_id_atraccion FOREIGN KEY (id_atraccion) REFERENCES public.atracciones(id_atraccion);
 M   ALTER TABLE ONLY public.ocupacion DROP CONSTRAINT fk_ocupacion_id_atraccion;
       public               postgres    false    224    218    3324                       2606    24857 +   reservaciones fk_reservaciones_id_atraccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservaciones
    ADD CONSTRAINT fk_reservaciones_id_atraccion FOREIGN KEY (id_atraccion) REFERENCES public.atracciones(id_atraccion);
 U   ALTER TABLE ONLY public.reservaciones DROP CONSTRAINT fk_reservaciones_id_atraccion;
       public               postgres    false    228    3324    218                       2606    24852 )   reservaciones fk_reservaciones_id_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservaciones
    ADD CONSTRAINT fk_reservaciones_id_cliente FOREIGN KEY (id_cliente) REFERENCES public.usuarios(id_usuario);
 S   ALTER TABLE ONLY public.reservaciones DROP CONSTRAINT fk_reservaciones_id_cliente;
       public               postgres    false    222    228    3330            �   j   x�3��*M�S8��(��3��+H2R+srR���s9MMMu��M8݁Ry%���E��E:
9��@21��41'�
$�������X�i�Y����onbd����� t4"      �   A  x�}S�n1<{�� ��B�e7'VBQ���t<=G{h{V���#�">a~��<vG(�4v������P��uϤ��Hz�kR�=�zz���e]r��{"�BԮ{�m∨v���䬧��P��1�����J���z8~�.N�u�%�����k+iS�]�mĥ!�{���w'ꫣ&�Z��T��е�mȩ�8`_��oԚ��j�����'��-�BFnZ\%�
$�)�#������V��*N�ƀ8!N�%�a�	ғJ���nlص?�>w�%�Nl"Y��s|�sC4�UP��x�,�B��v�;kB��L1����Y��{��a v��u��I[_!Ѻ�R�*g=�M(��&x��io�ߒS�O:���`�X2W����[i�,1�0��y�n���/-��n��Qwt�ޘK�Ɗ����)�g#��?ƿ�����[t{�m���g�j�33�D��H�[��b�?X�㙗d�%��}y�X�F��A�x���������ߊ����A��v�[��)��Ǟz�b�u��H�0#Ȕa  ��5���+'��-��_�zZ      �      x������ � �      �      x������ � �      �   �   x����J�0Eׯ_��,;$�Qg=�bePp��ن�0M$i��q�R����I���'����:0�*@rY����x�(�漐P���gR���إǁ�&��Up�KbZͶ����j���I{��]�!��6i�@�)���uJ��?Oa��l��{2�~&/U���u�1������ds�NHɄZ��N�&j;Y��e65m��]�?�'��6��//�<��g
?����@��      �      x������ � �      �   G   x�3��+M-ˏ/-.M,���L��+)J,N=�1185��(����T���؄��!�"1� 'U/9?�+F��� `�n     