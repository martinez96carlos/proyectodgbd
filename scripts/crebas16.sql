/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     5/24/2020 22:22:50                           */
/*==============================================================*/


drop table GENERATORS;

drop table ORDERS;

drop table RECOLECTIONS;

drop table RECOLECTORS;

drop table SOLIDS;

drop table SOLID_TYPES;

drop table TRANSACTIONS;

/*==============================================================*/
/* Table: GENERATORS                                            */
/*==============================================================*/
create table GENERATORS (
   GENERATOR_ID         Serial               not null,
   GENERATOR_FIRST_NAME VARCHAR(40)          null,
   GENERATOR_SECOND_NAME VARCHAR(40)          null,
   GENERATOR_FIRST_LASTNAME VARCHAR(40)          null,
   GENERATOR_SECOND_LASTNAME VARCHAR(40)          null,
   GENERATOR_BORN_DATE  VARCHAR(20)          null,
   GENERATOR_RATE       FLOAT8               null,
   GENERATOR_GENDER     INT4                 null,
   GENERATOR_EMAIL      VARCHAR(40)          null,
   GENERATOR_PASSWORD   VARCHAR(150)         null,
   GENERATOR_PHONE      VARCHAR(20)          null,
   GENERATOR_CI         VARCHAR(200)         null,
   GENERATOR_PLACE      INT4                 null,
   GENERATOR_PICTURE_URL VARCHAR(200)         null,
   GENERATOR_STATE      INT4                 null,
   TR_ID                INT4                 null,
   TR_DATE              DATE                 null,
   TR_USER_ID           INT4                 null,
   TR_DETAIL            VARCHAR(200)         null,
   constraint PK_GENERATORS primary key (GENERATOR_ID)
);

/*==============================================================*/
/* Table: ORDERS                                                */
/*==============================================================*/
create table ORDERS (
   ORDER_ID             Serial               not null,
   GENERATOR_ID         INT4                 null,
   RECOLECTOR_ID        INT4                 null,
   ORDER_DATE           VARCHAR(20)          null,
   ORDER_DETAIL         VARCHAR(250)         null,
   ORDER_IMAGE_URL      VARCHAR(500)         null,
   ORDER_RATE           FLOAT8               null,
   ORDER_RECOLECTION_RATE FLOAT8               null,
   ORDER_LATITUDE       VARCHAR(200)         null,
   ORDER_LONGITUDE      VARCHAR(200)         null,
   ORDER_STATE          INT4                 null,
   TR_ID                INT4                 null,
   TR_DATE              DATE                 null,
   TR_USER_ID           INT4                 null,
   TR_DETAIL            VARCHAR(200)         null,
   constraint PK_ORDERS primary key (ORDER_ID)
);

/*==============================================================*/
/* Table: RECOLECTIONS                                          */
/*==============================================================*/
create table RECOLECTIONS (
   RECOLECTION_ID       Serial               not null,
   SOLID_ID             INT4                 null,
   ORDER_ID             INT4                 null,
   RECOLECTION_WEIGHT   FLOAT8               null,
   RECOLECTION_STATE    INT4                 null,
   TR_ID                INT4                 null,
   TR_DATE              DATE                 null,
   TR_USER_ID           INT4                 null,
   TR_DETAIL            VARCHAR(200)         null,
   constraint PK_RECOLECTIONS primary key (RECOLECTION_ID)
);

