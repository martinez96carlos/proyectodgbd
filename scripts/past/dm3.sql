/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     5/28/2020 01:29:51                           */
/*==============================================================*/


drop table DIM_ORDERS;

drop table DIM_RECOLECTOR;

drop table DIM_SOLIDS;

drop table DIM_SOLID_TYPES;

drop table DIM_TIME;

drop table FACT_RECOLECTION;

/*==============================================================*/
/* Table: DIM_ORDERS                                            */
/*==============================================================*/
create table DIM_ORDERS (
   ORDER_ID             int4                 not null,
   RECOLECTOR_ID        int4                 null,
   ORDER_DATE           varchar(40)          null,
   ORDER_RATE           float8               null,
   ORDER_RECOLECTION_RATE float8               null,
   ORDER_LATITUDE       varchar(50)          null,
   ORDER_LONGITUDE      varchar(50)          null,
   GENERATOR_PLACE      varchar(50)          null,
   constraint PK_DIM_ORDERS primary key (ORDER_ID)
);

/*==============================================================*/
/* Table: DIM_RECOLECTOR                                        */
/*==============================================================*/
create table DIM_RECOLECTOR (
   RECOLECTOR_ID        int4                 not null,
   NOMBRE               varchar(50)          null,
   APELLIDO             varchar(50)          null,
   BORN_DATE            varchar(30)          null,
   GENDER               varchar(50)          null,
   CITY                 varchar(50)          null,
   RATE                 float8               null,
   constraint PK_DIM_RECOLECTOR primary key (RECOLECTOR_ID)
);

/*==============================================================*/
/* Table: DIM_SOLIDS                                            */
/*==============================================================*/
create table DIM_SOLIDS (
   SOLID_ID             int4                 not null,
   SOLID_TYPE_ID        int4                 null,
   SOLID_NAME           varchar(120)         null,
   constraint PK_DIM_SOLIDS primary key (SOLID_ID)
);

/*==============================================================*/
/* Table: DIM_SOLID_TYPES                                       */
/*==============================================================*/
create table DIM_SOLID_TYPES (
   SOLID_TYPE_ID        int4                 not null,
   SOLID_TYPE_NAME      varchar(50)          null,
   constraint PK_DIM_SOLID_TYPES primary key (SOLID_TYPE_ID)
);

/*==============================================================*/
/* Table: DIM_TIME                                              */
/*==============================================================*/
create table DIM_TIME (
   TIME_ID              int4                 not null,
   ANO                  TIMESTAMP            null,
   MES                  TIMESTAMP            null,
   DIA                  TIMESTAMP            null,
   HORA                 TIMESTAMP            null,
   TIME_DATE            TIMESTAMP            null,
   constraint PK_DIM_TIME primary key (TIME_ID)
);

/*==============================================================*/
/* Table: FACT_RECOLECTION                                      */
/*==============================================================*/
create table FACT_RECOLECTION (
   RECOLECTION_ID       serial               not null
      constraint CKC_RECOLECTION_ID_FACT_REC check (RECOLECTION_ID >= 0),
   SOLID_ID             int4                 null,
   ORDER_ID             int4                 null,
   TIME_ID              int4                 null,
   WEIGHT               float8               null,
   constraint PK_FACT_RECOLECTION primary key (RECOLECTION_ID)
);

alter table DIM_ORDERS
   add constraint FK_DIM_ORDE_REFERENCE_DIM_RECO foreign key (RECOLECTOR_ID)
      references DIM_RECOLECTOR (RECOLECTOR_ID)
      on delete restrict on update restrict;

alter table DIM_SOLIDS
   add constraint FK_DIM_SOLI_REFERENCE_DIM_SOLI foreign key (SOLID_TYPE_ID)
      references DIM_SOLID_TYPES (SOLID_TYPE_ID)
      on delete restrict on update restrict;

alter table FACT_RECOLECTION
   add constraint FK_FACT_REC_REFERENCE_DIM_SOLI foreign key (SOLID_ID)
      references DIM_SOLIDS (SOLID_ID)
      on delete restrict on update restrict;

alter table FACT_RECOLECTION
   add constraint FK_FACT_REC_REFERENCE_DIM_ORDE foreign key (ORDER_ID)
      references DIM_ORDERS (ORDER_ID)
      on delete restrict on update restrict;

alter table FACT_RECOLECTION
   add constraint FK_FACT_REC_REFERENCE_DIM_TIME foreign key (TIME_ID)
      references DIM_TIME (TIME_ID)
      on delete restrict on update restrict;

