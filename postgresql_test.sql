PGDMP         (                {            postgres    13.10    13.10 h    t           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            u           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            v           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            w           1262    13730    postgres    DATABASE     S   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE postgres;
                nadrean    false            x           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   nadrean    false    3447            �            1259    16387    accounts    TABLE     E  CREATE TABLE public.accounts (
    user_id integer NOT NULL,
    full_name character varying(50) NOT NULL,
    email character varying(255) NOT NULL,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.accounts;
       public         heap    shadow    false            �            1259    16385    accounts_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.accounts_user_id_seq;
       public          shadow    false    201            y           0    0    accounts_user_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.accounts_user_id_seq OWNED BY public.accounts.user_id;
          public          shadow    false    200            �            1259    16399 
   core_store    TABLE     �   CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
    DROP TABLE public.core_store;
       public         heap    shadow    false            �            1259    16397    core_store_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.core_store_id_seq;
       public          shadow    false    203            z           0    0    core_store_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;
          public          shadow    false    202            �            1259    16535    i18n_locales    TABLE     6  CREATE TABLE public.i18n_locales (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
     DROP TABLE public.i18n_locales;
       public         heap    shadow    false            �            1259    16533    i18n_locales_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.i18n_locales_id_seq;
       public          shadow    false    225            {           0    0    i18n_locales_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.i18n_locales_id_seq OWNED BY public.i18n_locales.id;
          public          shadow    false    224            �            1259    16451    strapi_administrator    TABLE     �  CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean,
    "preferedLanguage" character varying(255)
);
 (   DROP TABLE public.strapi_administrator;
       public         heap    shadow    false            �            1259    16449    strapi_administrator_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.strapi_administrator_id_seq;
       public          shadow    false    211            |           0    0    strapi_administrator_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;
          public          shadow    false    210            �            1259    16421    strapi_permission    TABLE     W  CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 %   DROP TABLE public.strapi_permission;
       public         heap    shadow    false            �            1259    16419    strapi_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_permission_id_seq;
       public          shadow    false    207            }           0    0    strapi_permission_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;
          public          shadow    false    206            �            1259    16434    strapi_role    TABLE     ?  CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.strapi_role;
       public         heap    shadow    false            �            1259    16432    strapi_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.strapi_role_id_seq;
       public          shadow    false    209            ~           0    0    strapi_role_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;
          public          shadow    false    208            �            1259    16464    strapi_users_roles    TABLE     n   CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);
 &   DROP TABLE public.strapi_users_roles;
       public         heap    shadow    false            �            1259    16462    strapi_users_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.strapi_users_roles_id_seq;
       public          shadow    false    213                       0    0    strapi_users_roles_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;
          public          shadow    false    212            �            1259    16410    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    shadow    false            �            1259    16408    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          shadow    false    205            �           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          shadow    false    204            �            1259    16511    upload_file    TABLE     �  CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.upload_file;
       public         heap    shadow    false            �            1259    16509    upload_file_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.upload_file_id_seq;
       public          shadow    false    221            �           0    0    upload_file_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;
          public          shadow    false    220            �            1259    16524    upload_file_morph    TABLE     �   CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);
 %   DROP TABLE public.upload_file_morph;
       public         heap    shadow    false            �            1259    16522    upload_file_morph_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.upload_file_morph_id_seq;
       public          shadow    false    223            �           0    0    upload_file_morph_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;
          public          shadow    false    222            �            1259    16472    users-permissions_permission    TABLE     Y  CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);
 2   DROP TABLE public."users-permissions_permission";
       public         heap    shadow    false            �            1259    16470 #   users-permissions_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."users-permissions_permission_id_seq";
       public          shadow    false    215            �           0    0 #   users-permissions_permission_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;
          public          shadow    false    214            �            1259    16483    users-permissions_role    TABLE     �   CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);
 ,   DROP TABLE public."users-permissions_role";
       public         heap    shadow    false            �            1259    16481    users-permissions_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_role_id_seq";
       public          shadow    false    217            �           0    0    users-permissions_role_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;
          public          shadow    false    216            �            1259    16496    users-permissions_user    TABLE     B  CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 ,   DROP TABLE public."users-permissions_user";
       public         heap    shadow    false            �            1259    16494    users-permissions_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_user_id_seq";
       public          shadow    false    219            �           0    0    users-permissions_user_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;
          public          shadow    false    218            �           2604    16390    accounts user_id    DEFAULT     t   ALTER TABLE ONLY public.accounts ALTER COLUMN user_id SET DEFAULT nextval('public.accounts_user_id_seq'::regclass);
 ?   ALTER TABLE public.accounts ALTER COLUMN user_id DROP DEFAULT;
       public          shadow    false    201    200    201            �           2604    16402    core_store id    DEFAULT     n   ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);
 <   ALTER TABLE public.core_store ALTER COLUMN id DROP DEFAULT;
       public          shadow    false    203    202    203            �           2604    16538    i18n_locales id    DEFAULT     r   ALTER TABLE ONLY public.i18n_locales ALTER COLUMN id SET DEFAULT nextval('public.i18n_locales_id_seq'::regclass);
 >   ALTER TABLE public.i18n_locales ALTER COLUMN id DROP DEFAULT;
       public          shadow    false    225    224    225            �           2604    16454    strapi_administrator id    DEFAULT     �   ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);
 F   ALTER TABLE public.strapi_administrator ALTER COLUMN id DROP DEFAULT;
       public          shadow    false    210    211    211            �           2604    16424    strapi_permission id    DEFAULT     |   ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);
 C   ALTER TABLE public.strapi_permission ALTER COLUMN id DROP DEFAULT;
       public          shadow    false    207    206    207            �           2604    16437    strapi_role id    DEFAULT     p   ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);
 =   ALTER TABLE public.strapi_role ALTER COLUMN id DROP DEFAULT;
       public          shadow    false    209    208    209            �           2604    16467    strapi_users_roles id    DEFAULT     ~   ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);
 D   ALTER TABLE public.strapi_users_roles ALTER COLUMN id DROP DEFAULT;
       public          shadow    false    212    213    213            �           2604    16413    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          shadow    false    204    205    205            �           2604    16514    upload_file id    DEFAULT     p   ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);
 =   ALTER TABLE public.upload_file ALTER COLUMN id DROP DEFAULT;
       public          shadow    false    221    220    221            �           2604    16527    upload_file_morph id    DEFAULT     |   ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);
 C   ALTER TABLE public.upload_file_morph ALTER COLUMN id DROP DEFAULT;
       public          shadow    false    223    222    223            �           2604    16475    users-permissions_permission id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);
 P   ALTER TABLE public."users-permissions_permission" ALTER COLUMN id DROP DEFAULT;
       public          shadow    false    214    215    215            �           2604    16486    users-permissions_role id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_role" ALTER COLUMN id DROP DEFAULT;
       public          shadow    false    216    217    217            �           2604    16499    users-permissions_user id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_user" ALTER COLUMN id DROP DEFAULT;
       public          shadow    false    219    218    219            Y          0    16387    accounts 
   TABLE DATA           {   COPY public.accounts (user_id, full_name, email, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          shadow    false    201   �       [          0    16399 
   core_store 
   TABLE DATA           L   COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
    public          shadow    false    203   h�       q          0    16535    i18n_locales 
   TABLE DATA           f   COPY public.i18n_locales (id, name, code, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          shadow    false    225   ,�       c          0    16451    strapi_administrator 
   TABLE DATA           �   COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked, "preferedLanguage") FROM stdin;
    public          shadow    false    211   {�       _          0    16421    strapi_permission 
   TABLE DATA           v   COPY public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) FROM stdin;
    public          shadow    false    207   �       a          0    16434    strapi_role 
   TABLE DATA           Z   COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
    public          shadow    false    209   Y�       e          0    16464    strapi_users_roles 
   TABLE DATA           B   COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
    public          shadow    false    213   ;�       ]          0    16410    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          shadow    false    205   ^�       m          0    16511    upload_file 
   TABLE DATA           �   COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          shadow    false    221   {�       o          0    16524    upload_file_morph 
   TABLE DATA           i   COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
    public          shadow    false    223   ��       g          0    16472    users-permissions_permission 
   TABLE DATA           �   COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
    public          shadow    false    215   ��       i          0    16483    users-permissions_role 
   TABLE DATA           g   COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
    public          shadow    false    217   ?�       k          0    16496    users-permissions_user 
   TABLE DATA           �   COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          shadow    false    219   ��       �           0    0    accounts_user_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.accounts_user_id_seq', 1, false);
          public          shadow    false    200            �           0    0    core_store_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.core_store_id_seq', 27, true);
          public          shadow    false    202            �           0    0    i18n_locales_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.i18n_locales_id_seq', 1, true);
          public          shadow    false    224            �           0    0    strapi_administrator_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);
          public          shadow    false    210            �           0    0    strapi_permission_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_permission_id_seq', 99, true);
          public          shadow    false    206            �           0    0    strapi_role_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);
          public          shadow    false    208            �           0    0    strapi_users_roles_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 1, true);
          public          shadow    false    212            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          shadow    false    204            �           0    0    upload_file_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.upload_file_id_seq', 1, false);
          public          shadow    false    220            �           0    0    upload_file_morph_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 1, false);
          public          shadow    false    222            �           0    0 #   users-permissions_permission_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 198, true);
          public          shadow    false    214            �           0    0    users-permissions_role_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);
          public          shadow    false    216            �           0    0    users-permissions_user_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 1, false);
          public          shadow    false    218            �           2606    16396    accounts accounts_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.accounts DROP CONSTRAINT accounts_email_key;
       public            shadow    false    201            �           2606    16392    accounts accounts_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (user_id);
 @   ALTER TABLE ONLY public.accounts DROP CONSTRAINT accounts_pkey;
       public            shadow    false    201            �           2606    16394    accounts accounts_username_key 
   CONSTRAINT     ^   ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_username_key UNIQUE (full_name);
 H   ALTER TABLE ONLY public.accounts DROP CONSTRAINT accounts_username_key;
       public            shadow    false    201            �           2606    16407    core_store core_store_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.core_store DROP CONSTRAINT core_store_pkey;
       public            shadow    false    203            �           2606    16547 %   i18n_locales i18n_locales_code_unique 
   CONSTRAINT     `   ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_code_unique UNIQUE (code);
 O   ALTER TABLE ONLY public.i18n_locales DROP CONSTRAINT i18n_locales_code_unique;
       public            shadow    false    225            �           2606    16545    i18n_locales i18n_locales_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.i18n_locales DROP CONSTRAINT i18n_locales_pkey;
       public            shadow    false    225            �           2606    16461 6   strapi_administrator strapi_administrator_email_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);
 `   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_email_unique;
       public            shadow    false    211            �           2606    16459 .   strapi_administrator strapi_administrator_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_pkey;
       public            shadow    false    211            �           2606    16431 (   strapi_permission strapi_permission_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_permission DROP CONSTRAINT strapi_permission_pkey;
       public            shadow    false    207            �           2606    16448 #   strapi_role strapi_role_code_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);
 M   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_code_unique;
       public            shadow    false    209            �           2606    16446 #   strapi_role strapi_role_name_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);
 M   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_name_unique;
       public            shadow    false    209            �           2606    16444    strapi_role strapi_role_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_pkey;
       public            shadow    false    209            �           2606    16469 *   strapi_users_roles strapi_users_roles_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.strapi_users_roles DROP CONSTRAINT strapi_users_roles_pkey;
       public            shadow    false    213            �           2606    16418 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            shadow    false    205            �           2606    16532 (   upload_file_morph upload_file_morph_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.upload_file_morph DROP CONSTRAINT upload_file_morph_pkey;
       public            shadow    false    223            �           2606    16521    upload_file upload_file_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.upload_file DROP CONSTRAINT upload_file_pkey;
       public            shadow    false    221            �           2606    16480 >   users-permissions_permission users-permissions_permission_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);
 l   ALTER TABLE ONLY public."users-permissions_permission" DROP CONSTRAINT "users-permissions_permission_pkey";
       public            shadow    false    215            �           2606    16491 2   users-permissions_role users-permissions_role_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_pkey";
       public            shadow    false    217            �           2606    16493 9   users-permissions_role users-permissions_role_type_unique 
   CONSTRAINT     x   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);
 g   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_type_unique";
       public            shadow    false    217            �           2606    16506 2   users-permissions_user users-permissions_user_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_pkey";
       public            shadow    false    219            �           2606    16508 =   users-permissions_user users-permissions_user_username_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);
 k   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_username_unique";
       public            shadow    false    219            Y   G  x����n�0����H�?GrNuS�m�&@��\�aѦ$CR�O�%�������\.7�cW�8�|0��99s[v�(Io��&Y�K��$�O��$.�G9^���	�58�0�S|�e-ơ���d�J/5�`�O2�
�Wp�Mc��+ȱ�dZ�D�g'+�1���cw�M�����[]�	�(F��Uv;�/U��`=	d��?�O뜕��)J����s{(�����+E���&z׸���43�i�R�B+Lz׍����Fi���um��*#��EX7F��b��hZ��bw(N�/ҟ���`C{�]��+EȰ���h�����V{�b�a��{�2;E�u?Ʊ6gݑ���[�]�u2]���S��;�RO�֫�B��O����,M��`�"�x���Za;Y�i'q��"�a��͡��hu��zs��9�y�Pz���o��$�R�^�:ytgn��"l��ƾjY���A�7�b$z�+;w��%����S�S�kq��$�S�%�ގN�Z��Y�;"�#��\��c���Г)���m���5�HZ�C)=:�Ԙ��j���:�x�], u�      [   �  x��ko�6��+���`o��.�޹i��K�<�8$��+q�<k��뺅�������MJ#��]�nj h��p8�<I�F��yB�iB�Ӳ*ȊM&gt����r���fI4���~�iJ���K��fꀰl�G�ߣL� # �e\�G���~��%�U�%-+�\��9IK
ͫ�>a�+�YE��`I2rB�h�J6K���a��=��,MP@�$UU�Y]�Ғ�@?9?��p"�"u�W�׊?]P�K���%�Z��G2$N�,�SJ���b/��x��K�w�¦-��,a-Z��M=��NY�Xط����>��{�%M���~�*�?>^7WI,�m�u?Z���N�E49���.�E�����cUQs*�Z0iktF���R1��0�'sR����J	�,��{Ϊ"O��P���P�/�4[�7I`-�"��i	[N&u	:t`%�#R�	~�J:���la�ZB,ٖ9_>Q+�)�����V���ݦ/�*OY|�Q��k�mH����+�-y�Į������okB�����R��[� ��h3z}c6U��0�K���%j� VA߈��Q�����7�P��u�~��%:�H���^��Z�4����*�Ɋ�&���R�RޘJ���P��$�G�sj�a�˟�h�"=@{d��*�^�M
2���丞��\�B}��c�i�j�D�tI�����=�OCqAĸf	��;����Y^���<
��)�-iu�P��Oi�uj�@Œi����D��7�R�4�O���tHwn�Cd�=(+�okl�0��[���ar���}JqJ���$�]�)�p@D�kV���@�+r�<o��1�"/�s��Ml��0��E�^��j^&F��Jq��!c�y%fa�:���^r��q^+���%�z������D=�WiN�)8�
�����7��m�~#r ��+����� ��"\�����i��j�w���t�@~���ق˱X,&f��\{V�*P0�:b��b_ڡ�()�V%��I��H|
�Z�W��M��|4PI�b����# q]�����=��A����DX�0Zt?�K�I��H'�1�V�_6(���oP	<� GU���7�,Y\�e>�zh8㜟��D��t��*'b��U����k���������˞q,L�H�G�<�����O�ק�î/�d���%�MV4^tNr�T�2�Y�C�	%Aw@�(�)��^j��SAI����)�O2V�=$�n/�Y�F�<���8_bĪ�z���	��J�ބ�i�袳2!5B���c��s�A�=4���I��ƴ�VH���b�E/��>1){�#T� U��#%����H"���-?�nYE�SINM½�i�U9����:�����e$�a}��OJJ�x�>Yo ��X�X}����| ��}��;G�*D��y�m�V�i�&�)���B�S2�ǟ�����7�u��P/59^�ϣ8��\F�Q��4��3B�2�8�6h7i{ƟA�BB[#To����<�>���6�I�;uZ�%����YQVB����.�ʴX�Ͷ���h����t�.��?h�<��1&��y�Y��.m��ؽ;&4�ur=����1��� �{�YUv5nی����4%�D�=:t����9QXKa�^�;'\���q��I|��=��d+��])��hV��n���Z|���<�vm�]�!�����d@B�^���w�m:�!t�Ø��U��{
5��ܫ��C�wF�'�AB'~դ�uj���6�ƭ�w�՞Eh�I��	�+� Y����nBd�Ak-����U��;ѺBL=XXh��G6��N5��w��(�4yA��|1j;�0�ؐ� [Ehn��Zwd\�I)�"3[;<s�c!Z�x�V_}B�ut.����A���wf�@�ڮ-�w��8ڴqw2�G?HN�m�;�G#�/sF�T����G�!(n�t�C:�M����L,�"�XR-0C�1�����d���G�2�u��+��Fh(��jd�ep���)Q6�ȟ��q�.���i��`^2�4��d�ڤl�&\��)�A��ݔ�+�ْJ����ѳw8}Ƕu��Ң���f�iUm�Pj�oB�T(}[�!)wG	3������k�4������?^oƣ6�Cwo�������6b��Z�t|�l�&�A�6�����~_���;�N2��c��r&u��]V���6����i�L���=� {��~��aK����!i��y*�E>HX^����e����%�5�<y���!�~��џ3����=�x.Ƙ�tS-�������,g����ȁ�du�z��x��m_�;���S�?\�~I�I����'Q!
�o,�C�ʎ�<�7�ƜWo�esy��'/��";�+�EyIN�R)���'�ng�7e����ۜ!x�!�����r�����2�|��Ů�����nZ�o��k�Jw�H����$"��$5T�7=J�˘�Ό)�^@��6��qe�0�?�~f�	,�R�	H���ص�M_^�]�u��/'&�	SV�R��=�0�X���A�X�H�K鉣k��#��Ӟ<��_m��Z�r��O�ӎ���k��l}�V��%i�iNuP��-]�JAPM�d!܁q�S��t�@w�}���Woq�u on�^����;_y��4V�4��z�07i��/��M��}5�.�cO��+�v}�Ea��<a�oH|?�~|-^�6���UpS�[2���O8}[gH�i�S$�;(�0E�[��l$�Ш?��k��P'v]	�Fn�q��m�B�F�áVh��������Ȗ��;�kS�00a%��\�{�+�\��qԔ-)ϳ8���E.
)2�x��yGotL2���,07?(�*=��܋�Y]��bt���j# ��Fn1PZ�����շ?��$"UR���4/���3�o)�GdB! ?�����2�8���I���?��Fg�ѿ QL�,&t��9�4?�8��}FU>+�3QX�ן3z�����o�ʯ>��߾�������d��?�̑��=A��nx/h���N��q^gըA��91s��y^�
�@K�3�sbA֔��B'W]�;Ru�ƣ�`VZr:�Yp�	^�����N�;�B��g����$W�ukI�$�i��0�]�WJZ-�jZ��)e���Z45u��Va� 0a��(��q���v/��tRwVO�DE�Z��L&D��?L��!ɋN[`����g*�v`K�5�������
��Y6S[i��^s��2��Od�:�K��=�9pc��!�3'Ji�n��ϧb�Ϊ�6�O.N;�ϙ�x�d�]�ÀE�t�w�S�����Q��Y5ą���֝�����u���w�O�j��L���Л%�7�]ۀ�NZCx�O��J��b�6���	R����RWnb��|�/6��bÍN��.u�����J��rk%�����w�]��[͘d�OP�>S6�7)Ъ<W���ƹ�%�t�H�%���j���ߢHrX}�?�8 zd���--��ٷ��"bH� �5բ͚�$�k�2�+ �g?0@nvQ�аBd��W�w�+��?�#+ʫ�@+��?�W��>_�%	���S$��)��ڹ��ZF`�xťw��E$��n��.�p��tq��1[�4�������k~Si��0�|��{?���{��K���B�����uKא߻w��
��@      q   ?   x�3�t�K��,�P�H���L���!##c]c]#KC+#C+#S=Scms<R\1z\\\ ,%k      c   x   x�3�J���tL������,��R�R��s3s���s9U�UT2����*��-�"�<=R���R�
|K�#=�]���L˜LÒ��"��},LRA�Q	�H������ ��#�      _   F  x��Y�n�H}��
k^wA��G��aߒ(jC{��i{�h�}�2f���I�(�0�u�O�:U�&�Ju�\7I�U��[K�>�u����ç=P�2�c�O(Ih�z���?�~��H�E`�4�mܴ�^�����F"�@A�$-u+u�B���]�o�Z�f?��4�n�J�E�4y�wxs�zzʥʚS���4�Ѣ��?N����|�3Y��~+/e�ϵ�w����?�E��m����.D�Cܿ���U�^�ǺT���0Aַ�L����-�$�n](y����Pt�Gm(�g�S�9=m��
�PB�TDV������PTn�t�w�?���A]��V�(`��!��|����1PxA��<���z�z1���c���t�@�8��O�_��1Ɠ�`�#���+}��!�\0�T��\��Lvx��>��~h@�d�o"D����{C��e���l)a���}�`��$��Yh��&3����Ĳ q2u�B��VJ�ҽ���O+�����E���-�N��"�� �' ��Xo`,H�O#���ܐ���S���b����rn��*��T�cK��e�{���F�97��)�yn�+�GY����.�����oJ��5�x�����,�_�"\Q0�4�2{�fRI�=�b��,�&Ѽ��/eyA�|�~L����/�S@d9u���.��LEZ*%�a�N�Zv0�箖�s._�b�8>�<�pKM�7��Eo�-�XOO�BVH�Z�3�1��2���bCH,ޒXQ�Z�����x-��./��L���αe��) �7gd�T��vxN�!lfjtw���ȡ��7G���Y	5�R�������@�7|CBƓxu�<() �T+�z���r���{������"K" 32�q���JK[��Yp�f��ʴ+z2F¼�K|?�C��
y�i<gEaEs��Z�jy�Z�?.�%[\YI��P�߾�s�1�ܯ�z��΅�����B��Q�͗�Ĉ�uZށ M���G���t�e��~��KJ���y�r�M����8sM_8J�s(�Z4���� s�sF�Z3�[3��g����x�[i�      a   �   x�}�1�� Ek8��+[[��.EN�m�Y��HX���/1�*)�n�}i��N|�"���y�)��~�W�3��3��pG�7�g���r����q+��}��F���;�Uj�R�Hjq�.���P�*�[ui[���x|"��7s�E �� \!���"3�=)=�J����)�{�RX�
ߤJ�&�0�o!�|ٝ�A�֯���R�?��}�      e      x�3�4�4����� �X      ]      x������ � �      m      x������ � �      o      x������ � �      g   z  x��Z�r�8�Mߥ;! /�Op��L	d��l���	A��d��3��P}�-}��iU];�v|��my1�}nS�u׾�?73DUo��DQG���_o�6�45_g�
L_�����Z[��m�����b)�}���p��t-�T�--��K�`}� �z�]����?�i��_�#Q�NM=|��&l�g����r�1'@�����#С��t;�3P�D�-�
כ�|;�$�G+�Q_���`���Rd4�-^�Ӟ�w �8���'��9Z���Z8��Ϙ��7��"�8Eԓ��`�K�W� ���Z�`Ʊn/d+	GH��eK	�,W����$�_S[��ԐU�O��v��!����b����@�M�����OEK �TP�Ek�OV~џ�<!�L�H�ےR?�2,���sT}����R~�uS���-��Ҟ ���n�bZcYl�~i؅���. v$i�~���l��ϋ{3��ۜ��J��a�:�̘�b'�[�t}|}� 18���XK��b��Ȯ䰡c�����?A���M�s���O�`;�s߁���
,���gP8�"s�I��>[�F�s�EP��$F�EKv����L��V8X4�Iܶ��\8>���0:��B%x�j��hni��5Güvb��p�.�N��zs� �?�H��$�hB����o������0��+�y��ۃ�d���~3�����i�\wOH���/}ì"e�3{*I����]��9��9p����Q��#��P��
��9ʋ,�㢍�{o��ll��p2���ѽ�Ȥ(Éx�L�W��o��Rt˦9�՗[oc{N��y��1��W��'�MDSU��"�w%��Z�!�ivǙ
ml�!��s����lY2ޓ��v����VV�`~L3qpJ�2���On��O:���?ۮ}���X��קi\��	]�<ۙ�(u�u�z�lǹDȏ��t���]O�'�h.R�}p"
_)}�$���#M��[��e�,���[\���	H���[,��"y� ЛbJ�{}s�6�x�W,FNg��%V�����b)�m�l~l���KU=f���K��<��K��s�Q�Q��M����aǴ��aǔ���$�0��AF�]X������� ^�����L��ޅQO���wP����������].Q��Ab'���%1�rq��9i@	L9x=Xb�T�ّ��4��V !o�����xEAu��ߠ����浐���.�}��t���X�Eṏc�6a���q�W�W4P���1"υ*�y�8�xτ�xC?2��&�Zbt����3�/�%�˩��R ت����G�հ���U��bU���ӚP���F�c`�s�܅ـ������@:`�r>�t Ø�r����4�T��r8����7U�a&w��<���2��z�i���\z��e�7������jQ?�mat��{�t�Vdѹ���=��*铅��GGs<1��Ϗ��{��0p��'��!��y�ë�����6�����$b�A��b˖
�ދ�����t�?���k��Ge
�6��O7t}�WI�R[WI�M��M�ę�GJ1���NI�n��T,�X)���;�D��jo�:�w��j�Z�CJ��a��	�������?#���      i   X   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"��D\F��I9��8�)��fPDĄ=... ��3O      k      x������ � �     