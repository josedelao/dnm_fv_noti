/*==============================================================*/
/* Database name:  dnm_fv_si                                    */
/* DBMS name:      MySQL 5_0                                    */
/* Created on:     23/6/2021 16:36:56                           */
/*==============================================================*/


drop table if exists dnm_fv_si.CAT_accionTomada;

drop table if exists dnm_fv_si.CAT_establecimientosSalud;

drop table if exists dnm_fv_si.CAT_estadoReporte;

drop table if exists dnm_fv_si.MDRA_llt;

drop table if exists dnm_fv_si.CAT_marcoAppVacuna;

drop table if exists dnm_fv_si.CAT_numeroDosis;

drop table if exists dnm_fv_si.CAT_razonSeriedad;

drop table if exists dnm_fv_si.CAT_resultadoPaciente;

drop table if exists dnm_fv_si.CAT_sitioAnatomico;

drop table if exists dnm_fv_si.CAT_tipoAnalisis;

drop table if exists dnm_fv_si.CAT_tipoEvento;

drop table if exists dnm_fv_si.CAT_tipoNotificacion;

drop table if exists dnm_fv_si.CAT_tipoNotificador;

drop table if exists dnm_fv_si.CAT_unidadEfectora;

/*==============================================================*/
/* Table: accionTomada                                          */
/*==============================================================*/
create table dnm_fv_si.CAT_accionTomada
(
   idAccion             int not null  comment '',
   nombreAccion         varchar(300) not null  comment '',
   primary key (idAccion)
);

/*==============================================================*/
/* Table: establecimientosSalud                                 */
/*==============================================================*/
create table dnm_fv_si.CAT_establecimientosSalud
(
   idInstitucion        int not null auto_increment  comment '',
   nombreInstitucion    varchar(300) not null  comment '',
   direccionInstitucion text not null  comment '',
   paisInstitucion      int  comment '',
   idMunicipio          int  comment '',
   telefonosContacto    text  comment '',
   emailsContacto       text  comment '',
   estado               tinyint not null default 1  comment '',
   idUnidadEfectora     int  comment '',
   zonaTerritorial      int  comment '',
   primary key (idInstitucion)
);

/*==============================================================*/
/* Table: estadoReporte                                         */
/*==============================================================*/
create table dnm_fv_si.CAT_estadoReporte
(
   idEstado             int not null auto_increment  comment '',
   descripcion          varchar(100) not null  comment '',
   estadoProceso        varchar(100)  comment '',
   primary key (idEstado)
);

/*==============================================================*/
/* Table: llt                                                   */
/*==============================================================*/
create table dnm_fv_si.MDRA_llt
(
   lltCode              national varchar(20) not null  comment '',
   lltName              text not null  comment '',
   ptCode               national varchar(20) not null  comment '',
   lltCurrency          char(1) not null  comment '',
   primary key (lltCode)
);

/*==============================================================*/
/* Table: marcoAppVacuna                                        */
/*==============================================================*/
create table dnm_fv_si.CAT_marcoAppVacuna
(
   idMarcoApp           int not null  comment '',
   marcoAplicacion      varchar(300) not null  comment '',
   primary key (idMarcoApp)
);

/*==============================================================*/
/* Table: numeroDosis                                           */
/*==============================================================*/
create table dnm_fv_si.CAT_numeroDosis
(
   idNumeroDosis        int not null auto_increment  comment '',
   descripcionNumeroDosis varchar(100) not null  comment '',
   primary key (idNumeroDosis)
);

/*==============================================================*/
/* Table: razonSeriedad                                         */
/*==============================================================*/
create table dnm_fv_si.CAT_razonSeriedad
(
   idSeriedad           int not null  comment '',
   nombreSeriedad       varchar(300) not null  comment '',
   primary key (idSeriedad)
);

/*==============================================================*/
/* Table: resultadoPaciente                                     */
/*==============================================================*/
create table dnm_fv_si.CAT_resultadoPaciente
(
   idCondicion          int not null  comment '',
   condicionPaciente    varchar(300) not null  comment '',
   primary key (idCondicion)
);

/*==============================================================*/
/* Table: sitioAnatomico                                        */
/*==============================================================*/
create table dnm_fv_si.CAT_sitioAnatomico
(
   idSitioAdmon         int not null  comment '',
   nombreSitioAnatomico varchar(100) not null  comment '',
   primary key (idSitioAdmon)
);

/*==============================================================*/
/* Table: tipoAnalisis                                          */
/*==============================================================*/
create table dnm_fv_si.CAT_tipoAnalisis
(
   idTipoAnalisis       int not null  comment '',
   nombreTipoAnalisis   varchar(300) not null  comment '',
   primary key (idTipoAnalisis)
);

/*==============================================================*/
/* Table: tipoEvento                                            */
/*==============================================================*/
create table dnm_fv_si.CAT_tipoEvento
(
   idEvento             int not null  comment '',
   nombreEvento         varchar(300) not null  comment '',
   estado               tinyint not null default 1  comment '',
   primary key (idEvento)
);

/*==============================================================*/
/* Table: tipoNotificacion                                      */
/*==============================================================*/
create table dnm_fv_si.CAT_tipoNotificacion
(
   idTipoNotificacion   int not null  comment '',
   nombreNotificacion   varchar(300) not null  comment '',
   estado               tinyint not null default 1  comment '',
   primary key (idTipoNotificacion)
);

/*==============================================================*/
/* Table: tipoNotificador                                       */
/*==============================================================*/
create table dnm_fv_si.CAT_tipoNotificador
(
   idNotificador        int not null  comment '',
   nombreNotificador    varchar(50) not null  comment '',
   primary key (idNotificador)
);

/*==============================================================*/
/* Table: unidadEfectora                                        */
/*==============================================================*/
create table dnm_fv_si.CAT_unidadEfectora
(
   idEfectora           int not null  comment '',
   nombreEfectora       varchar(120) not null  comment '',
   primary key (idEfectora)
);

