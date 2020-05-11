/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     5/10/2020 18:37:53                           */
/*==============================================================*/


drop table CITIES;

drop table GROUPS;

drop table LOCATIONS;

drop table ORDERS;

drop table RECOLECTIONS;

drop table ROLES;

drop table SOLIDS;

drop table SOLID_TYPE;

drop table TRANSACTIONS;

drop table USERS;

/*==============================================================*/
/* Table: CITIES                                                */
/*==============================================================*/
create table CITIES (
   CITY_ID              Serial               not null,
   CITY_NAME            VARCHAR(20)          not null,
   CITY_STATE           INT4                 null,
   TR_ID                INT4                 null,
   TR_DATE              DATE                 null,
   TR_USER_ID           INT4                 null,
   TR_DETAIL            VARCHAR(200)         null,
   constraint PK_CITIES primary key (CITY_ID)
);

/*==============================================================*/
/* Table: GROUPS                                                */
/*==============================================================*/
create table GROUPS (
   GROUP_ID             Serial               not null,
   GROUP_NAME           VARCHAR(30)          not null,
   GROUP_STATE          INT4                 null,
   TR_ID                INT4                 null,
   TR_DATE              DATE                 null,
   TR_USER_ID           INT4                 null,
   TR_DETAIL            VARCHAR(200)         null,
   constraint PK_GROUPS primary key (GROUP_ID)
);

/*==============================================================*/
/* Table: LOCATIONS                                             */
/*==============================================================*/
create table LOCATIONS (
   LOCATION_ID          Serial               not null,
   LOCATION_LONGITUDE   VARCHAR(20)          not null,
   LOCATION_LATITUDE    VARCHAR(20)          not null,
   LOCATION_STATE       INT4                 null,
   TR_ID                INT4                 null,
   TR_DATE              DATE                 null,
   TR_USER_ID           INT4                 null,
   TR_DETAIL            VARCHAR(200)         null,
   constraint PK_LOCATIONS primary key (LOCATION_ID)
);

/*==============================================================*/
/* Table: ORDERS                                                */
/*==============================================================*/
create table ORDERS (
   ORDER_ID             Serial               not null,
   LOCATION_ID          INT4                 null,
   USER_ID              INT4                 null,
   ORDER_DATE           DATE                 not null,
   ORDER_DETAIL         VARCHAR(250)         not null,
   ORDER_IMAGE_URL      VARCHAR(200)         not null,
   ORDER_PLACE          varchar(35)          null,
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
   USER_ID              INT4                 null,
   RECOLECTION_WEIGHT   FLOAT8               not null,
   RECOLECTION_STATE    INT4                 not null,
   TR_ID                INT4                 null,
   TR_DATE              DATE                 null,
   TR_USER_ID           INT4                 null,
   TR_DETAIL            VARCHAR(200)         null,
   constraint PK_RECOLECTIONS primary key (RECOLECTION_ID)
);

/*==============================================================*/
/* Table: ROLES                                                 */
/*==============================================================*/
create table ROLES (
   ROLE_ID              Serial               not null,
   ROLE_NAME            VARCHAR(20)          not null,
   ROLE_DESCRIPTION     VARCHAR(200)         null,
   ROLE_STATE           INT4                 null,
   TR_ID                INT4                 null,
   TR_DATE              DATE                 null,
   TR_USER_ID           INT4                 null,
   TR_DETAIL            VARCHAR(200)         null,
   constraint PK_ROLES primary key (ROLE_ID)
);

/*==============================================================*/
/* Table: SOLIDS                                                */
/*==============================================================*/
create table SOLIDS (
   SOLID_ID             Serial               not null,
   SOLID_TYPE_ID        INT4                 null,
   SOLID_NAME           VARCHAR(40)          not null,
   SOLID_DESCRIPTION    VARCHAR(100)         null,
   SOLID_STATE          INT4                 null,
   TR_ID                INT4                 null,
   TR_DATE              DATE                 null,
   TR_USER_ID           INT4                 null,
   TR_DETAIL            VARCHAR(200)         null,
   constraint PK_SOLIDS primary key (SOLID_ID)
);

