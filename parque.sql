PGDMP                  
    |            parque     16.5 (Ubuntu 16.5-1.pgdg24.04+1)     17.1 (Ubuntu 17.1-1.pgdg24.04+1) ?    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    24768    parque    DATABASE     r   CREATE DATABASE parque WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE parque;
                     postgres    false            �            1259    24770    administracion    TABLE     *  CREATE TABLE public.administracion (
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
       public         heap r       postgres    false            �            1259    24769    administracion_id_admin_seq    SEQUENCE     �   CREATE SEQUENCE public.administracion_id_admin_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.administracion_id_admin_seq;
       public               postgres    false    216            �           0    0    administracion_id_admin_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.administracion_id_admin_seq OWNED BY public.administracion.id_admin;
          public               postgres    false    215            �            1259    24779    atracciones    TABLE     �   CREATE TABLE public.atracciones (
    id_atraccion integer NOT NULL,
    nombre character varying(100),
    descripcion text,
    ubicacion character varying(100),
    horario character varying(50),
    disponible boolean DEFAULT true
);
    DROP TABLE public.atracciones;
       public         heap r       postgres    false            �            1259    24778    atracciones_id_atraccion_seq    SEQUENCE     �   CREATE SEQUENCE public.atracciones_id_atraccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.atracciones_id_atraccion_seq;
       public               postgres    false    218            �           0    0    atracciones_id_atraccion_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.atracciones_id_atraccion_seq OWNED BY public.atracciones.id_atraccion;
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
       public         heap r       postgres    false            �            1259    24787    calendario_id_evento_seq    SEQUENCE     �   CREATE SEQUENCE public.calendario_id_evento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.calendario_id_evento_seq;
       public               postgres    false    220            �           0    0    calendario_id_evento_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.calendario_id_evento_seq OWNED BY public.calendario.id_evento;
          public               postgres    false    219            �            1259    24804 	   ocupacion    TABLE     �   CREATE TABLE public.ocupacion (
    id_ocupacion integer NOT NULL,
    fecha date,
    ocupacion_diaria integer,
    ocupacion_semanal integer,
    ocupacion_mensual integer,
    id_atraccion integer
);
    DROP TABLE public.ocupacion;
       public         heap r       postgres    false            �            1259    24803    ocupacion_id_ocupacion_seq    SEQUENCE     �   CREATE SEQUENCE public.ocupacion_id_ocupacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.ocupacion_id_ocupacion_seq;
       public               postgres    false    224            �           0    0    ocupacion_id_ocupacion_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.ocupacion_id_ocupacion_seq OWNED BY public.ocupacion.id_ocupacion;
          public               postgres    false    223            �            1259    24811    promociones    TABLE     �   CREATE TABLE public.promociones (
    id_promocion integer NOT NULL,
    descripcion text,
    fecha_inicio date,
    fecha_fin date,
    descuento numeric(5,2)
);
    DROP TABLE public.promociones;
       public         heap r       postgres    false            �            1259    24810    promociones_id_promocion_seq    SEQUENCE     �   CREATE SEQUENCE public.promociones_id_promocion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.promociones_id_promocion_seq;
       public               postgres    false    226            �           0    0    promociones_id_promocion_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.promociones_id_promocion_seq OWNED BY public.promociones.id_promocion;
          public               postgres    false    225            �            1259    24865    reservaciones    TABLE     �   CREATE TABLE public.reservaciones (
    id_reservacion integer NOT NULL,
    usuario_id integer,
    atraccion_id integer,
    fecha date NOT NULL,
    cantidad_personas integer
);
 !   DROP TABLE public.reservaciones;
       public         heap r       postgres    false            �            1259    24864     reservaciones_id_reservacion_seq    SEQUENCE     �   CREATE SEQUENCE public.reservaciones_id_reservacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.reservaciones_id_reservacion_seq;
       public               postgres    false    228            �           0    0     reservaciones_id_reservacion_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.reservaciones_id_reservacion_seq OWNED BY public.reservaciones.id_reservacion;
          public               postgres    false    227            �            1259    24797    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    usuario character varying(50),
    contrasena character varying(50),
    telefono character varying(15),
    correo character varying(100)
);
    DROP TABLE public.usuarios;
       public         heap r       postgres    false            �            1259    24796    usuarios_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.usuarios_id_usuario_seq;
       public               postgres    false    222            �           0    0    usuarios_id_usuario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;
          public               postgres    false    221            �           2604    24773    administracion id_admin    DEFAULT     �   ALTER TABLE ONLY public.administracion ALTER COLUMN id_admin SET DEFAULT nextval('public.administracion_id_admin_seq'::regclass);
 F   ALTER TABLE public.administracion ALTER COLUMN id_admin DROP DEFAULT;
       public               postgres    false    215    216    216            �           2604    24782    atracciones id_atraccion    DEFAULT     �   ALTER TABLE ONLY public.atracciones ALTER COLUMN id_atraccion SET DEFAULT nextval('public.atracciones_id_atraccion_seq'::regclass);
 G   ALTER TABLE public.atracciones ALTER COLUMN id_atraccion DROP DEFAULT;
       public               postgres    false    218    217    218            �           2604    24791    calendario id_evento    DEFAULT     |   ALTER TABLE ONLY public.calendario ALTER COLUMN id_evento SET DEFAULT nextval('public.calendario_id_evento_seq'::regclass);
 C   ALTER TABLE public.calendario ALTER COLUMN id_evento DROP DEFAULT;
       public               postgres    false    219    220    220            �           2604    24807    ocupacion id_ocupacion    DEFAULT     �   ALTER TABLE ONLY public.ocupacion ALTER COLUMN id_ocupacion SET DEFAULT nextval('public.ocupacion_id_ocupacion_seq'::regclass);
 E   ALTER TABLE public.ocupacion ALTER COLUMN id_ocupacion DROP DEFAULT;
       public               postgres    false    224    223    224            �           2604    24814    promociones id_promocion    DEFAULT     �   ALTER TABLE ONLY public.promociones ALTER COLUMN id_promocion SET DEFAULT nextval('public.promociones_id_promocion_seq'::regclass);
 G   ALTER TABLE public.promociones ALTER COLUMN id_promocion DROP DEFAULT;
       public               postgres    false    225    226    226            �           2604    24868    reservaciones id_reservacion    DEFAULT     �   ALTER TABLE ONLY public.reservaciones ALTER COLUMN id_reservacion SET DEFAULT nextval('public.reservaciones_id_reservacion_seq'::regclass);
 K   ALTER TABLE public.reservaciones ALTER COLUMN id_reservacion DROP DEFAULT;
       public               postgres    false    227    228    228            �           2604    24800    usuarios id_usuario    DEFAULT     z   ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);
 B   ALTER TABLE public.usuarios ALTER COLUMN id_usuario DROP DEFAULT;
       public               postgres    false    221    222    222            �          0    24770    administracion 
   TABLE DATA           t   COPY public.administracion (id_admin, nombre, email, telefono, rol, permisos, id_atraccion, contrasena) FROM stdin;
    public               postgres    false    216   �N       �          0    24779    atracciones 
   TABLE DATA           h   COPY public.atracciones (id_atraccion, nombre, descripcion, ubicacion, horario, disponible) FROM stdin;
    public               postgres    false    218   DO       �          0    24788 
   calendario 
   TABLE DATA           n   COPY public.calendario (id_evento, nombre_evento, fecha, descripcion, id_atraccion, id_promocion) FROM stdin;
    public               postgres    false    220   �Q       �          0    24804 	   ocupacion 
   TABLE DATA           ~   COPY public.ocupacion (id_ocupacion, fecha, ocupacion_diaria, ocupacion_semanal, ocupacion_mensual, id_atraccion) FROM stdin;
    public               postgres    false    224   �Q       �          0    24811    promociones 
   TABLE DATA           d   COPY public.promociones (id_promocion, descripcion, fecha_inicio, fecha_fin, descuento) FROM stdin;
    public               postgres    false    226   �Q       �          0    24865    reservaciones 
   TABLE DATA           k   COPY public.reservaciones (id_reservacion, usuario_id, atraccion_id, fecha, cantidad_personas) FROM stdin;
    public               postgres    false    228   �R       �          0    24797    usuarios 
   TABLE DATA           U   COPY public.usuarios (id_usuario, usuario, contrasena, telefono, correo) FROM stdin;
    public               postgres    false    222   S       �           0    0    administracion_id_admin_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.administracion_id_admin_seq', 1, true);
          public               postgres    false    215            �           0    0    atracciones_id_atraccion_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.atracciones_id_atraccion_seq', 10, true);
          public               postgres    false    217            �           0    0    calendario_id_evento_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.calendario_id_evento_seq', 1, false);
          public               postgres    false    219            �           0    0    ocupacion_id_ocupacion_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.ocupacion_id_ocupacion_seq', 1, false);
          public               postgres    false    223            �           0    0    promociones_id_promocion_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.promociones_id_promocion_seq', 10, true);
          public               postgres    false    225            �           0    0     reservaciones_id_reservacion_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.reservaciones_id_reservacion_seq', 5, true);
          public               postgres    false    227            �           0    0    usuarios_id_usuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 2, true);
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
       public                 postgres    false    220                       2606    24809    ocupacion ocupacion_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.ocupacion
    ADD CONSTRAINT ocupacion_pkey PRIMARY KEY (id_ocupacion);
 B   ALTER TABLE ONLY public.ocupacion DROP CONSTRAINT ocupacion_pkey;
       public                 postgres    false    224                       2606    24818    promociones promociones_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.promociones
    ADD CONSTRAINT promociones_pkey PRIMARY KEY (id_promocion);
 F   ALTER TABLE ONLY public.promociones DROP CONSTRAINT promociones_pkey;
       public                 postgres    false    226            
           2606    24870     reservaciones reservaciones_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.reservaciones
    ADD CONSTRAINT reservaciones_pkey PRIMARY KEY (id_reservacion);
 J   ALTER TABLE ONLY public.reservaciones DROP CONSTRAINT reservaciones_pkey;
       public                 postgres    false    228                       2606    24802    usuarios usuarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public                 postgres    false    222            �           1259    24826    idx_administracion_id_atraccion    INDEX     b   CREATE INDEX idx_administracion_id_atraccion ON public.administracion USING btree (id_atraccion);
 3   DROP INDEX public.idx_administracion_id_atraccion;
       public                 postgres    false    216                        1259    24827    idx_calendario_id_atraccion    INDEX     Z   CREATE INDEX idx_calendario_id_atraccion ON public.calendario USING btree (id_atraccion);
 /   DROP INDEX public.idx_calendario_id_atraccion;
       public                 postgres    false    220                       1259    24828    idx_calendario_id_promocion    INDEX     Z   CREATE INDEX idx_calendario_id_promocion ON public.calendario USING btree (id_promocion);
 /   DROP INDEX public.idx_calendario_id_promocion;
       public                 postgres    false    220                       1259    24829    idx_ocupacion_id_atraccion    INDEX     X   CREATE INDEX idx_ocupacion_id_atraccion ON public.ocupacion USING btree (id_atraccion);
 .   DROP INDEX public.idx_ocupacion_id_atraccion;
       public                 postgres    false    224                       2606    24832 -   administracion fk_administracion_id_atraccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.administracion
    ADD CONSTRAINT fk_administracion_id_atraccion FOREIGN KEY (id_atraccion) REFERENCES public.atracciones(id_atraccion);
 W   ALTER TABLE ONLY public.administracion DROP CONSTRAINT fk_administracion_id_atraccion;
       public               postgres    false    216    218    3325                       2606    24837 %   calendario fk_calendario_id_atraccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.calendario
    ADD CONSTRAINT fk_calendario_id_atraccion FOREIGN KEY (id_atraccion) REFERENCES public.atracciones(id_atraccion);
 O   ALTER TABLE ONLY public.calendario DROP CONSTRAINT fk_calendario_id_atraccion;
       public               postgres    false    218    3325    220                       2606    24842 %   calendario fk_calendario_id_promocion    FK CONSTRAINT     �   ALTER TABLE ONLY public.calendario
    ADD CONSTRAINT fk_calendario_id_promocion FOREIGN KEY (id_promocion) REFERENCES public.promociones(id_promocion);
 O   ALTER TABLE ONLY public.calendario DROP CONSTRAINT fk_calendario_id_promocion;
       public               postgres    false    3336    226    220                       2606    24847 #   ocupacion fk_ocupacion_id_atraccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.ocupacion
    ADD CONSTRAINT fk_ocupacion_id_atraccion FOREIGN KEY (id_atraccion) REFERENCES public.atracciones(id_atraccion);
 M   ALTER TABLE ONLY public.ocupacion DROP CONSTRAINT fk_ocupacion_id_atraccion;
       public               postgres    false    224    218    3325                       2606    24876 -   reservaciones reservaciones_atraccion_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservaciones
    ADD CONSTRAINT reservaciones_atraccion_id_fkey FOREIGN KEY (atraccion_id) REFERENCES public.atracciones(id_atraccion);
 W   ALTER TABLE ONLY public.reservaciones DROP CONSTRAINT reservaciones_atraccion_id_fkey;
       public               postgres    false    218    228    3325                       2606    24871 +   reservaciones reservaciones_usuario_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservaciones
    ADD CONSTRAINT reservaciones_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id_usuario);
 U   ALTER TABLE ONLY public.reservaciones DROP CONSTRAINT reservaciones_usuario_id_fkey;
       public               postgres    false    3331    222    228            �   j   x�3��*M�S8��(��3��+H2R+srR���s9MMMu��M8݁Ry%���E��E:
9��@21��41'�
$�������X�i�Y����onbd����� t4"      �   C  x�}S�n�0={�� �M)�冺�+��p@\��d�ʱ��Yn|J�z������n��S��̼����>Q�L����7I�&�ٓ��7�o���K�TuO�]��uO�MՎ4����T_��b�X�_��~���O[�'��-����k+iS�Y�mġ!�{���g9��WGM.�Bq�6>	�k#�ېSE1�_��oԚ��j�����'��-�B�nZ%�,�)�'Ƭ�������*N�� 9AN�%�a�	�SK���rlص?�>w�E�Nl"Y��s|�sC4�U�8E1�E�@) m�ǝ5!�e�1�T�a�,`�=F�00�� ں_¤���h�\�i���&�_�<Gȵ��oI���䁂+�Z�R[px,��̡|b��{����CN2�S7V���ԗ����zr zg��%L�����=�g#��?��j�X^x=k�E�WږL�樎}f�ȼP�a���m'�vtS<��,�	|��C��&��9���g�X�K�Y�������aI�kJa�U��Y_g]��k���_G:ȅ1A�#��{[�[�;t���r�X�!.<      �      x������ � �      �      x������ � �      �   �   x����J�0Eׯ_��,;$�Qg=�bePp��ن�0M$i��q�R����I���'����:0�*@rY����x�(�漐P���gR���إǁ�&��Up�KbZͶ����j���I{��]�!��6i�@�)���uJ��?Oa��l��{2�~&/U���u�1������ds�NHɄZ��N�&j;Y��e65m��]�?�'��6��//�<��g
?����@��      �   ;   x�3���4�4202�54�54�@�&A3��1�J��	H�M�)���8�=... T:�      �   x   x�-�A
�0 ���/�&M,���
�ĥ�n��i���~L�3j�]n�u�,��n��>o���!�xp~�'3��<�l�b<���nb˾�
��a��B8�8��F����A�e�����j�1_{)�     