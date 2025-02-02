PGDMP                  	    |            accounts    16.4    16.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    86131    accounts    DATABASE     �   CREATE DATABASE accounts WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Kingdom.1252';
    DROP DATABASE accounts;
                postgres    false            �            1259    89127    accounts    TABLE     �   CREATE TABLE public.accounts (
    id bigint NOT NULL,
    account_number character varying(255) NOT NULL,
    account_type integer,
    balance numeric(38,2),
    client_id bigint,
    status boolean DEFAULT true NOT NULL
);
    DROP TABLE public.accounts;
       public         heap    nttdata    false            �            1259    89140    accounts_seq    SEQUENCE     u   CREATE SEQUENCE public.accounts_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.accounts_seq;
       public          nttdata    false            �            1259    89133    transactions    TABLE     �   CREATE TABLE public.transactions (
    id bigint NOT NULL,
    amount numeric(38,2),
    date timestamp(6) without time zone,
    final_balance numeric(38,2),
    initial_balance numeric(38,2),
    type integer,
    account_id bigint
);
     DROP TABLE public.transactions;
       public         heap    nttdata    false            �            1259    89141    transactions_seq    SEQUENCE     y   CREATE SEQUENCE public.transactions_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.transactions_seq;
       public          nttdata    false            �          0    89127    accounts 
   TABLE DATA           `   COPY public.accounts (id, account_number, account_type, balance, client_id, status) FROM stdin;
    public          nttdata    false    215   �       �          0    89133    transactions 
   TABLE DATA           j   COPY public.transactions (id, amount, date, final_balance, initial_balance, type, account_id) FROM stdin;
    public          nttdata    false    216   �       �           0    0    accounts_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.accounts_seq', 2, true);
          public          nttdata    false    217            �           0    0    transactions_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.transactions_seq', 10, true);
          public          nttdata    false    218            W           2606    89132    accounts accounts_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.accounts DROP CONSTRAINT accounts_pkey;
       public            nttdata    false    215            [           2606    89137    transactions transactions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_pkey;
       public            nttdata    false    216            Y           2606    89139 $   accounts uk6kplolsdtr3slnvx97xsy2kc8 
   CONSTRAINT     i   ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT uk6kplolsdtr3slnvx97xsy2kc8 UNIQUE (account_number);
 N   ALTER TABLE ONLY public.accounts DROP CONSTRAINT uk6kplolsdtr3slnvx97xsy2kc8;
       public            nttdata    false    215            \           2606    89142 (   transactions fk20w7wsg13u9srbq3bd7chfxdh    FK CONSTRAINT     �   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT fk20w7wsg13u9srbq3bd7chfxdh FOREIGN KEY (account_id) REFERENCES public.accounts(id);
 R   ALTER TABLE ONLY public.transactions DROP CONSTRAINT fk20w7wsg13u9srbq3bd7chfxdh;
       public          nttdata    false    216    4695    215            �   8   x���  �w2LURZ�.�����Yr���C���aS��"t��6�6��<;�
$      �   �   x�u��m� �3E���,�������@��c�����Xcj�?$�rZ ��Ȩ��T�@��ƾOo�#�"����鱨D�I��j��9���\Πi�G�"8�hh	˸�գ�C����ڱ�1�Srnr4�G��F��K���zbȋ1M��NRl��|����cBNMe�A��拍of���؋�N��bL�ɇS���zfջb�����8� �Dc�     