/*==============================================================*/
/* Table: SOLID_TYPE                                            */
/*==============================================================*/
create table SOLID_TYPE (
   SOLID_TYPE_ID        Serial               not null,
   SOLID_TYPE_NAME      VARCHAR(40)          not null,
   SOLID_TYPE_DESCRIPTION VARCHAR(100)         null,
   SOLID_TYPE_STATE     INT4                 null,
   TR_ID                INT4                 null,
   TR_DATE              DATE                 null,
   TR_USER_ID           INT4                 null,
   TR_DETAIL            VARCHAR(200)         null,
   constraint PK_SOLID_TYPE primary key (SOLID_TYPE_ID)
);

/*==============================================================*/
/* Table: TRANSACTIONS                                          */
/*==============================================================*/
create table TRANSACTIONS (
   TR_ID                Serial               not null,
   TR_DATE              DATE                 not null,
   TR_USER_ID           INT4                 not null,
   TR_DETAIL            VARCHAR(200)         null,
   TR_IP                VARCHAR(20)          null,
   constraint PK_TRANSACTIONS primary key (TR_ID)
);

/*==============================================================*/
/* Table: USERS                                                 */
/*==============================================================*/
create table USERS (
   USER_ID              Serial               not null,
   GROUP_ID             INT4                 null,
   CITY_ID              INT4                 null,
   ROLE_ID              INT4                 null,
   USER_FIRST_NAME      VARCHAR(20)          null,
   USER_SECOND_NAME     VARCHAR(20)          null,
   USER_FIRST_LASTNAME  VARCHAR(20)          null,
   USER_SECOND_LASTNAME VARCHAR(20)          null,
   USER_NUMBER_ID       VARCHAR(12)          null,
   USER_BORN_DATE       DATE                 null,
   USER_RATE            FLOAT8               null,
   USER_GENDER          VARCHAR(15)          null,
   USER_EMAIL           VARCHAR(30)          null,
   USER_PASSWORD        VARCHAR(100)         null,
   USER_PHONE           VARCHAR(12)          null,
   USER_STATE           INT4                 null,
   TR_ID                INT4                 null,
   TR_DATE              DATE                 null,
   TR_USER_ID           INT4                 null,
   TR_DETAIL            VARCHAR(200)         null,
   constraint PK_USERS primary key (USER_ID)
);

alter table ORDERS
   add constraint FK_ORDERS_REFERENCE_USERS foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ORDERS
   add constraint FK_ORDERS_REFERENCE_LOCATION foreign key (LOCATION_ID)
      references LOCATIONS (LOCATION_ID)
      on delete restrict on update restrict;

alter table RECOLECTIONS
   add constraint FK_RECOLECT_REFERENCE_SOLIDS foreign key (SOLID_ID)
      references SOLIDS (SOLID_ID)
      on delete restrict on update restrict;

alter table RECOLECTIONS
   add constraint FK_RECOLECT_REFERENCE_ORDERS foreign key (ORDER_ID)
      references ORDERS (ORDER_ID)
      on delete restrict on update restrict;

alter table RECOLECTIONS
   add constraint FK_RECOLECT_REFERENCE_USERS foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table SOLIDS
   add constraint FK_SOLIDS_REFERENCE_SOLID_TY foreign key (SOLID_TYPE_ID)
      references SOLID_TYPE (SOLID_TYPE_ID)
      on delete restrict on update restrict;

alter table USERS
   add constraint FK_USERS_REFERENCE_GROUPS foreign key (GROUP_ID)
      references GROUPS (GROUP_ID)
      on delete restrict on update restrict;

alter table USERS
   add constraint FK_USERS_REFERENCE_CITIES foreign key (CITY_ID)
      references CITIES (CITY_ID)
      on delete restrict on update restrict;

alter table USERS
   add constraint FK_USERS_REFERENCE_ROLES foreign key (ROLE_ID)
      references ROLES (ROLE_ID)
      on delete restrict on update restrict;