/*==============================================================*/
/* Table: RECOLECTORS                                           */
/*==============================================================*/
create table RECOLECTORS (
   RECOLECTOR_ID        Serial               not null,
   RECOLECTOR_FIRST_NAME VARCHAR(40)          null,
   RECOLECTOR_SECOND_NAME VARCHAR(40)          null,
   RECOLECTOR_FIRST_LASTNAME VARCHAR(40)          null,
   RECOLECTOR_SECOND_LASTNAME VARCHAR(40)          null,
   RECOLECTOR_BORN_DATE VARCHAR(20)          null,
   RECOLECTOR_GENDER    INT4                 null,
   RECOLECTOR_EMAIL     VARCHAR(40)          null,
   RECOLECTOR_PASSWORD  VARCHAR(150)         null,
   RECOLECTOR_PHONE     VARCHAR(20)          null,
   RECOLECTOR_CI        VARCHAR(20)          null,
   RECOLECTOR_CITY      INT4                 null,
   RECOLECTOR_GROUP     VARCHAR(200)         null,
   RECOLECTOR_PICTURE_URL VARCHAR(200)         null,
   RECOLECTOR_RATE      FLOAT8               null,
   RECOLECTOR_STATE     INT4                 null,
   TR_ID                INT4                 null,
   TR_DATE              DATE                 null,
   TR_USER_ID           INT4                 null,
   TR_DETAIL            VARCHAR(200)         null,
   constraint PK_RECOLECTORS primary key (RECOLECTOR_ID)
);

/*==============================================================*/
/* Table: SOLIDS                                                */
/*==============================================================*/
create table SOLIDS (
   SOLID_ID             Serial               not null,
   SOLID_TYPE_ID        INT4                 null,
   SOLID_NAME           VARCHAR(50)          null,
   SOLID_DESCRIPTION    VARCHAR(150)         null,
   SOLID_STATE          INT4                 null,
   TR_ID                INT4                 null,
   TR_DATE              DATE                 null,
   TR_USER_ID           INT4                 null,
   TR_DETAIL            VARCHAR(200)         null,
   constraint PK_SOLIDS primary key (SOLID_ID)
);

/*==============================================================*/
/* Table: SOLID_TYPES                                           */
/*==============================================================*/
create table SOLID_TYPES (
   SOLID_TYPE_ID        Serial               not null,
   SOLID_TYPE_NAME      VARCHAR(50)          null,
   SOLID_TYPE_DESCRIPTION VARCHAR(150)         null,
   SOLID_TYPE_STATE     INT4                 null,
   TR_ID                INT4                 null,
   TR_DATE              DATE                 null,
   TR_USER_ID           INT4                 null,
   TR_DETAIL            VARCHAR(200)         null,
   constraint PK_SOLID_TYPES primary key (SOLID_TYPE_ID)
);

/*==============================================================*/
/* Table: TRANSACTIONS                                          */
/*==============================================================*/
create table TRANSACTIONS (
   TR_ID                Serial               not null,
   TR_DATE              DATE                 null,
   TR_USER_ID           INT4                 null,
   TR_DETAIL            VARCHAR(200)         null,
   TR_IP                VARCHAR(20)          null,
   constraint PK_TRANSACTIONS primary key (TR_ID)
);

alter table ORDERS
   add constraint FK_ORDERS_REFERENCE_GENERATO foreign key (GENERATOR_ID)
      references GENERATORS (GENERATOR_ID)
      on delete restrict on update restrict;

alter table ORDERS
   add constraint FK_ORDERS_REFERENCE_RECOLECT foreign key (RECOLECTOR_ID)
      references RECOLECTORS (RECOLECTOR_ID)
      on delete restrict on update restrict;

alter table RECOLECTIONS
   add constraint FK_RECOLECT_REFERENCE_SOLIDS foreign key (SOLID_ID)
      references SOLIDS (SOLID_ID)
      on delete restrict on update restrict;

alter table RECOLECTIONS
   add constraint FK_RECOLECT_REFERENCE_ORDERS foreign key (ORDER_ID)
      references ORDERS (ORDER_ID)
      on delete restrict on update restrict;

alter table SOLIDS
   add constraint FK_SOLIDS_REFERENCE_SOLID_TY foreign key (SOLID_TYPE_ID)
      references SOLID_TYPES (SOLID_TYPE_ID)
      on delete restrict on update restrict;

