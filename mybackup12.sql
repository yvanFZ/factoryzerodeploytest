PGDMP     "                    {            postgres    12.14    12.14    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    13318    postgres    DATABASE     ?   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Dutch_Netherlands.1252' LC_CTYPE = 'Dutch_Netherlands.1252';
    DROP DATABASE postgres;
                postgres    false            ?           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3233                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            ?           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    1            ?            1259    16424 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    16422    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    210            ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    209            ?            1259    16434    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    16432    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    212            ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    211            ?            1259    16416    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    16414    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    208            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    207            ?            1259    16583    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    16581    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    228            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    227            ?            1259    16406    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    16404    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    206            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    205            ?            1259    16395    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    16393    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    204            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    203                        1259    16849    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?            1259    16653    mpo_bewoners    TABLE     f  CREATE TABLE public.mpo_bewoners (
    id bigint NOT NULL,
    aanhef_bewoner character varying(30),
    achternaam_bewoner character varying(30),
    voorletters_bewoner character varying(30),
    phone_bewoner character varying(30),
    tussenvoegsels_bewoner character varying(30),
    email_bewoner character varying(254),
    site_id bigint NOT NULL
);
     DROP TABLE public.mpo_bewoners;
       public         heap    postgres    false            ?            1259    16651    mpo_bewoners_id_seq    SEQUENCE     |   CREATE SEQUENCE public.mpo_bewoners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.mpo_bewoners_id_seq;
       public          postgres    false    240            ?           0    0    mpo_bewoners_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.mpo_bewoners_id_seq OWNED BY public.mpo_bewoners.id;
          public          postgres    false    239            ?            1259    16703 
   mpo_boiler    TABLE     T   CREATE TABLE public.mpo_boiler (
    inhoud integer,
    icem_id bigint NOT NULL
);
    DROP TABLE public.mpo_boiler;
       public         heap    postgres    false            ?            1259    16672    mpo_bouwkundig    TABLE     ?   CREATE TABLE public.mpo_bouwkundig (
    "nokHoogte" integer,
    "nokDiepte" integer,
    "typeDak" character varying(30),
    "positieBuitendeel" character varying(30),
    site_id bigint NOT NULL
);
 "   DROP TABLE public.mpo_bouwkundig;
       public         heap    postgres    false            ?            1259    16677    mpo_icem    TABLE     ?  CREATE TABLE public.mpo_icem (
    site_id bigint NOT NULL,
    "icemType" character varying(2),
    "energieModule" character varying(30),
    "positieIcem" character varying(30),
    aansluitingkanalen character varying(30),
    kwh_meter character varying(30),
    "sensoringOptie" character varying(255),
    type_prestatie character varying(30),
    koeling character varying(30),
    "positieWPmodule" character varying(30)
);
    DROP TABLE public.mpo_icem;
       public         heap    postgres    false            ?            1259    16708    mpo_icemdebiet    TABLE     ?   CREATE TABLE public.mpo_icemdebiet (
    stand1 integer,
    stand2 integer,
    stand3 integer,
    stand4 integer,
    stand5 integer,
    icem_id bigint NOT NULL
);
 "   DROP TABLE public.mpo_icemdebiet;
       public         heap    postgres    false            ?            1259    16713    mpo_omvormer    TABLE     ?   CREATE TABLE public.mpo_omvormer (
    "merkOmvormer" character varying(30),
    dakheling integer,
    capaciteit integer,
    owner boolean,
    levering_door boolean,
    levering_datum character varying(30),
    icem_id bigint NOT NULL
);
     DROP TABLE public.mpo_omvormer;
       public         heap    postgres    false            ?            1259    16718    mpo_planning    TABLE     ?   CREATE TABLE public.mpo_planning (
    bouwrouting integer,
    leverdatum character varying(30),
    icem_id bigint NOT NULL
);
     DROP TABLE public.mpo_planning;
       public         heap    postgres    false            ?            1259    16723    mpo_productiebonstatus    TABLE     ?   CREATE TABLE public.mpo_productiebonstatus (
    icem_id bigint NOT NULL,
    productiegereed character varying(30),
    "productieDatum" character varying(30)
);
 *   DROP TABLE public.mpo_productiebonstatus;
       public         heap    postgres    false            ?            1259    16728    mpo_productieexact    TABLE     v   CREATE TABLE public.mpo_productieexact (
    "bomId" integer,
    exactnummer integer,
    icem_id bigint NOT NULL
);
 &   DROP TABLE public.mpo_productieexact;
       public         heap    postgres    false            ?            1259    16733    mpo_semkast    TABLE     a   CREATE TABLE public.mpo_semkast (
    type character varying(30),
    icem_id bigint NOT NULL
);
    DROP TABLE public.mpo_semkast;
       public         heap    postgres    false            ?            1259    16663    mpo_site    TABLE     E  CREATE TABLE public.mpo_site (
    id bigint NOT NULL,
    bouwnr character varying(30),
    blok character varying(30),
    straat character varying(30),
    huisnr character varying(10),
    postcode character varying(10),
    bijzonderheden text,
    koop_huur character varying(30),
    "projectId_id" bigint NOT NULL
);
    DROP TABLE public.mpo_site;
       public         heap    postgres    false            ?            1259    16661    mpo_site_id_seq    SEQUENCE     x   CREATE SEQUENCE public.mpo_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.mpo_site_id_seq;
       public          postgres    false    242            ?           0    0    mpo_site_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.mpo_site_id_seq OWNED BY public.mpo_site.id;
          public          postgres    false    241            ?            1259    16738    mpo_warmtepomp    TABLE     c   CREATE TABLE public.mpo_warmtepomp (
    vermogen double precision,
    icem_id bigint NOT NULL
);
 "   DROP TABLE public.mpo_warmtepomp;
       public         heap    postgres    false            ?            1259    16743    mpo_wtw    TABLE     ?   CREATE TABLE public.mpo_wtw (
    merk character varying(30),
    type character varying(30),
    debiet integer,
    icem_id bigint NOT NULL
);
    DROP TABLE public.mpo_wtw;
       public         heap    postgres    false            ?            1259    16797    opleverrapport_opleverrapport    TABLE     ?  CREATE TABLE public.opleverrapport_opleverrapport (
    id bigint NOT NULL,
    last_edit_datum character varying(30),
    druktest boolean NOT NULL,
    vacumeren boolean NOT NULL,
    datatest_npi_tool boolean NOT NULL,
    pragrammeren_warmtepomp boolean NOT NULL,
    "testHomecontroller" boolean NOT NULL,
    doorvoeren_afgedicht boolean NOT NULL,
    leiding_afgedopt boolean NOT NULL,
    reinigen_module boolean NOT NULL,
    visuele_inspectie_binnenzijde boolean NOT NULL,
    visuele_inspectie_buitenzijde boolean NOT NULL,
    bouwrouting_op_unit boolean NOT NULL,
    transportklarr_gemaakt boolean NOT NULL,
    router boolean NOT NULL,
    poe24v boolean NOT NULL,
    poe48v boolean NOT NULL,
    din_rail boolean NOT NULL,
    utp_kabel_groen boolean NOT NULL,
    utp_kabel_blauw boolean NOT NULL,
    utp_kabel_grijs boolean NOT NULL,
    utp_kabel_zwart boolean NOT NULL,
    boilersensor boolean NOT NULL,
    th1_kabel_display_kabel boolean NOT NULL,
    "homeController_set" boolean NOT NULL,
    omvormer boolean NOT NULL,
    sem_kast boolean NOT NULL,
    kwh_meter boolean NOT NULL,
    p5stekker_omvormer boolean NOT NULL,
    kampstrup_meter_21 boolean NOT NULL,
    landis_gyr_meter boolean NOT NULL,
    wtw boolean NOT NULL,
    soft_encloser boolean NOT NULL,
    tongdy boolean NOT NULL,
    procon boolean NOT NULL,
    antenne boolean NOT NULL,
    afvoer_flexbuis_slang boolean NOT NULL,
    sifon boolean NOT NULL,
    rode_sensor boolean NOT NULL,
    grijs_zwart_sensor boolean NOT NULL,
    aansluitslang_zwart boolean NOT NULL,
    lange_schroeven boolean NOT NULL,
    vilblokjes_oranje boolean NOT NULL,
    flow_sensor boolean NOT NULL,
    doorlock boolean NOT NULL,
    plexiplaat_e_module boolean NOT NULL,
    wielen boolean NOT NULL,
    opleverrapport_definitief boolean NOT NULL,
    opleverrapport_definitief_datum character varying(30),
    author_id bigint NOT NULL,
    project_id bigint NOT NULL,
    site_id bigint NOT NULL
);
 1   DROP TABLE public.opleverrapport_opleverrapport;
       public         heap    postgres    false            ?            1259    16795 $   opleverrapport_opleverrapport_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.opleverrapport_opleverrapport_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.opleverrapport_opleverrapport_id_seq;
       public          postgres    false    255            ?           0    0 $   opleverrapport_opleverrapport_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.opleverrapport_opleverrapport_id_seq OWNED BY public.opleverrapport_opleverrapport.id;
          public          postgres    false    254            ?            1259    16607    project_klant    TABLE       CREATE TABLE public.project_klant (
    id bigint NOT NULL,
    klantnaam character varying(30) NOT NULL,
    plaats character varying(30) NOT NULL,
    land character varying(30) NOT NULL,
    provincie character varying(30) NOT NULL,
    phone character varying(30) NOT NULL
);
 !   DROP TABLE public.project_klant;
       public         heap    postgres    false            ?            1259    16605    project_klant_id_seq    SEQUENCE     }   CREATE SEQUENCE public.project_klant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.project_klant_id_seq;
       public          postgres    false    230            ?           0    0    project_klant_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.project_klant_id_seq OWNED BY public.project_klant.id;
          public          postgres    false    229            ?            1259    16615    project_klantmedewerker    TABLE     9  CREATE TABLE public.project_klantmedewerker (
    id bigint NOT NULL,
    name_medewerker character varying(30) NOT NULL,
    achternaam_medewerker character varying(30) NOT NULL,
    phone character varying(30) NOT NULL,
    functie_medewerker character varying(30) NOT NULL,
    "klantID_id" bigint NOT NULL
);
 +   DROP TABLE public.project_klantmedewerker;
       public         heap    postgres    false            ?            1259    16613    project_klantmedewerker_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.project_klantmedewerker_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.project_klantmedewerker_id_seq;
       public          postgres    false    232            ?           0    0    project_klantmedewerker_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.project_klantmedewerker_id_seq OWNED BY public.project_klantmedewerker.id;
          public          postgres    false    231            ?            1259    16623    project_project    TABLE     x  CREATE TABLE public.project_project (
    id bigint NOT NULL,
    projectnr character varying(30) NOT NULL,
    projectnaam character varying(50) NOT NULL,
    plaats character varying(15) NOT NULL,
    provincie character varying(15) NOT NULL,
    land character varying(15) NOT NULL,
    "projectStatus" character varying(15) NOT NULL,
    offertenr character varying(30) NOT NULL,
    exactnr character varying(30) NOT NULL,
    debiteurnr character varying(30) NOT NULL,
    renovatie_nieuwbouw character varying(15) NOT NULL,
    "selectedProjectleiderAanmelder" integer NOT NULL,
    "selectedWerkvoorbereiderAanmelder" integer NOT NULL,
    "selectedUitvoerderAanmelder" integer NOT NULL,
    "selectedWerkvoorbereiderFz" integer NOT NULL,
    "selectedProjecleiderFz" integer NOT NULL,
    inopdrachtvoor_vloerverwarming character varying(15) NOT NULL,
    onderaannemers_vloerverwarming integer,
    ordernr_onderaannemer_vloerverwarming character varying(15),
    inopdrachtvoor_ventilatieinstallatie character varying(15) NOT NULL,
    onderaannemers_ventilatieinstallatie integer,
    ordernr_onderaannemer_ventilatieinstallatie character varying(15),
    inopdrachtvoor_zonnepanelen character varying(15) NOT NULL,
    onderaannemers_zonnepanelen integer,
    ordernr_onderaannemer_zonnepanelen character varying(15),
    "datumSystemInvoer" character varying(30) NOT NULL,
    "startDatum" character varying(30),
    offertedatum character varying(30),
    "uitlijkDatumOpdrachtIndienWTW" character varying(30),
    "uitlijkDatumOpdrachtAlleenICEM" character varying(30),
    opmerking character varying(255),
    klant_id bigint NOT NULL
);
 #   DROP TABLE public.project_project;
       public         heap    postgres    false            ?            1259    16621    project_project_id_seq    SEQUENCE        CREATE SEQUENCE public.project_project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.project_project_id_seq;
       public          postgres    false    234            ?           0    0    project_project_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.project_project_id_seq OWNED BY public.project_project.id;
          public          postgres    false    233            ?            1259    16636    project_projecticem    TABLE     ?  CREATE TABLE public.project_projecticem (
    id bigint NOT NULL,
    "iNumber" character varying(10) NOT NULL,
    "pNumber" character varying(10) NOT NULL,
    "eNumber" character varying(10) NOT NULL,
    "fNumber" character varying(10) NOT NULL,
    "aNumber" character varying(10) NOT NULL,
    "totaalNumber" character varying(20) NOT NULL,
    "estimatedValue" character varying(20) NOT NULL,
    project_id bigint NOT NULL
);
 '   DROP TABLE public.project_projecticem;
       public         heap    postgres    false            ?            1259    16634    project_projecticem_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.project_projecticem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.project_projecticem_id_seq;
       public          postgres    false    236            ?           0    0    project_projecticem_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.project_projecticem_id_seq OWNED BY public.project_projecticem.id;
          public          postgres    false    235            ?            1259    16644 !   project_vertegenwoordiger_project    TABLE     ?   CREATE TABLE public.project_vertegenwoordiger_project (
    id bigint NOT NULL,
    projectnr character varying(30) NOT NULL,
    vertegenwoordiger_id bigint NOT NULL
);
 5   DROP TABLE public.project_vertegenwoordiger_project;
       public         heap    postgres    false            ?            1259    16642 (   project_vertegenwoordiger_project_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.project_vertegenwoordiger_project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.project_vertegenwoordiger_project_id_seq;
       public          postgres    false    238            ?           0    0 (   project_vertegenwoordiger_project_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.project_vertegenwoordiger_project_id_seq OWNED BY public.project_vertegenwoordiger_project.id;
          public          postgres    false    237                       1259    16861    testrapport_testrapport    TABLE     ?  CREATE TABLE public.testrapport_testrapport (
    id bigint NOT NULL,
    last_edit_datum character varying(30),
    druktest boolean NOT NULL,
    druktest_datum character varying(30),
    luchtest boolean NOT NULL,
    luchtest_datum character varying(30),
    druk_cv character varying(30),
    flow_cv character varying(30),
    standtijd_cv character varying(30),
    druktap character varying(30),
    standtijd_druktap character varying(30),
    npidatatestuitgevoerd boolean NOT NULL,
    npidatatesuitgevoerd_datum character varying(30),
    "programmeerSD_kaart" boolean NOT NULL,
    aanvoertemp integer,
    tijd_legionella character varying(30),
    frame character varying(30),
    sem_gateway character varying(30),
    sem_mac_adres character varying(30),
    warmtepomp_binnen_ftc_unit character varying(30),
    warmtepomp_buiten character varying(30),
    procon character varying(30),
    ventilatie_wtw character varying(30),
    kamstrup_21_rond character varying(30),
    kamstrup_403_landis_t230 character varying(30),
    flowmeter character varying(30),
    display_mac_adres_homecontroller character varying(30),
    boiler character varying(30),
    spinvlies_voldoende boolean NOT NULL,
    bekabeling_voldoende boolean NOT NULL,
    lekvrij_door_blower_door_test boolean NOT NULL,
    spinvlies_zijkanten boolean NOT NULL,
    eindschoonmaak_binnenzijde boolean NOT NULL,
    stikstof_en_vacumeren_module character varying(30),
    stikstof_sterkte_bar character varying(30),
    stikstof_sterkte_standtijd character varying(30),
    vacumeren_module_micron character varying(30),
    vacumeren_module_standtijd character varying(30),
    lekdetectie boolean NOT NULL,
    lekdetectie_datum character varying(30),
    sn_label_op_frame boolean NOT NULL,
    wtw_debieten_control boolean NOT NULL,
    transportlabel_uitgevoerd boolean NOT NULL,
    eindschoonmaak_uitgevoerd boolean NOT NULL,
    transport_gereed boolean NOT NULL,
    transport_gereed_datum character varying(30),
    eindcontrole boolean NOT NULL,
    eindcontrole_datum character varying(30),
    testrapport_definitief boolean NOT NULL,
    testrapport_definitief_datum character varying(30),
    author_id bigint NOT NULL,
    project_id bigint NOT NULL,
    site_id bigint NOT NULL
);
 +   DROP TABLE public.testrapport_testrapport;
       public         heap    postgres    false                       1259    16859    testrapport_testrapport_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.testrapport_testrapport_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.testrapport_testrapport_id_seq;
       public          postgres    false    258            ?           0    0    testrapport_testrapport_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.testrapport_testrapport_id_seq OWNED BY public.testrapport_testrapport.id;
          public          postgres    false    257            ?            1259    16468    users_customuser    TABLE     ?  CREATE TABLE public.users_customuser (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    is_superuser boolean NOT NULL,
    email character varying(254) NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    is_loggedin boolean NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_staff boolean NOT NULL
);
 $   DROP TABLE public.users_customuser;
       public         heap    postgres    false            ?            1259    16478    users_customuser_groups    TABLE     ?   CREATE TABLE public.users_customuser_groups (
    id bigint NOT NULL,
    customuser_id bigint NOT NULL,
    group_id integer NOT NULL
);
 +   DROP TABLE public.users_customuser_groups;
       public         heap    postgres    false            ?            1259    16476    users_customuser_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_customuser_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.users_customuser_groups_id_seq;
       public          postgres    false    216            ?           0    0    users_customuser_groups_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.users_customuser_groups_id_seq OWNED BY public.users_customuser_groups.id;
          public          postgres    false    215            ?            1259    16466    users_customuser_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_customuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.users_customuser_id_seq;
       public          postgres    false    214            ?           0    0    users_customuser_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.users_customuser_id_seq OWNED BY public.users_customuser.id;
          public          postgres    false    213            ?            1259    16486 !   users_customuser_user_permissions    TABLE     ?   CREATE TABLE public.users_customuser_user_permissions (
    id bigint NOT NULL,
    customuser_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 5   DROP TABLE public.users_customuser_user_permissions;
       public         heap    postgres    false            ?            1259    16484 (   users_customuser_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_customuser_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.users_customuser_user_permissions_id_seq;
       public          postgres    false    218            ?           0    0 (   users_customuser_user_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.users_customuser_user_permissions_id_seq OWNED BY public.users_customuser_user_permissions.id;
          public          postgres    false    217            ?            1259    16494    users_functie    TABLE     ?   CREATE TABLE public.users_functie (
    id bigint NOT NULL,
    functie character varying(30) NOT NULL,
    rol_id bigint NOT NULL
);
 !   DROP TABLE public.users_functie;
       public         heap    postgres    false            ?            1259    16492    users_functie_id_seq    SEQUENCE     }   CREATE SEQUENCE public.users_functie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.users_functie_id_seq;
       public          postgres    false    220            ?           0    0    users_functie_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.users_functie_id_seq OWNED BY public.users_functie.id;
          public          postgres    false    219            ?            1259    16502    users_klantwoningbouw    TABLE     |  CREATE TABLE public.users_klantwoningbouw (
    id bigint NOT NULL,
    name character varying(30) NOT NULL,
    phone_no character varying(128) NOT NULL,
    fax_number character varying(128) NOT NULL,
    straat character varying(30) NOT NULL,
    postcode character varying(30) NOT NULL,
    provincie character varying(30) NOT NULL,
    land character varying(30) NOT NULL
);
 )   DROP TABLE public.users_klantwoningbouw;
       public         heap    postgres    false            ?            1259    16500    users_klantwoningbouw_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_klantwoningbouw_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.users_klantwoningbouw_id_seq;
       public          postgres    false    222            ?           0    0    users_klantwoningbouw_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.users_klantwoningbouw_id_seq OWNED BY public.users_klantwoningbouw.id;
          public          postgres    false    221            ?            1259    16521    users_medewerkerprofile    TABLE     ?  CREATE TABLE public.users_medewerkerprofile (
    id bigint NOT NULL,
    voornaam character varying(30) NOT NULL,
    voorletter character varying(1),
    tussenvoegsel character varying(4),
    achternaam character varying(30) NOT NULL,
    geslacht character varying(30) NOT NULL,
    geboortdatum character varying(30) NOT NULL,
    phone_no character varying(128) NOT NULL,
    fax_number character varying(128) NOT NULL,
    functie_id bigint,
    rol_id bigint,
    user_id bigint NOT NULL
);
 +   DROP TABLE public.users_medewerkerprofile;
       public         heap    postgres    false            ?            1259    16519    users_medewerkerprofile_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_medewerkerprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.users_medewerkerprofile_id_seq;
       public          postgres    false    226            ?           0    0    users_medewerkerprofile_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.users_medewerkerprofile_id_seq OWNED BY public.users_medewerkerprofile.id;
          public          postgres    false    225            ?            1259    16510 
   users_role    TABLE     X   CREATE TABLE public.users_role (
    id bigint NOT NULL,
    role_name text NOT NULL
);
    DROP TABLE public.users_role;
       public         heap    postgres    false            ?            1259    16508    users_role_id_seq    SEQUENCE     z   CREATE SEQUENCE public.users_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_role_id_seq;
       public          postgres    false    224            ?           0    0    users_role_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_role_id_seq OWNED BY public.users_role.id;
          public          postgres    false    223            8           2604    16427    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            9           2604    16437    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            7           2604    16419    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    208    208            A           2604    16586    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            6           2604    16409    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    206    206            5           2604    16398    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203    204            H           2604    16656    mpo_bewoners id    DEFAULT     r   ALTER TABLE ONLY public.mpo_bewoners ALTER COLUMN id SET DEFAULT nextval('public.mpo_bewoners_id_seq'::regclass);
 >   ALTER TABLE public.mpo_bewoners ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240            I           2604    16666    mpo_site id    DEFAULT     j   ALTER TABLE ONLY public.mpo_site ALTER COLUMN id SET DEFAULT nextval('public.mpo_site_id_seq'::regclass);
 :   ALTER TABLE public.mpo_site ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241    242            J           2604    16800     opleverrapport_opleverrapport id    DEFAULT     ?   ALTER TABLE ONLY public.opleverrapport_opleverrapport ALTER COLUMN id SET DEFAULT nextval('public.opleverrapport_opleverrapport_id_seq'::regclass);
 O   ALTER TABLE public.opleverrapport_opleverrapport ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    255    255            C           2604    16610    project_klant id    DEFAULT     t   ALTER TABLE ONLY public.project_klant ALTER COLUMN id SET DEFAULT nextval('public.project_klant_id_seq'::regclass);
 ?   ALTER TABLE public.project_klant ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            D           2604    16618    project_klantmedewerker id    DEFAULT     ?   ALTER TABLE ONLY public.project_klantmedewerker ALTER COLUMN id SET DEFAULT nextval('public.project_klantmedewerker_id_seq'::regclass);
 I   ALTER TABLE public.project_klantmedewerker ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            E           2604    16626    project_project id    DEFAULT     x   ALTER TABLE ONLY public.project_project ALTER COLUMN id SET DEFAULT nextval('public.project_project_id_seq'::regclass);
 A   ALTER TABLE public.project_project ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            F           2604    16639    project_projecticem id    DEFAULT     ?   ALTER TABLE ONLY public.project_projecticem ALTER COLUMN id SET DEFAULT nextval('public.project_projecticem_id_seq'::regclass);
 E   ALTER TABLE public.project_projecticem ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            G           2604    16647 $   project_vertegenwoordiger_project id    DEFAULT     ?   ALTER TABLE ONLY public.project_vertegenwoordiger_project ALTER COLUMN id SET DEFAULT nextval('public.project_vertegenwoordiger_project_id_seq'::regclass);
 S   ALTER TABLE public.project_vertegenwoordiger_project ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            K           2604    16864    testrapport_testrapport id    DEFAULT     ?   ALTER TABLE ONLY public.testrapport_testrapport ALTER COLUMN id SET DEFAULT nextval('public.testrapport_testrapport_id_seq'::regclass);
 I   ALTER TABLE public.testrapport_testrapport ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    258    258            :           2604    16471    users_customuser id    DEFAULT     z   ALTER TABLE ONLY public.users_customuser ALTER COLUMN id SET DEFAULT nextval('public.users_customuser_id_seq'::regclass);
 B   ALTER TABLE public.users_customuser ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            ;           2604    16481    users_customuser_groups id    DEFAULT     ?   ALTER TABLE ONLY public.users_customuser_groups ALTER COLUMN id SET DEFAULT nextval('public.users_customuser_groups_id_seq'::regclass);
 I   ALTER TABLE public.users_customuser_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            <           2604    16489 $   users_customuser_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.users_customuser_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_customuser_user_permissions_id_seq'::regclass);
 S   ALTER TABLE public.users_customuser_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            =           2604    16497    users_functie id    DEFAULT     t   ALTER TABLE ONLY public.users_functie ALTER COLUMN id SET DEFAULT nextval('public.users_functie_id_seq'::regclass);
 ?   ALTER TABLE public.users_functie ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            >           2604    16505    users_klantwoningbouw id    DEFAULT     ?   ALTER TABLE ONLY public.users_klantwoningbouw ALTER COLUMN id SET DEFAULT nextval('public.users_klantwoningbouw_id_seq'::regclass);
 G   ALTER TABLE public.users_klantwoningbouw ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            @           2604    16524    users_medewerkerprofile id    DEFAULT     ?   ALTER TABLE ONLY public.users_medewerkerprofile ALTER COLUMN id SET DEFAULT nextval('public.users_medewerkerprofile_id_seq'::regclass);
 I   ALTER TABLE public.users_medewerkerprofile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            ?           2604    16513    users_role id    DEFAULT     n   ALTER TABLE ONLY public.users_role ALTER COLUMN id SET DEFAULT nextval('public.users_role_id_seq'::regclass);
 <   ALTER TABLE public.users_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            k          0    16424 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    210   $?      m          0    16434    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    212   A?      i          0    16416    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    208   ^?      }          0    16583    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    228   ?      g          0    16406    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    206   (?      e          0    16395    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    204   d?      ?          0    16849    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    256   ?      ?          0    16653    mpo_bewoners 
   TABLE DATA           ?   COPY public.mpo_bewoners (id, aanhef_bewoner, achternaam_bewoner, voorletters_bewoner, phone_bewoner, tussenvoegsels_bewoner, email_bewoner, site_id) FROM stdin;
    public          postgres    false    240   ??      ?          0    16703 
   mpo_boiler 
   TABLE DATA           5   COPY public.mpo_boiler (inhoud, icem_id) FROM stdin;
    public          postgres    false    245   ??      ?          0    16672    mpo_bouwkundig 
   TABLE DATA           k   COPY public.mpo_bouwkundig ("nokHoogte", "nokDiepte", "typeDak", "positieBuitendeel", site_id) FROM stdin;
    public          postgres    false    243   ֟      ?          0    16677    mpo_icem 
   TABLE DATA           ?   COPY public.mpo_icem (site_id, "icemType", "energieModule", "positieIcem", aansluitingkanalen, kwh_meter, "sensoringOptie", type_prestatie, koeling, "positieWPmodule") FROM stdin;
    public          postgres    false    244   ??      ?          0    16708    mpo_icemdebiet 
   TABLE DATA           Y   COPY public.mpo_icemdebiet (stand1, stand2, stand3, stand4, stand5, icem_id) FROM stdin;
    public          postgres    false    246   ?      ?          0    16713    mpo_omvormer 
   TABLE DATA           |   COPY public.mpo_omvormer ("merkOmvormer", dakheling, capaciteit, owner, levering_door, levering_datum, icem_id) FROM stdin;
    public          postgres    false    247   -?      ?          0    16718    mpo_planning 
   TABLE DATA           H   COPY public.mpo_planning (bouwrouting, leverdatum, icem_id) FROM stdin;
    public          postgres    false    248   J?      ?          0    16723    mpo_productiebonstatus 
   TABLE DATA           \   COPY public.mpo_productiebonstatus (icem_id, productiegereed, "productieDatum") FROM stdin;
    public          postgres    false    249   g?      ?          0    16728    mpo_productieexact 
   TABLE DATA           K   COPY public.mpo_productieexact ("bomId", exactnummer, icem_id) FROM stdin;
    public          postgres    false    250   ??      ?          0    16733    mpo_semkast 
   TABLE DATA           4   COPY public.mpo_semkast (type, icem_id) FROM stdin;
    public          postgres    false    251   ??      ?          0    16663    mpo_site 
   TABLE DATA           y   COPY public.mpo_site (id, bouwnr, blok, straat, huisnr, postcode, bijzonderheden, koop_huur, "projectId_id") FROM stdin;
    public          postgres    false    242   ??      ?          0    16738    mpo_warmtepomp 
   TABLE DATA           ;   COPY public.mpo_warmtepomp (vermogen, icem_id) FROM stdin;
    public          postgres    false    252   ۠      ?          0    16743    mpo_wtw 
   TABLE DATA           >   COPY public.mpo_wtw (merk, type, debiet, icem_id) FROM stdin;
    public          postgres    false    253   ??      ?          0    16797    opleverrapport_opleverrapport 
   TABLE DATA           x  COPY public.opleverrapport_opleverrapport (id, last_edit_datum, druktest, vacumeren, datatest_npi_tool, pragrammeren_warmtepomp, "testHomecontroller", doorvoeren_afgedicht, leiding_afgedopt, reinigen_module, visuele_inspectie_binnenzijde, visuele_inspectie_buitenzijde, bouwrouting_op_unit, transportklarr_gemaakt, router, poe24v, poe48v, din_rail, utp_kabel_groen, utp_kabel_blauw, utp_kabel_grijs, utp_kabel_zwart, boilersensor, th1_kabel_display_kabel, "homeController_set", omvormer, sem_kast, kwh_meter, p5stekker_omvormer, kampstrup_meter_21, landis_gyr_meter, wtw, soft_encloser, tongdy, procon, antenne, afvoer_flexbuis_slang, sifon, rode_sensor, grijs_zwart_sensor, aansluitslang_zwart, lange_schroeven, vilblokjes_oranje, flow_sensor, doorlock, plexiplaat_e_module, wielen, opleverrapport_definitief, opleverrapport_definitief_datum, author_id, project_id, site_id) FROM stdin;
    public          postgres    false    255   ?                0    16607    project_klant 
   TABLE DATA           V   COPY public.project_klant (id, klantnaam, plaats, land, provincie, phone) FROM stdin;
    public          postgres    false    230   2?      ?          0    16615    project_klantmedewerker 
   TABLE DATA           ?   COPY public.project_klantmedewerker (id, name_medewerker, achternaam_medewerker, phone, functie_medewerker, "klantID_id") FROM stdin;
    public          postgres    false    232   O?      ?          0    16623    project_project 
   TABLE DATA           	  COPY public.project_project (id, projectnr, projectnaam, plaats, provincie, land, "projectStatus", offertenr, exactnr, debiteurnr, renovatie_nieuwbouw, "selectedProjectleiderAanmelder", "selectedWerkvoorbereiderAanmelder", "selectedUitvoerderAanmelder", "selectedWerkvoorbereiderFz", "selectedProjecleiderFz", inopdrachtvoor_vloerverwarming, onderaannemers_vloerverwarming, ordernr_onderaannemer_vloerverwarming, inopdrachtvoor_ventilatieinstallatie, onderaannemers_ventilatieinstallatie, ordernr_onderaannemer_ventilatieinstallatie, inopdrachtvoor_zonnepanelen, onderaannemers_zonnepanelen, ordernr_onderaannemer_zonnepanelen, "datumSystemInvoer", "startDatum", offertedatum, "uitlijkDatumOpdrachtIndienWTW", "uitlijkDatumOpdrachtAlleenICEM", opmerking, klant_id) FROM stdin;
    public          postgres    false    234   l?      ?          0    16636    project_projecticem 
   TABLE DATA           ?   COPY public.project_projecticem (id, "iNumber", "pNumber", "eNumber", "fNumber", "aNumber", "totaalNumber", "estimatedValue", project_id) FROM stdin;
    public          postgres    false    236   ??      ?          0    16644 !   project_vertegenwoordiger_project 
   TABLE DATA           `   COPY public.project_vertegenwoordiger_project (id, projectnr, vertegenwoordiger_id) FROM stdin;
    public          postgres    false    238   ??      ?          0    16861    testrapport_testrapport 
   TABLE DATA           
  COPY public.testrapport_testrapport (id, last_edit_datum, druktest, druktest_datum, luchtest, luchtest_datum, druk_cv, flow_cv, standtijd_cv, druktap, standtijd_druktap, npidatatestuitgevoerd, npidatatesuitgevoerd_datum, "programmeerSD_kaart", aanvoertemp, tijd_legionella, frame, sem_gateway, sem_mac_adres, warmtepomp_binnen_ftc_unit, warmtepomp_buiten, procon, ventilatie_wtw, kamstrup_21_rond, kamstrup_403_landis_t230, flowmeter, display_mac_adres_homecontroller, boiler, spinvlies_voldoende, bekabeling_voldoende, lekvrij_door_blower_door_test, spinvlies_zijkanten, eindschoonmaak_binnenzijde, stikstof_en_vacumeren_module, stikstof_sterkte_bar, stikstof_sterkte_standtijd, vacumeren_module_micron, vacumeren_module_standtijd, lekdetectie, lekdetectie_datum, sn_label_op_frame, wtw_debieten_control, transportlabel_uitgevoerd, eindschoonmaak_uitgevoerd, transport_gereed, transport_gereed_datum, eindcontrole, eindcontrole_datum, testrapport_definitief, testrapport_definitief_datum, author_id, project_id, site_id) FROM stdin;
    public          postgres    false    258   á      o          0    16468    users_customuser 
   TABLE DATA           ?   COPY public.users_customuser (id, password, is_superuser, email, is_active, date_joined, is_loggedin, last_login, is_staff) FROM stdin;
    public          postgres    false    214   ??      q          0    16478    users_customuser_groups 
   TABLE DATA           N   COPY public.users_customuser_groups (id, customuser_id, group_id) FROM stdin;
    public          postgres    false    216   ??      s          0    16486 !   users_customuser_user_permissions 
   TABLE DATA           ]   COPY public.users_customuser_user_permissions (id, customuser_id, permission_id) FROM stdin;
    public          postgres    false    218   ??      u          0    16494    users_functie 
   TABLE DATA           <   COPY public.users_functie (id, functie, rol_id) FROM stdin;
    public          postgres    false    220   ΢      w          0    16502    users_klantwoningbouw 
   TABLE DATA           r   COPY public.users_klantwoningbouw (id, name, phone_no, fax_number, straat, postcode, provincie, land) FROM stdin;
    public          postgres    false    222   ??      {          0    16521    users_medewerkerprofile 
   TABLE DATA           ?   COPY public.users_medewerkerprofile (id, voornaam, voorletter, tussenvoegsel, achternaam, geslacht, geboortdatum, phone_no, fax_number, functie_id, rol_id, user_id) FROM stdin;
    public          postgres    false    226   ?      y          0    16510 
   users_role 
   TABLE DATA           3   COPY public.users_role (id, role_name) FROM stdin;
    public          postgres    false    224   e?      ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    209            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    211            ?           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 120, true);
          public          postgres    false    207            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    227            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 30, true);
          public          postgres    false    205            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 27, true);
          public          postgres    false    203            ?           0    0    mpo_bewoners_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.mpo_bewoners_id_seq', 1, false);
          public          postgres    false    239            ?           0    0    mpo_site_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.mpo_site_id_seq', 1, false);
          public          postgres    false    241            ?           0    0 $   opleverrapport_opleverrapport_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.opleverrapport_opleverrapport_id_seq', 1, false);
          public          postgres    false    254            ?           0    0    project_klant_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.project_klant_id_seq', 1, false);
          public          postgres    false    229            ?           0    0    project_klantmedewerker_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.project_klantmedewerker_id_seq', 1, false);
          public          postgres    false    231            ?           0    0    project_project_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.project_project_id_seq', 1, false);
          public          postgres    false    233            ?           0    0    project_projecticem_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.project_projecticem_id_seq', 1, false);
          public          postgres    false    235            ?           0    0 (   project_vertegenwoordiger_project_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.project_vertegenwoordiger_project_id_seq', 1, false);
          public          postgres    false    237            ?           0    0    testrapport_testrapport_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.testrapport_testrapport_id_seq', 1, false);
          public          postgres    false    257            ?           0    0    users_customuser_groups_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.users_customuser_groups_id_seq', 1, false);
          public          postgres    false    215            ?           0    0    users_customuser_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.users_customuser_id_seq', 1, true);
          public          postgres    false    213            ?           0    0 (   users_customuser_user_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.users_customuser_user_permissions_id_seq', 1, false);
          public          postgres    false    217            ?           0    0    users_functie_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.users_functie_id_seq', 1, true);
          public          postgres    false    219            ?           0    0    users_klantwoningbouw_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.users_klantwoningbouw_id_seq', 1, false);
          public          postgres    false    221            ?           0    0    users_medewerkerprofile_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.users_medewerkerprofile_id_seq', 1, true);
          public          postgres    false    225            ?           0    0    users_role_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_role_id_seq', 1, false);
          public          postgres    false    223            Y           2606    16464    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    210            ^           2606    16450 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    212    212            a           2606    16439 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    212            [           2606    16429    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    210            T           2606    16441 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    208    208            V           2606    16421 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    208            ?           2606    16592 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    228            O           2606    16413 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    206    206            Q           2606    16411 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    206            M           2606    16403 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    204            ?           2606    16856 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    256            ?           2606    16660 +   mpo_bewoners mpo_bewoners_email_bewoner_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.mpo_bewoners
    ADD CONSTRAINT mpo_bewoners_email_bewoner_key UNIQUE (email_bewoner);
 U   ALTER TABLE ONLY public.mpo_bewoners DROP CONSTRAINT mpo_bewoners_email_bewoner_key;
       public            postgres    false    240            ?           2606    16658    mpo_bewoners mpo_bewoners_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mpo_bewoners
    ADD CONSTRAINT mpo_bewoners_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.mpo_bewoners DROP CONSTRAINT mpo_bewoners_pkey;
       public            postgres    false    240            ?           2606    16707    mpo_boiler mpo_boiler_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.mpo_boiler
    ADD CONSTRAINT mpo_boiler_pkey PRIMARY KEY (icem_id);
 D   ALTER TABLE ONLY public.mpo_boiler DROP CONSTRAINT mpo_boiler_pkey;
       public            postgres    false    245            ?           2606    16676 "   mpo_bouwkundig mpo_bouwkundig_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.mpo_bouwkundig
    ADD CONSTRAINT mpo_bouwkundig_pkey PRIMARY KEY (site_id);
 L   ALTER TABLE ONLY public.mpo_bouwkundig DROP CONSTRAINT mpo_bouwkundig_pkey;
       public            postgres    false    243            ?           2606    16681    mpo_icem mpo_icem_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.mpo_icem
    ADD CONSTRAINT mpo_icem_pkey PRIMARY KEY (site_id);
 @   ALTER TABLE ONLY public.mpo_icem DROP CONSTRAINT mpo_icem_pkey;
       public            postgres    false    244            ?           2606    16712 "   mpo_icemdebiet mpo_icemdebiet_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.mpo_icemdebiet
    ADD CONSTRAINT mpo_icemdebiet_pkey PRIMARY KEY (icem_id);
 L   ALTER TABLE ONLY public.mpo_icemdebiet DROP CONSTRAINT mpo_icemdebiet_pkey;
       public            postgres    false    246            ?           2606    16717    mpo_omvormer mpo_omvormer_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.mpo_omvormer
    ADD CONSTRAINT mpo_omvormer_pkey PRIMARY KEY (icem_id);
 H   ALTER TABLE ONLY public.mpo_omvormer DROP CONSTRAINT mpo_omvormer_pkey;
       public            postgres    false    247            ?           2606    16722    mpo_planning mpo_planning_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.mpo_planning
    ADD CONSTRAINT mpo_planning_pkey PRIMARY KEY (icem_id);
 H   ALTER TABLE ONLY public.mpo_planning DROP CONSTRAINT mpo_planning_pkey;
       public            postgres    false    248            ?           2606    16727 2   mpo_productiebonstatus mpo_productiebonstatus_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.mpo_productiebonstatus
    ADD CONSTRAINT mpo_productiebonstatus_pkey PRIMARY KEY (icem_id);
 \   ALTER TABLE ONLY public.mpo_productiebonstatus DROP CONSTRAINT mpo_productiebonstatus_pkey;
       public            postgres    false    249            ?           2606    16732 *   mpo_productieexact mpo_productieexact_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.mpo_productieexact
    ADD CONSTRAINT mpo_productieexact_pkey PRIMARY KEY (icem_id);
 T   ALTER TABLE ONLY public.mpo_productieexact DROP CONSTRAINT mpo_productieexact_pkey;
       public            postgres    false    250            ?           2606    16737    mpo_semkast mpo_semkast_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.mpo_semkast
    ADD CONSTRAINT mpo_semkast_pkey PRIMARY KEY (icem_id);
 F   ALTER TABLE ONLY public.mpo_semkast DROP CONSTRAINT mpo_semkast_pkey;
       public            postgres    false    251            ?           2606    16671    mpo_site mpo_site_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.mpo_site
    ADD CONSTRAINT mpo_site_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.mpo_site DROP CONSTRAINT mpo_site_pkey;
       public            postgres    false    242            ?           2606    16742 "   mpo_warmtepomp mpo_warmtepomp_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.mpo_warmtepomp
    ADD CONSTRAINT mpo_warmtepomp_pkey PRIMARY KEY (icem_id);
 L   ALTER TABLE ONLY public.mpo_warmtepomp DROP CONSTRAINT mpo_warmtepomp_pkey;
       public            postgres    false    252            ?           2606    16747    mpo_wtw mpo_wtw_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mpo_wtw
    ADD CONSTRAINT mpo_wtw_pkey PRIMARY KEY (icem_id);
 >   ALTER TABLE ONLY public.mpo_wtw DROP CONSTRAINT mpo_wtw_pkey;
       public            postgres    false    253            ?           2606    16802 @   opleverrapport_opleverrapport opleverrapport_opleverrapport_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.opleverrapport_opleverrapport
    ADD CONSTRAINT opleverrapport_opleverrapport_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.opleverrapport_opleverrapport DROP CONSTRAINT opleverrapport_opleverrapport_pkey;
       public            postgres    false    255            ?           2606    16612     project_klant project_klant_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.project_klant
    ADD CONSTRAINT project_klant_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.project_klant DROP CONSTRAINT project_klant_pkey;
       public            postgres    false    230            ?           2606    16620 4   project_klantmedewerker project_klantmedewerker_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.project_klantmedewerker
    ADD CONSTRAINT project_klantmedewerker_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.project_klantmedewerker DROP CONSTRAINT project_klantmedewerker_pkey;
       public            postgres    false    232            ?           2606    16631 $   project_project project_project_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.project_project
    ADD CONSTRAINT project_project_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.project_project DROP CONSTRAINT project_project_pkey;
       public            postgres    false    234            ?           2606    16633 -   project_project project_project_projectnr_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.project_project
    ADD CONSTRAINT project_project_projectnr_key UNIQUE (projectnr);
 W   ALTER TABLE ONLY public.project_project DROP CONSTRAINT project_project_projectnr_key;
       public            postgres    false    234            ?           2606    16641 ,   project_projecticem project_projecticem_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.project_projecticem
    ADD CONSTRAINT project_projecticem_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.project_projecticem DROP CONSTRAINT project_projecticem_pkey;
       public            postgres    false    236            ?           2606    16649 H   project_vertegenwoordiger_project project_vertegenwoordiger_project_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.project_vertegenwoordiger_project
    ADD CONSTRAINT project_vertegenwoordiger_project_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.project_vertegenwoordiger_project DROP CONSTRAINT project_vertegenwoordiger_project_pkey;
       public            postgres    false    238            ?           2606    16869 4   testrapport_testrapport testrapport_testrapport_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.testrapport_testrapport
    ADD CONSTRAINT testrapport_testrapport_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.testrapport_testrapport DROP CONSTRAINT testrapport_testrapport_pkey;
       public            postgres    false    258            d           2606    16475 +   users_customuser users_customuser_email_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.users_customuser
    ADD CONSTRAINT users_customuser_email_key UNIQUE (email);
 U   ALTER TABLE ONLY public.users_customuser DROP CONSTRAINT users_customuser_email_key;
       public            postgres    false    214            i           2606    16536 T   users_customuser_groups users_customuser_groups_customuser_id_group_id_76b619e3_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_groups_customuser_id_group_id_76b619e3_uniq UNIQUE (customuser_id, group_id);
 ~   ALTER TABLE ONLY public.users_customuser_groups DROP CONSTRAINT users_customuser_groups_customuser_id_group_id_76b619e3_uniq;
       public            postgres    false    216    216            l           2606    16483 4   users_customuser_groups users_customuser_groups_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_groups_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.users_customuser_groups DROP CONSTRAINT users_customuser_groups_pkey;
       public            postgres    false    216            f           2606    16473 &   users_customuser users_customuser_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.users_customuser
    ADD CONSTRAINT users_customuser_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.users_customuser DROP CONSTRAINT users_customuser_pkey;
       public            postgres    false    214            n           2606    16550 a   users_customuser_user_permissions users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq UNIQUE (customuser_id, permission_id);
 ?   ALTER TABLE ONLY public.users_customuser_user_permissions DROP CONSTRAINT users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq;
       public            postgres    false    218    218            r           2606    16491 H   users_customuser_user_permissions users_customuser_user_permissions_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_user_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.users_customuser_user_permissions DROP CONSTRAINT users_customuser_user_permissions_pkey;
       public            postgres    false    218            t           2606    16499     users_functie users_functie_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.users_functie
    ADD CONSTRAINT users_functie_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.users_functie DROP CONSTRAINT users_functie_pkey;
       public            postgres    false    220            w           2606    16507 0   users_klantwoningbouw users_klantwoningbouw_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.users_klantwoningbouw
    ADD CONSTRAINT users_klantwoningbouw_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.users_klantwoningbouw DROP CONSTRAINT users_klantwoningbouw_pkey;
       public            postgres    false    222            |           2606    16526 4   users_medewerkerprofile users_medewerkerprofile_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.users_medewerkerprofile
    ADD CONSTRAINT users_medewerkerprofile_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.users_medewerkerprofile DROP CONSTRAINT users_medewerkerprofile_pkey;
       public            postgres    false    226                       2606    16528 ;   users_medewerkerprofile users_medewerkerprofile_user_id_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.users_medewerkerprofile
    ADD CONSTRAINT users_medewerkerprofile_user_id_key UNIQUE (user_id);
 e   ALTER TABLE ONLY public.users_medewerkerprofile DROP CONSTRAINT users_medewerkerprofile_user_id_key;
       public            postgres    false    226            y           2606    16518    users_role users_role_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.users_role
    ADD CONSTRAINT users_role_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.users_role DROP CONSTRAINT users_role_pkey;
       public            postgres    false    224            W           1259    16465    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    210            \           1259    16461 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    212            _           1259    16462 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    212            R           1259    16447 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    208            ?           1259    16603 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    228            ?           1259    16604 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    228            ?           1259    16858 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    256            ?           1259    16857 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    256            ?           1259    16682 (   mpo_bewoners_email_bewoner_67e0860a_like    INDEX     ~   CREATE INDEX mpo_bewoners_email_bewoner_67e0860a_like ON public.mpo_bewoners USING btree (email_bewoner varchar_pattern_ops);
 <   DROP INDEX public.mpo_bewoners_email_bewoner_67e0860a_like;
       public            postgres    false    240            ?           1259    16749    mpo_bewoners_site_id_7cde23e6    INDEX     Y   CREATE INDEX mpo_bewoners_site_id_7cde23e6 ON public.mpo_bewoners USING btree (site_id);
 1   DROP INDEX public.mpo_bewoners_site_id_7cde23e6;
       public            postgres    false    240            ?           1259    16748    mpo_site_projectId_id_c37fd760    INDEX     _   CREATE INDEX "mpo_site_projectId_id_c37fd760" ON public.mpo_site USING btree ("projectId_id");
 4   DROP INDEX public."mpo_site_projectId_id_c37fd760";
       public            postgres    false    242            ?           1259    16818 0   opleverrapport_opleverrapport_author_id_2cf8d52b    INDEX        CREATE INDEX opleverrapport_opleverrapport_author_id_2cf8d52b ON public.opleverrapport_opleverrapport USING btree (author_id);
 D   DROP INDEX public.opleverrapport_opleverrapport_author_id_2cf8d52b;
       public            postgres    false    255            ?           1259    16819 1   opleverrapport_opleverrapport_project_id_57a1733e    INDEX     ?   CREATE INDEX opleverrapport_opleverrapport_project_id_57a1733e ON public.opleverrapport_opleverrapport USING btree (project_id);
 E   DROP INDEX public.opleverrapport_opleverrapport_project_id_57a1733e;
       public            postgres    false    255            ?           1259    16820 .   opleverrapport_opleverrapport_site_id_5c2db7ce    INDEX     {   CREATE INDEX opleverrapport_opleverrapport_site_id_5c2db7ce ON public.opleverrapport_opleverrapport USING btree (site_id);
 B   DROP INDEX public.opleverrapport_opleverrapport_site_id_5c2db7ce;
       public            postgres    false    255            ?           1259    16848 +   project_klantmedewerker_klantID_id_6d215918    INDEX     y   CREATE INDEX "project_klantmedewerker_klantID_id_6d215918" ON public.project_klantmedewerker USING btree ("klantID_id");
 A   DROP INDEX public."project_klantmedewerker_klantID_id_6d215918";
       public            postgres    false    232            ?           1259    16847 !   project_project_klant_id_7a0810db    INDEX     a   CREATE INDEX project_project_klant_id_7a0810db ON public.project_project USING btree (klant_id);
 5   DROP INDEX public.project_project_klant_id_7a0810db;
       public            postgres    false    234            ?           1259    16650 '   project_project_projectnr_2fd18f33_like    INDEX     |   CREATE INDEX project_project_projectnr_2fd18f33_like ON public.project_project USING btree (projectnr varchar_pattern_ops);
 ;   DROP INDEX public.project_project_projectnr_2fd18f33_like;
       public            postgres    false    234            ?           1259    16846 '   project_projecticem_project_id_6c5a3aa9    INDEX     m   CREATE INDEX project_projecticem_project_id_6c5a3aa9 ON public.project_projecticem USING btree (project_id);
 ;   DROP INDEX public.project_projecticem_project_id_6c5a3aa9;
       public            postgres    false    236            ?           1259    16845 ?   project_vertegenwoordiger_project_vertegenwoordiger_id_dc1d8eae    INDEX     ?   CREATE INDEX project_vertegenwoordiger_project_vertegenwoordiger_id_dc1d8eae ON public.project_vertegenwoordiger_project USING btree (vertegenwoordiger_id);
 S   DROP INDEX public.project_vertegenwoordiger_project_vertegenwoordiger_id_dc1d8eae;
       public            postgres    false    238            ?           1259    16885 *   testrapport_testrapport_author_id_86dfe41d    INDEX     s   CREATE INDEX testrapport_testrapport_author_id_86dfe41d ON public.testrapport_testrapport USING btree (author_id);
 >   DROP INDEX public.testrapport_testrapport_author_id_86dfe41d;
       public            postgres    false    258            ?           1259    16886 +   testrapport_testrapport_project_id_c3ba7889    INDEX     u   CREATE INDEX testrapport_testrapport_project_id_c3ba7889 ON public.testrapport_testrapport USING btree (project_id);
 ?   DROP INDEX public.testrapport_testrapport_project_id_c3ba7889;
       public            postgres    false    258            ?           1259    16887 (   testrapport_testrapport_site_id_000692ec    INDEX     o   CREATE INDEX testrapport_testrapport_site_id_000692ec ON public.testrapport_testrapport USING btree (site_id);
 <   DROP INDEX public.testrapport_testrapport_site_id_000692ec;
       public            postgres    false    258            b           1259    16534 $   users_customuser_email_6445acef_like    INDEX     v   CREATE INDEX users_customuser_email_6445acef_like ON public.users_customuser USING btree (email varchar_pattern_ops);
 8   DROP INDEX public.users_customuser_email_6445acef_like;
       public            postgres    false    214            g           1259    16547 .   users_customuser_groups_customuser_id_958147bf    INDEX     {   CREATE INDEX users_customuser_groups_customuser_id_958147bf ON public.users_customuser_groups USING btree (customuser_id);
 B   DROP INDEX public.users_customuser_groups_customuser_id_958147bf;
       public            postgres    false    216            j           1259    16548 )   users_customuser_groups_group_id_01390b14    INDEX     q   CREATE INDEX users_customuser_groups_group_id_01390b14 ON public.users_customuser_groups USING btree (group_id);
 =   DROP INDEX public.users_customuser_groups_group_id_01390b14;
       public            postgres    false    216            o           1259    16561 8   users_customuser_user_permissions_customuser_id_5771478b    INDEX     ?   CREATE INDEX users_customuser_user_permissions_customuser_id_5771478b ON public.users_customuser_user_permissions USING btree (customuser_id);
 L   DROP INDEX public.users_customuser_user_permissions_customuser_id_5771478b;
       public            postgres    false    218            p           1259    16562 8   users_customuser_user_permissions_permission_id_baaa2f74    INDEX     ?   CREATE INDEX users_customuser_user_permissions_permission_id_baaa2f74 ON public.users_customuser_user_permissions USING btree (permission_id);
 L   DROP INDEX public.users_customuser_user_permissions_permission_id_baaa2f74;
       public            postgres    false    218            u           1259    16580    users_functie_rol_id_b5ed4099    INDEX     Y   CREATE INDEX users_functie_rol_id_b5ed4099 ON public.users_functie USING btree (rol_id);
 1   DROP INDEX public.users_functie_rol_id_b5ed4099;
       public            postgres    false    220            z           1259    16578 +   users_medewerkerprofile_functie_id_4577f2c9    INDEX     u   CREATE INDEX users_medewerkerprofile_functie_id_4577f2c9 ON public.users_medewerkerprofile USING btree (functie_id);
 ?   DROP INDEX public.users_medewerkerprofile_functie_id_4577f2c9;
       public            postgres    false    226            }           1259    16579 '   users_medewerkerprofile_rol_id_0faa8fe0    INDEX     m   CREATE INDEX users_medewerkerprofile_rol_id_0faa8fe0 ON public.users_medewerkerprofile USING btree (rol_id);
 ;   DROP INDEX public.users_medewerkerprofile_rol_id_0faa8fe0;
       public            postgres    false    226            ?           2606    16456 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    208    212    2902            ?           2606    16451 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    212    2907    210            ?           2606    16442 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    206    208    2897            ?           2606    16593 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2897    206    228            ?           2606    16598 I   django_admin_log django_admin_log_user_id_c564eba6_fk_users_customuser_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_customuser_id FOREIGN KEY (user_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_customuser_id;
       public          postgres    false    2918    228    214            ?           2606    16698 9   mpo_bewoners mpo_bewoners_site_id_7cde23e6_fk_mpo_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mpo_bewoners
    ADD CONSTRAINT mpo_bewoners_site_id_7cde23e6_fk_mpo_site_id FOREIGN KEY (site_id) REFERENCES public.mpo_site(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.mpo_bewoners DROP CONSTRAINT mpo_bewoners_site_id_7cde23e6_fk_mpo_site_id;
       public          postgres    false    2972    242    240            ?           2606    16750 :   mpo_boiler mpo_boiler_icem_id_ff2ccede_fk_mpo_icem_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mpo_boiler
    ADD CONSTRAINT mpo_boiler_icem_id_ff2ccede_fk_mpo_icem_site_id FOREIGN KEY (icem_id) REFERENCES public.mpo_icem(site_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.mpo_boiler DROP CONSTRAINT mpo_boiler_icem_id_ff2ccede_fk_mpo_icem_site_id;
       public          postgres    false    2977    245    244            ?           2606    16683 =   mpo_bouwkundig mpo_bouwkundig_site_id_e70f4bd4_fk_mpo_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mpo_bouwkundig
    ADD CONSTRAINT mpo_bouwkundig_site_id_e70f4bd4_fk_mpo_site_id FOREIGN KEY (site_id) REFERENCES public.mpo_site(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.mpo_bouwkundig DROP CONSTRAINT mpo_bouwkundig_site_id_e70f4bd4_fk_mpo_site_id;
       public          postgres    false    242    2972    243            ?           2606    16688 1   mpo_icem mpo_icem_site_id_69e98b29_fk_mpo_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mpo_icem
    ADD CONSTRAINT mpo_icem_site_id_69e98b29_fk_mpo_site_id FOREIGN KEY (site_id) REFERENCES public.mpo_site(id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public.mpo_icem DROP CONSTRAINT mpo_icem_site_id_69e98b29_fk_mpo_site_id;
       public          postgres    false    244    2972    242            ?           2606    16755 B   mpo_icemdebiet mpo_icemdebiet_icem_id_1c7cdd00_fk_mpo_icem_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mpo_icemdebiet
    ADD CONSTRAINT mpo_icemdebiet_icem_id_1c7cdd00_fk_mpo_icem_site_id FOREIGN KEY (icem_id) REFERENCES public.mpo_icem(site_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.mpo_icemdebiet DROP CONSTRAINT mpo_icemdebiet_icem_id_1c7cdd00_fk_mpo_icem_site_id;
       public          postgres    false    2977    244    246            ?           2606    16760 >   mpo_omvormer mpo_omvormer_icem_id_0d6f5238_fk_mpo_icem_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mpo_omvormer
    ADD CONSTRAINT mpo_omvormer_icem_id_0d6f5238_fk_mpo_icem_site_id FOREIGN KEY (icem_id) REFERENCES public.mpo_icem(site_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.mpo_omvormer DROP CONSTRAINT mpo_omvormer_icem_id_0d6f5238_fk_mpo_icem_site_id;
       public          postgres    false    247    2977    244            ?           2606    16765 >   mpo_planning mpo_planning_icem_id_6f04fd35_fk_mpo_icem_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mpo_planning
    ADD CONSTRAINT mpo_planning_icem_id_6f04fd35_fk_mpo_icem_site_id FOREIGN KEY (icem_id) REFERENCES public.mpo_icem(site_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.mpo_planning DROP CONSTRAINT mpo_planning_icem_id_6f04fd35_fk_mpo_icem_site_id;
       public          postgres    false    248    2977    244            ?           2606    16770 R   mpo_productiebonstatus mpo_productiebonstatus_icem_id_f38a996b_fk_mpo_icem_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mpo_productiebonstatus
    ADD CONSTRAINT mpo_productiebonstatus_icem_id_f38a996b_fk_mpo_icem_site_id FOREIGN KEY (icem_id) REFERENCES public.mpo_icem(site_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.mpo_productiebonstatus DROP CONSTRAINT mpo_productiebonstatus_icem_id_f38a996b_fk_mpo_icem_site_id;
       public          postgres    false    2977    249    244            ?           2606    16775 J   mpo_productieexact mpo_productieexact_icem_id_c5ac20d4_fk_mpo_icem_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mpo_productieexact
    ADD CONSTRAINT mpo_productieexact_icem_id_c5ac20d4_fk_mpo_icem_site_id FOREIGN KEY (icem_id) REFERENCES public.mpo_icem(site_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.mpo_productieexact DROP CONSTRAINT mpo_productieexact_icem_id_c5ac20d4_fk_mpo_icem_site_id;
       public          postgres    false    250    244    2977            ?           2606    16780 <   mpo_semkast mpo_semkast_icem_id_bc74ae9f_fk_mpo_icem_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mpo_semkast
    ADD CONSTRAINT mpo_semkast_icem_id_bc74ae9f_fk_mpo_icem_site_id FOREIGN KEY (icem_id) REFERENCES public.mpo_icem(site_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.mpo_semkast DROP CONSTRAINT mpo_semkast_icem_id_bc74ae9f_fk_mpo_icem_site_id;
       public          postgres    false    2977    244    251            ?           2606    16693 =   mpo_site mpo_site_projectId_id_c37fd760_fk_project_project_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mpo_site
    ADD CONSTRAINT "mpo_site_projectId_id_c37fd760_fk_project_project_id" FOREIGN KEY ("projectId_id") REFERENCES public.project_project(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.mpo_site DROP CONSTRAINT "mpo_site_projectId_id_c37fd760_fk_project_project_id";
       public          postgres    false    234    242    2955            ?           2606    16785 B   mpo_warmtepomp mpo_warmtepomp_icem_id_deda9ab0_fk_mpo_icem_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mpo_warmtepomp
    ADD CONSTRAINT mpo_warmtepomp_icem_id_deda9ab0_fk_mpo_icem_site_id FOREIGN KEY (icem_id) REFERENCES public.mpo_icem(site_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.mpo_warmtepomp DROP CONSTRAINT mpo_warmtepomp_icem_id_deda9ab0_fk_mpo_icem_site_id;
       public          postgres    false    2977    244    252            ?           2606    16790 4   mpo_wtw mpo_wtw_icem_id_6d34fdb2_fk_mpo_icem_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mpo_wtw
    ADD CONSTRAINT mpo_wtw_icem_id_6d34fdb2_fk_mpo_icem_site_id FOREIGN KEY (icem_id) REFERENCES public.mpo_icem(site_id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.mpo_wtw DROP CONSTRAINT mpo_wtw_icem_id_6d34fdb2_fk_mpo_icem_site_id;
       public          postgres    false    2977    244    253            ?           2606    16803 R   opleverrapport_opleverrapport opleverrapport_oplev_author_id_2cf8d52b_fk_users_med    FK CONSTRAINT     ?   ALTER TABLE ONLY public.opleverrapport_opleverrapport
    ADD CONSTRAINT opleverrapport_oplev_author_id_2cf8d52b_fk_users_med FOREIGN KEY (author_id) REFERENCES public.users_medewerkerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.opleverrapport_opleverrapport DROP CONSTRAINT opleverrapport_oplev_author_id_2cf8d52b_fk_users_med;
       public          postgres    false    255    2940    226            ?           2606    16808 S   opleverrapport_opleverrapport opleverrapport_oplev_project_id_57a1733e_fk_project_p    FK CONSTRAINT     ?   ALTER TABLE ONLY public.opleverrapport_opleverrapport
    ADD CONSTRAINT opleverrapport_oplev_project_id_57a1733e_fk_project_p FOREIGN KEY (project_id) REFERENCES public.project_project(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.opleverrapport_opleverrapport DROP CONSTRAINT opleverrapport_oplev_project_id_57a1733e_fk_project_p;
       public          postgres    false    2955    234    255            ?           2606    16813 [   opleverrapport_opleverrapport opleverrapport_opleverrapport_site_id_5c2db7ce_fk_mpo_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.opleverrapport_opleverrapport
    ADD CONSTRAINT opleverrapport_opleverrapport_site_id_5c2db7ce_fk_mpo_site_id FOREIGN KEY (site_id) REFERENCES public.mpo_site(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.opleverrapport_opleverrapport DROP CONSTRAINT opleverrapport_opleverrapport_site_id_5c2db7ce_fk_mpo_site_id;
       public          postgres    false    242    2972    255            ?           2606    16840 W   project_klantmedewerker project_klantmedewerker_klantID_id_6d215918_fk_project_klant_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.project_klantmedewerker
    ADD CONSTRAINT "project_klantmedewerker_klantID_id_6d215918_fk_project_klant_id" FOREIGN KEY ("klantID_id") REFERENCES public.project_klant(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.project_klantmedewerker DROP CONSTRAINT "project_klantmedewerker_klantID_id_6d215918_fk_project_klant_id";
       public          postgres    false    232    2949    230            ?           2606    16834 E   project_project project_project_klant_id_7a0810db_fk_project_klant_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.project_project
    ADD CONSTRAINT project_project_klant_id_7a0810db_fk_project_klant_id FOREIGN KEY (klant_id) REFERENCES public.project_klant(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.project_project DROP CONSTRAINT project_project_klant_id_7a0810db_fk_project_klant_id;
       public          postgres    false    230    2949    234            ?           2606    16828 Q   project_projecticem project_projecticem_project_id_6c5a3aa9_fk_project_project_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.project_projecticem
    ADD CONSTRAINT project_projecticem_project_id_6c5a3aa9_fk_project_project_id FOREIGN KEY (project_id) REFERENCES public.project_project(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.project_projecticem DROP CONSTRAINT project_projecticem_project_id_6c5a3aa9_fk_project_project_id;
       public          postgres    false    236    2955    234            ?           2606    16822 a   project_vertegenwoordiger_project project_vertegenwoor_vertegenwoordiger_id_dc1d8eae_fk_users_med    FK CONSTRAINT     ?   ALTER TABLE ONLY public.project_vertegenwoordiger_project
    ADD CONSTRAINT project_vertegenwoor_vertegenwoordiger_id_dc1d8eae_fk_users_med FOREIGN KEY (vertegenwoordiger_id) REFERENCES public.users_medewerkerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.project_vertegenwoordiger_project DROP CONSTRAINT project_vertegenwoor_vertegenwoordiger_id_dc1d8eae_fk_users_med;
       public          postgres    false    226    2940    238            ?           2606    16870 L   testrapport_testrapport testrapport_testrapp_author_id_86dfe41d_fk_users_med    FK CONSTRAINT     ?   ALTER TABLE ONLY public.testrapport_testrapport
    ADD CONSTRAINT testrapport_testrapp_author_id_86dfe41d_fk_users_med FOREIGN KEY (author_id) REFERENCES public.users_medewerkerprofile(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.testrapport_testrapport DROP CONSTRAINT testrapport_testrapp_author_id_86dfe41d_fk_users_med;
       public          postgres    false    226    258    2940            ?           2606    16875 M   testrapport_testrapport testrapport_testrapp_project_id_c3ba7889_fk_project_p    FK CONSTRAINT     ?   ALTER TABLE ONLY public.testrapport_testrapport
    ADD CONSTRAINT testrapport_testrapp_project_id_c3ba7889_fk_project_p FOREIGN KEY (project_id) REFERENCES public.project_project(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.testrapport_testrapport DROP CONSTRAINT testrapport_testrapp_project_id_c3ba7889_fk_project_p;
       public          postgres    false    2955    258    234            ?           2606    16880 O   testrapport_testrapport testrapport_testrapport_site_id_000692ec_fk_mpo_site_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.testrapport_testrapport
    ADD CONSTRAINT testrapport_testrapport_site_id_000692ec_fk_mpo_site_id FOREIGN KEY (site_id) REFERENCES public.mpo_site(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.testrapport_testrapport DROP CONSTRAINT testrapport_testrapport_site_id_000692ec_fk_mpo_site_id;
       public          postgres    false    2972    258    242            ?           2606    16537 P   users_customuser_groups users_customuser_gro_customuser_id_958147bf_fk_users_cus    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_gro_customuser_id_958147bf_fk_users_cus FOREIGN KEY (customuser_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.users_customuser_groups DROP CONSTRAINT users_customuser_gro_customuser_id_958147bf_fk_users_cus;
       public          postgres    false    216    214    2918            ?           2606    16542 R   users_customuser_groups users_customuser_groups_group_id_01390b14_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_groups_group_id_01390b14_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.users_customuser_groups DROP CONSTRAINT users_customuser_groups_group_id_01390b14_fk_auth_group_id;
       public          postgres    false    210    216    2907            ?           2606    16551 Z   users_customuser_user_permissions users_customuser_use_customuser_id_5771478b_fk_users_cus    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_use_customuser_id_5771478b_fk_users_cus FOREIGN KEY (customuser_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.users_customuser_user_permissions DROP CONSTRAINT users_customuser_use_customuser_id_5771478b_fk_users_cus;
       public          postgres    false    2918    214    218            ?           2606    16556 Z   users_customuser_user_permissions users_customuser_use_permission_id_baaa2f74_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_use_permission_id_baaa2f74_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.users_customuser_user_permissions DROP CONSTRAINT users_customuser_use_permission_id_baaa2f74_fk_auth_perm;
       public          postgres    false    208    2902    218            ?           2606    16529 <   users_functie users_functie_rol_id_b5ed4099_fk_users_role_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_functie
    ADD CONSTRAINT users_functie_rol_id_b5ed4099_fk_users_role_id FOREIGN KEY (rol_id) REFERENCES public.users_role(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.users_functie DROP CONSTRAINT users_functie_rol_id_b5ed4099_fk_users_role_id;
       public          postgres    false    2937    224    220            ?           2606    16563 W   users_medewerkerprofile users_medewerkerprofile_functie_id_4577f2c9_fk_users_functie_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_medewerkerprofile
    ADD CONSTRAINT users_medewerkerprofile_functie_id_4577f2c9_fk_users_functie_id FOREIGN KEY (functie_id) REFERENCES public.users_functie(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.users_medewerkerprofile DROP CONSTRAINT users_medewerkerprofile_functie_id_4577f2c9_fk_users_functie_id;
       public          postgres    false    226    220    2932            ?           2606    16568 P   users_medewerkerprofile users_medewerkerprofile_rol_id_0faa8fe0_fk_users_role_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_medewerkerprofile
    ADD CONSTRAINT users_medewerkerprofile_rol_id_0faa8fe0_fk_users_role_id FOREIGN KEY (rol_id) REFERENCES public.users_role(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.users_medewerkerprofile DROP CONSTRAINT users_medewerkerprofile_rol_id_0faa8fe0_fk_users_role_id;
       public          postgres    false    226    224    2937            ?           2606    16573 W   users_medewerkerprofile users_medewerkerprofile_user_id_dc1c9412_fk_users_customuser_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_medewerkerprofile
    ADD CONSTRAINT users_medewerkerprofile_user_id_dc1c9412_fk_users_customuser_id FOREIGN KEY (user_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.users_medewerkerprofile DROP CONSTRAINT users_medewerkerprofile_user_id_dc1c9412_fk_users_customuser_id;
       public          postgres    false    2918    226    214            k      x?????? ? ?      m      x?????? ? ?      i   ?  x?}?]??8???Sp?????^c#&hа?nl?6???G.U?*m/oH?ґ*?*C??>???????n?Ў?oW?8??4?%!???- ??????0"???	?n??iB?]v?????k]I?t???9 ٝa??lаG?$y4?)??????*2H?}???d?}1RXO??FJ?" ???*;?t?k?????OM3????̮??Yo3?-?W?3??{Ȯ??j?#?<??њU?}f?d=*??+?jM!r??B?????y?w?TF??&|	q@T?hh??RBC?` ?
hHM??g{????G??`(?3?P??e??A!2?M???9~???m??G?|?#Y?i???cE?^:?̊??/t&H+*??B??껯?N??飯 N?ʖ ?a??%????DZԄ??5?B??ͣ?~6??W?dDWx?W??u%?\C??ż???6[???V??Wz^|].N?س??jq"&ƞ_׳o"?;??nv~ը+J5?Ӿ?/0??K+<,O0
?u+<Ώ0?t?V?Ɍ%?/\??S????A$=T8H???
g?f??;????6?%?]Q[kӔ??+?2??`??3?l??3n]'X???1???W????????ϖD. $???x?o?}?0????lo???QT?7?d?x??~pE??2?{ȷ?x?JB?-?;R?d?rdW)M?Ќ??Jt???mY??" ?B?{&???^9hUS9u??gk???*u? ??J?	EZ?dh?SdS??iM?H???p?x?2{K?Q??@Y'i?`j[F??-?i??k$H?O?NX?r]?:nmM??z$??Z?~4ate?K?f???ư?>?W?*?K?Kf?\9A??w?﮿O?J=M??'?b?TI8??d?J?X??)e?Sl]ӻ?+?A?؟?CL??Lb?2?????]?p??????sz?????0?????ܮ?RZ??y?Z?j?Z??=lM??l!ǎ?&?ƶ??;ބ_?x??;?-???qu?????e???l??$+?ە??
?%?????!?{??IÈ@Z?r
95`??)?I???g?@??׹??????L?Hg"E?-)E??n??0?T??_?L-+~?????b? H'b? J^NhQ?8?a?ϏG?ǚ?fd?"
??????????$l??c?5S??+?W&????p6
 SK?\?sdj)?z&???,E??F??y?? 9~??      }      x?????? ? ?      g   ,  x?]P?r? |F?	8??t??mť6?"N???????=$f?Z?ֻ??0??(??[Ed?Rr?Z??)Gث???QyDL?*ἑ? ?*'?2????0?V??C#???~?AF
