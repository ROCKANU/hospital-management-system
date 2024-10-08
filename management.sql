PGDMP                      |            hospital management system    16.4    16.4 B    *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            +           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ,           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            -           1262    16398    hospital management system    DATABASE     �   CREATE DATABASE "hospital management system" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 ,   DROP DATABASE "hospital management system";
                postgres    false            �            1259    16414    appointments    TABLE       CREATE TABLE public.appointments (
    appointmentid integer NOT NULL,
    patientid integer,
    doctorid integer,
    appointmentdate date NOT NULL,
    appointmenttime time without time zone NOT NULL,
    status character varying(20) DEFAULT 'Scheduled'::character varying
);
     DROP TABLE public.appointments;
       public         heap    postgres    false            .           0    0    TABLE appointments    ACL     8   GRANT SELECT ON TABLE public.appointments TO read_only;
          public          postgres    false    220            �            1259    16413    appointments_appointmentid_seq    SEQUENCE     �   CREATE SEQUENCE public.appointments_appointmentid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.appointments_appointmentid_seq;
       public          postgres    false    220            /           0    0    appointments_appointmentid_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.appointments_appointmentid_seq OWNED BY public.appointments.appointmentid;
          public          postgres    false    219            �            1259    16432    bills    TABLE     �   CREATE TABLE public.bills (
    billid integer NOT NULL,
    patientid integer,
    amount numeric(10,2),
    billdate date,
    status character varying(10) DEFAULT 'Unpaid'::character varying
);
    DROP TABLE public.bills;
       public         heap    postgres    false            0           0    0    TABLE bills    ACL     1   GRANT SELECT ON TABLE public.bills TO read_only;
          public          postgres    false    222            �            1259    16431    bills_billid_seq    SEQUENCE     �   CREATE SEQUENCE public.bills_billid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.bills_billid_seq;
       public          postgres    false    222            1           0    0    bills_billid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.bills_billid_seq OWNED BY public.bills.billid;
          public          postgres    false    221            �            1259    16407    doctors    TABLE     �   CREATE TABLE public.doctors (
    doctorid integer NOT NULL,
    name character varying(100) NOT NULL,
    specialty character varying(100),
    contactnumber character varying(15),
    availability character varying(100)
);
    DROP TABLE public.doctors;
       public         heap    postgres    false            2           0    0    TABLE doctors    ACL     3   GRANT SELECT ON TABLE public.doctors TO read_only;
          public          postgres    false    218            �            1259    16406    doctors_doctorid_seq    SEQUENCE     �   CREATE SEQUENCE public.doctors_doctorid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.doctors_doctorid_seq;
       public          postgres    false    218            3           0    0    doctors_doctorid_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.doctors_doctorid_seq OWNED BY public.doctors.doctorid;
          public          postgres    false    217            �            1259    16457 	   inventory    TABLE     �   CREATE TABLE public.inventory (
    inventoryid integer NOT NULL,
    itemname character varying(100),
    quantity integer,
    supplier character varying(100),
    expirydate date
);
    DROP TABLE public.inventory;
       public         heap    postgres    false            4           0    0    TABLE inventory    ACL     5   GRANT SELECT ON TABLE public.inventory TO read_only;
          public          postgres    false    226            �            1259    16456    inventory_inventoryid_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_inventoryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.inventory_inventoryid_seq;
       public          postgres    false    226            5           0    0    inventory_inventoryid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.inventory_inventoryid_seq OWNED BY public.inventory.inventoryid;
          public          postgres    false    225            �            1259    16400    patients    TABLE     �   CREATE TABLE public.patients (
    patientid integer NOT NULL,
    name character varying(100) NOT NULL,
    dateofbirth date NOT NULL,
    address character varying(255),
    contactnumber character varying(15)
);
    DROP TABLE public.patients;
       public         heap    postgres    false            6           0    0    TABLE patients    ACL     4   GRANT SELECT ON TABLE public.patients TO read_only;
          public          postgres    false    216            �            1259    16399    patients_patientid_seq    SEQUENCE     �   CREATE SEQUENCE public.patients_patientid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.patients_patientid_seq;
       public          postgres    false    216            7           0    0    patients_patientid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.patients_patientid_seq OWNED BY public.patients.patientid;
          public          postgres    false    215            �            1259    16445    payments    TABLE     �   CREATE TABLE public.payments (
    paymentid integer NOT NULL,
    billid integer,
    paymentamount numeric(10,2),
    paymentdate date,
    paymentmethod character varying(50)
);
    DROP TABLE public.payments;
       public         heap    postgres    false            8           0    0    TABLE payments    ACL     4   GRANT SELECT ON TABLE public.payments TO read_only;
          public          postgres    false    224            �            1259    16444    payments_paymentid_seq    SEQUENCE     �   CREATE SEQUENCE public.payments_paymentid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.payments_paymentid_seq;
       public          postgres    false    224            9           0    0    payments_paymentid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.payments_paymentid_seq OWNED BY public.payments.paymentid;
          public          postgres    false    223            �            1259    16464    staff    TABLE     �   CREATE TABLE public.staff (
    staffid integer NOT NULL,
    name character varying(100) NOT NULL,
    role character varying(50),
    contactnumber character varying(15)
);
    DROP TABLE public.staff;
       public         heap    postgres    false            :           0    0    TABLE staff    ACL     1   GRANT SELECT ON TABLE public.staff TO read_only;
          public          postgres    false    228            �            1259    16463    staff_staffid_seq    SEQUENCE     �   CREATE SEQUENCE public.staff_staffid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.staff_staffid_seq;
       public          postgres    false    228            ;           0    0    staff_staffid_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.staff_staffid_seq OWNED BY public.staff.staffid;
          public          postgres    false    227            p           2604    16417    appointments appointmentid    DEFAULT     �   ALTER TABLE ONLY public.appointments ALTER COLUMN appointmentid SET DEFAULT nextval('public.appointments_appointmentid_seq'::regclass);
 I   ALTER TABLE public.appointments ALTER COLUMN appointmentid DROP DEFAULT;
       public          postgres    false    220    219    220            r           2604    16435    bills billid    DEFAULT     l   ALTER TABLE ONLY public.bills ALTER COLUMN billid SET DEFAULT nextval('public.bills_billid_seq'::regclass);
 ;   ALTER TABLE public.bills ALTER COLUMN billid DROP DEFAULT;
       public          postgres    false    221    222    222            o           2604    16410    doctors doctorid    DEFAULT     t   ALTER TABLE ONLY public.doctors ALTER COLUMN doctorid SET DEFAULT nextval('public.doctors_doctorid_seq'::regclass);
 ?   ALTER TABLE public.doctors ALTER COLUMN doctorid DROP DEFAULT;
       public          postgres    false    218    217    218            u           2604    16460    inventory inventoryid    DEFAULT     ~   ALTER TABLE ONLY public.inventory ALTER COLUMN inventoryid SET DEFAULT nextval('public.inventory_inventoryid_seq'::regclass);
 D   ALTER TABLE public.inventory ALTER COLUMN inventoryid DROP DEFAULT;
       public          postgres    false    225    226    226            n           2604    16403    patients patientid    DEFAULT     x   ALTER TABLE ONLY public.patients ALTER COLUMN patientid SET DEFAULT nextval('public.patients_patientid_seq'::regclass);
 A   ALTER TABLE public.patients ALTER COLUMN patientid DROP DEFAULT;
       public          postgres    false    215    216    216            t           2604    16448    payments paymentid    DEFAULT     x   ALTER TABLE ONLY public.payments ALTER COLUMN paymentid SET DEFAULT nextval('public.payments_paymentid_seq'::regclass);
 A   ALTER TABLE public.payments ALTER COLUMN paymentid DROP DEFAULT;
       public          postgres    false    224    223    224            v           2604    16467    staff staffid    DEFAULT     n   ALTER TABLE ONLY public.staff ALTER COLUMN staffid SET DEFAULT nextval('public.staff_staffid_seq'::regclass);
 <   ALTER TABLE public.staff ALTER COLUMN staffid DROP DEFAULT;
       public          postgres    false    228    227    228                      0    16414    appointments 
   TABLE DATA           t   COPY public.appointments (appointmentid, patientid, doctorid, appointmentdate, appointmenttime, status) FROM stdin;
    public          postgres    false    220   I       !          0    16432    bills 
   TABLE DATA           L   COPY public.bills (billid, patientid, amount, billdate, status) FROM stdin;
    public          postgres    false    222   dI                 0    16407    doctors 
   TABLE DATA           Y   COPY public.doctors (doctorid, name, specialty, contactnumber, availability) FROM stdin;
    public          postgres    false    218   �I       %          0    16457 	   inventory 
   TABLE DATA           Z   COPY public.inventory (inventoryid, itemname, quantity, supplier, expirydate) FROM stdin;
    public          postgres    false    226   %J                 0    16400    patients 
   TABLE DATA           X   COPY public.patients (patientid, name, dateofbirth, address, contactnumber) FROM stdin;
    public          postgres    false    216   �J       #          0    16445    payments 
   TABLE DATA           `   COPY public.payments (paymentid, billid, paymentamount, paymentdate, paymentmethod) FROM stdin;
    public          postgres    false    224   K       '          0    16464    staff 
   TABLE DATA           C   COPY public.staff (staffid, name, role, contactnumber) FROM stdin;
    public          postgres    false    228   ZK       <           0    0    appointments_appointmentid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.appointments_appointmentid_seq', 4, true);
          public          postgres    false    219            =           0    0    bills_billid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.bills_billid_seq', 4, true);
          public          postgres    false    221            >           0    0    doctors_doctorid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.doctors_doctorid_seq', 4, true);
          public          postgres    false    217            ?           0    0    inventory_inventoryid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.inventory_inventoryid_seq', 4, true);
          public          postgres    false    225            @           0    0    patients_patientid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.patients_patientid_seq', 2, true);
          public          postgres    false    215            A           0    0    payments_paymentid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.payments_paymentid_seq', 4, true);
          public          postgres    false    223            B           0    0    staff_staffid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.staff_staffid_seq', 6, true);
          public          postgres    false    227            |           2606    16420    appointments appointments_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointmentid);
 H   ALTER TABLE ONLY public.appointments DROP CONSTRAINT appointments_pkey;
       public            postgres    false    220            �           2606    16438    bills bills_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.bills
    ADD CONSTRAINT bills_pkey PRIMARY KEY (billid);
 :   ALTER TABLE ONLY public.bills DROP CONSTRAINT bills_pkey;
       public            postgres    false    222            z           2606    16412    doctors doctors_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_pkey PRIMARY KEY (doctorid);
 >   ALTER TABLE ONLY public.doctors DROP CONSTRAINT doctors_pkey;
       public            postgres    false    218            �           2606    16462    inventory inventory_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (inventoryid);
 B   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_pkey;
       public            postgres    false    226            x           2606    16405    patients patients_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_pkey PRIMARY KEY (patientid);
 @   ALTER TABLE ONLY public.patients DROP CONSTRAINT patients_pkey;
       public            postgres    false    216            �           2606    16450    payments payments_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (paymentid);
 @   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_pkey;
       public            postgres    false    224            �           2606    16469    staff staff_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (staffid);
 :   ALTER TABLE ONLY public.staff DROP CONSTRAINT staff_pkey;
       public            postgres    false    228            }           1259    16514 
   idx_doctor    INDEX     G   CREATE INDEX idx_doctor ON public.appointments USING btree (doctorid);
    DROP INDEX public.idx_doctor;
       public            postgres    false    220            ~           1259    16513    idx_patient    INDEX     I   CREATE INDEX idx_patient ON public.appointments USING btree (patientid);
    DROP INDEX public.idx_patient;
       public            postgres    false    220            �           2606    16426 '   appointments appointments_doctorid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_doctorid_fkey FOREIGN KEY (doctorid) REFERENCES public.doctors(doctorid);
 Q   ALTER TABLE ONLY public.appointments DROP CONSTRAINT appointments_doctorid_fkey;
       public          postgres    false    4730    220    218            �           2606    16421 (   appointments appointments_patientid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_patientid_fkey FOREIGN KEY (patientid) REFERENCES public.patients(patientid);
 R   ALTER TABLE ONLY public.appointments DROP CONSTRAINT appointments_patientid_fkey;
       public          postgres    false    4728    216    220            �           2606    16439    bills bills_patientid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bills
    ADD CONSTRAINT bills_patientid_fkey FOREIGN KEY (patientid) REFERENCES public.patients(patientid);
 D   ALTER TABLE ONLY public.bills DROP CONSTRAINT bills_patientid_fkey;
       public          postgres    false    222    4728    216            �           2606    16451    payments payments_billid_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_billid_fkey FOREIGN KEY (billid) REFERENCES public.bills(billid);
 G   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_billid_fkey;
       public          postgres    false    4736    222    224               H   x�3�4A#]K]#NCC+ �N�HM)�IM�2�4B� � C�	��4�9?� '��&F��� #� 3      !   ;   x�3�4�440�30�4202�5��50��+H�L�2�4�44E�4�I��i�Og� ���         f   x�3�t)�S��,��tN,J����O��455յ�07����KI�T(�Wp+��������R�9RS2K�2����LM��4�d����j�	�v��qqq G�>�      %   ]   x�3�tJ�KILO-�420��HM�)�pN,JU�)I������ps:de�q�����T*x�%�ՙ��r�mb� �t!�         d   x�ʽ@@ �}������%,í���D��'�/�x.��Ӏ�&w�:V`)h���2K���%
�!�cM��[q�NJ�h
u�����U���!��]�      #   D   x�3�4�440�30�4202�5��50�t.JM�,QpN,J�2�4�44EUa��X��eLP�	n�1z\\\ }]      '   V   x�3�t��LNUp*�/���+-*N�455�5162�2�t�ORp/JM��JMN-(����,.��073�2Ƨ݄�vS|��j����� XE7      