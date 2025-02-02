PGDMP  8                	    |            clients    16.4    16.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    86132    clients    DATABASE     �   CREATE DATABASE clients WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Kingdom.1252';
    DROP DATABASE clients;
                postgres    false            �            1259    89102    clients    TABLE     �   CREATE TABLE public.clients (
    client_id character varying(255) NOT NULL,
    password character varying(255),
    status boolean DEFAULT true NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public.clients;
       public         heap    nttdata    false            �            1259    89110    users    TABLE       CREATE TABLE public.users (
    id bigint NOT NULL,
    address character varying(255),
    age integer,
    gender character varying(255),
    identification character varying(255) NOT NULL,
    name character varying(255),
    phone_number character varying(255)
);
    DROP TABLE public.users;
       public         heap    nttdata    false            �            1259    89121 	   users_seq    SEQUENCE     r   CREATE SEQUENCE public.users_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.users_seq;
       public          nttdata    false            �          0    89102    clients 
   TABLE DATA           B   COPY public.clients (client_id, password, status, id) FROM stdin;
    public          nttdata    false    215   E       �          0    89110    users 
   TABLE DATA           ]   COPY public.users (id, address, age, gender, identification, name, phone_number) FROM stdin;
    public          nttdata    false    216   �       �           0    0 	   users_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('public.users_seq', 2, true);
          public          nttdata    false    217            V           2606    89109    clients clients_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_pkey;
       public            nttdata    false    215            X           2606    89118 #   clients uk2og8x0i6lngghy4cqupje9dki 
   CONSTRAINT     c   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT uk2og8x0i6lngghy4cqupje9dki UNIQUE (client_id);
 M   ALTER TABLE ONLY public.clients DROP CONSTRAINT uk2og8x0i6lngghy4cqupje9dki;
       public            nttdata    false    215            Z           2606    89120 !   users uk88ud7ehaqhr1hexbhnpmph9wy 
   CONSTRAINT     f   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk88ud7ehaqhr1hexbhnpmph9wy UNIQUE (identification);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT uk88ud7ehaqhr1hexbhnpmph9wy;
       public            nttdata    false    216            \           2606    89116    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            nttdata    false    216            ]           2606    89122 #   clients fk1hgwdp9vl25xl9i7s354sifey    FK CONSTRAINT     }   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT fk1hgwdp9vl25xl9i7s354sifey FOREIGN KEY (id) REFERENCES public.users(id);
 M   ALTER TABLE ONLY public.clients DROP CONSTRAINT fk1hgwdp9vl25xl9i7s354sifey;
       public          nttdata    false    4700    216    215            �   �   x�5��
�0 �k��f��zi*��R�ȢQg-B����� ��������**䪎��Ӟ�\{N�H�D�Mݏ��Z0h{/1�+��A�a��9��Aё���P��qo]���$6~2�dG�8�����)J�����S-mmk=[����� "�.�      �   ^   x�U�1
�  �9��/(IԨ���tq(���ۥ��~q�^2P�#ϲ�� �#k-�1�sk0�����1�k��1���׼!6��sWJ���     