.t5?.??4 ???<?8"?ȑ??&K??????]?[]m??????\??a?oȂ????[?!m?G?#?K??i??I?u^?rJ?C?}???{?[?r?ћ?b?P??Y!#??D5?X??
?_8S???R?X?	?????-I͒4??m*t	:Z???|??esQ?I??H,????8`i???S?? ?_8?ͦ      e     x????n? E?????U#?@?e%?????8j?~?8$?:?%?s3w?????h?/?	B+;?hu? ????/??yG|/?????~(Ayӻ?Q????A?f%?I!?ei???O
!d?O?}P??ƫ??ކ`?P?S??V?N??"(?В?bEf??azm?5
FT??E[)????R?cXF -?^???U?N656u˶`?f???6??k??΢Ie?^#dE𹌳??QG???ǣ2?;?z?>?'MQ*HF'?Ys??`PH???6?Z$h9?
?u?n7b??׊jj1VӘ,2j?????'?*0/??d?]}X??-	\^Y????{?JV??Sn???%I?ʮb~?@Nf
???6?u?rL?!??<D?!???҇?????'u?t??$d???}&???_s??}0L(-????۠??\|S?KE?E ?;sN+?????q!%)]Y?~Xp??"????R?=????&?9?+?&??mM?{Lʔ?????+_?
??f???n???7?	      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?            x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      o   ?   x?]?M?0??????????&?aJJ???Y??.?>}v???x??W????0n?Cf+]QQ???r?4???ۙu.???n8,?(??J??!
??=?J?38?n?6?YLP??N??L?t???????@??`??QfS*?1&?????m\l?0?)?/?      q      x?????? ? ?      s      x?????? ? ?      u      x?3?t?K??KM-?4?????? /?T      w      x?????? ? ?      {   @   x?3??,K???????%?E??.E?F&???????Ɔf?fF???&??? ????? ?0?      y      x?3?Rs?????? j?     