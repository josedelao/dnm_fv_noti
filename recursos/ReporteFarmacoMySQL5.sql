/*==============================================================*/
/* Database name:  dnm_fv_si                                    */
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     23/6/2021 16:38:09                           */
/*==============================================================*/


alter table FV.ciudadanoNotificador 
   drop foreign key FK_CIUDADAN_REFERENCE_EVENTORE;

alter table FV.detalleEmbarazoPaciente 
   drop foreign key FK_DETALLEE_REFERENCE_PACIENTE;

alter table FV.detallevacunaMedicamento 
   drop foreign key FK_DETALLEV_REFERENCE_ESTABLEC;

alter table FV.detallevacunaMedicamento 
   drop foreign key FK_DETALLEV_REFERENCE_NUMERODO;

alter table FV.detallevacunaMedicamento 
   drop foreign key FK_DETALLEV_REFERENCE_MARCOAPP;

alter table FV.detallevacunaMedicamento 
   drop foreign key FK_DETALLEV_REFERENCE_MEDICAME;

alter table FV.detallevacunaMedicamento 
   drop foreign key FK_DETALLEV_REFERENCE_SITIOANA;

alter table FV.eventoConcomitantes 
   drop foreign key FK_EVENTOCO_REFERENCE_REACCION;

alter table FV.eventoReporte 
   drop foreign key FK_EVENTORE_REFERENCE_RAZONSER;

alter table FV.eventoReporte 
   drop foreign key FK_EVENTORE_REFERENCE_TIPOEVEN;

alter table FV.eventoReporte 
   drop foreign key FK_EVENTORE_REFERENCE_REPORTE;

alter table FV.examenesClinicos 
   drop foreign key FK_EXAMENES_REFERENCE_TIPOANAL;

alter table FV.examenesClinicos 
   drop foreign key FK_EXAMENES_REFERENCE_HISTORIA;

alter table FV.historiaClinicaEvento 
   drop foreign key FK_HISTORIA_REFERENCE_ACCIONTO;

alter table FV.medicamentoEventoReporte 
   drop foreign key FK_MEDICAME_REFERENCE_DETALLEM;

alter table FV.pacienteEvenRep 
   drop foreign key FK_PACIENTE_REFERENCE_DETALLEP;

alter table FV.profesionalNotificador 
   drop foreign key FK_PROFESIO_REFERENCE_TIPONOTI;

alter table FV.profesionalNotificador 
   drop foreign key FK_PROFESIO_REFERENCE_UNIDADEF;

alter table FV.profesionalNotificador 
   drop foreign key FK_PROFESIO_REFERENCE_ESTABLEC;

alter table FV.profesionalNotificador 
   drop foreign key FK_PROFESIO_REFERENCE_EVENTORE;

alter table FV.reaccionEventoReporte 
   drop foreign key FK_REACCION_REFERENCE_EVENTORE;

alter table FV.reaccionEventoReporte 
   drop foreign key FK_REACCION_REFERENCE_HISTORIA;

alter table FV.reaccionEventoReporte 
   drop foreign key FK_REACCION_REFERENCE_RESULTAD;

alter table FV.reaccionEventoReporte 
   drop foreign key FK_REACCION_REFERENCE_DETALLEM;

alter table FV.reaccionEventoReporte 
   drop foreign key FK_REACCION_REFERENCE_LLT;

alter table FV.reaccionEventoReporte 
   drop foreign key FK_REACCION_REFERENCE_PACIENTE;

alter table FV.reaccionEventoReporte 
   drop foreign key FK_REACCION_REFERENCE_MEDICAME;

alter table FV.reporte 
   drop foreign key FK_REPORTE_REFERENCE_TIPONOTI;

alter table FV.reporte 
   drop foreign key FK_REPORTE_REFERENCE_ESTADORE;

drop table if exists CAT.accionTomada;


alter table FV.ciudadanoNotificador 
   drop foreign key FK_CIUDADAN_REFERENCE_EVENTORE;

drop table if exists FV.ciudadanoNotificador;


alter table FV.detalleEmbarazoPaciente 
   drop foreign key FK_DETALLEE_REFERENCE_PACIENTE;

drop table if exists FV.detalleEmbarazoPaciente;

drop table if exists FV.detalleMedicamento;

drop table if exists FV.detalleMuerteEvenRep;

drop table if exists FV.detalleProporcionPaciente;


alter table FV.detallevacunaMedicamento 
   drop foreign key FK_DETALLEV_REFERENCE_NUMERODO;

alter table FV.detallevacunaMedicamento 
   drop foreign key FK_DETALLEV_REFERENCE_MARCOAPP;

alter table FV.detallevacunaMedicamento 
   drop foreign key FK_DETALLEV_REFERENCE_MEDICAME;

alter table FV.detallevacunaMedicamento 
   drop foreign key FK_DETALLEV_REFERENCE_SITIOANA;

alter table FV.detallevacunaMedicamento 
   drop foreign key FK_DETALLEV_REFERENCE_ESTABLEC;

drop table if exists FV.detallevacunaMedicamento;

drop table if exists CAT.establecimientosSalud;

drop table if exists CAT.estadoReporte;


alter table FV.eventoConcomitantes 
   drop foreign key FK_EVENTOCO_REFERENCE_REACCION;

drop table if exists FV.eventoConcomitantes;


alter table FV.eventoReporte 
   drop foreign key FK_EVENTORE_REFERENCE_RAZONSER;

alter table FV.eventoReporte 
   drop foreign key FK_EVENTORE_REFERENCE_TIPOEVEN;

alter table FV.eventoReporte 
   drop foreign key FK_EVENTORE_REFERENCE_REPORTE;

drop table if exists FV.eventoReporte;


alter table FV.examenesClinicos 
   drop foreign key FK_EXAMENES_REFERENCE_TIPOANAL;

alter table FV.examenesClinicos 
   drop foreign key FK_EXAMENES_REFERENCE_HISTORIA;

drop table if exists FV.examenesClinicos;


alter table FV.historiaClinicaEvento 
   drop foreign key FK_HISTORIA_REFERENCE_ACCIONTO;

drop table if exists FV.historiaClinicaEvento;

drop table if exists MDRA.llt;

drop table if exists CAT.marcoAppVacuna;


alter table FV.medicamentoEventoReporte 
   drop foreign key FK_MEDICAME_REFERENCE_DETALLEM;

drop table if exists FV.medicamentoEventoReporte;

drop table if exists CAT.numeroDosis;


alter table FV.pacienteEvenRep 
   drop foreign key FK_PACIENTE_REFERENCE_DETALLEP;

drop table if exists FV.pacienteEvenRep;


alter table FV.profesionalNotificador 
   drop foreign key FK_PROFESIO_REFERENCE_TIPONOTI;

alter table FV.profesionalNotificador 
   drop foreign key FK_PROFESIO_REFERENCE_UNIDADEF;

alter table FV.profesionalNotificador 
   drop foreign key FK_PROFESIO_REFERENCE_ESTABLEC;

alter table FV.profesionalNotificador 
   drop foreign key FK_PROFESIO_REFERENCE_EVENTORE;

drop table if exists FV.profesionalNotificador;

drop table if exists CAT.razonSeriedad;


alter table FV.reaccionEventoReporte 
   drop foreign key FK_REACCION_REFERENCE_EVENTORE;

alter table FV.reaccionEventoReporte 
   drop foreign key FK_REACCION_REFERENCE_RESULTAD;

alter table FV.reaccionEventoReporte 
   drop foreign key FK_REACCION_REFERENCE_HISTORIA;

alter table FV.reaccionEventoReporte 
   drop foreign key FK_REACCION_REFERENCE_DETALLEM;

alter table FV.reaccionEventoReporte 
   drop foreign key FK_REACCION_REFERENCE_LLT;

alter table FV.reaccionEventoReporte 
   drop foreign key FK_REACCION_REFERENCE_PACIENTE;

alter table FV.reaccionEventoReporte 
   drop foreign key FK_REACCION_REFERENCE_MEDICAME;

drop table if exists FV.reaccionEventoReporte;


alter table FV.reporte 
   drop foreign key FK_REPORTE_REFERENCE_TIPONOTI;

alter table FV.reporte 
   drop foreign key FK_REPORTE_REFERENCE_ESTADORE;

drop table if exists FV.reporte;

drop table if exists CAT.resultadoPaciente;

drop table if exists CAT.sitioAnatomico;

drop table if exists CAT.tipoAnalisis;

drop table if exists CAT.tipoEvento;

drop table if exists CAT.tipoNotificacion;

drop table if exists CAT.tipoNotificador;

drop table if exists CAT.unidadEfectora;

/*==============================================================*/
/* Table: accionTomada                                          */
/*==============================================================*/
create table CAT.accionTomada
(
   idAccion             int not null  comment '',
   nombreAccion         varchar(300) not null  comment '',
   primary key (idAccion)
);

/*==============================================================*/
/* Table: ciudadanoNotificador                                  */
/*==============================================================*/
create table FV.ciudadanoNotificador
(
   idCiudadanoEvenRep   int not null  comment '',
   idEventoReporte      int  comment '',
   nombre               varchar(100)  comment '',
   telefonoJvp          varchar(100)  comment '',
   emailJvp             text  comment '',
   primary key (idCiudadanoEvenRep)
);

/*==============================================================*/
/* Table: detalleEmbarazoPaciente                               */
/*==============================================================*/
create table FV.detalleEmbarazoPaciente
(
   idEmbarazo           int not null  comment '',
   idPacienteEvenRep    int  comment '',
   gestacionalMeses     int  comment '',
   gestacioanlSemanas   int  comment '',
   gestacionalDias      int  comment '',
   gestacionalTrimestre int  comment '',
   detallesEmbarazo     text  comment '',
   primary key (idEmbarazo)
);

/*==============================================================*/
/* Table: detalleMedicamento                                    */
/*==============================================================*/
create table FV.detalleMedicamento
(
   idDetalleMedicamento int not null  comment '',
   registroMedicamento_5 varchar(20)  comment '',
   nombreRegistro       text  comment '',
   principiosActivosMedicamento text  comment '',
   laboratorioRegistro  text  comment '',
   formaFarmaceuticaReg varchar(50)  comment '',
   presentacionRegistro text  comment '',
   numeroLoteRegistro   varchar(300)  comment '',
   fechaExpRegistro     datetime  comment '',
   primary key (idDetalleMedicamento)
);

/*==============================================================*/
/* Table: detalleMuerteEvenRep                                  */
/*==============================================================*/
create table FV.detalleMuerteEvenRep
(
   idDetalleMuerteEvenRep int not null  comment '',
   fechaMuertePaciente  date  comment '',
   causaMuerte          text  comment '',
   autopsiaPaciente     char(1) default 'N'  comment '',
   resultadoAutopsia    text  comment '',
   primary key (idDetalleMuerteEvenRep)
);

/*==============================================================*/
/* Table: detalleProporcionPaciente                             */
/*==============================================================*/
create table FV.detalleProporcionPaciente
(
   idDetalleProporcion  int not null  comment '',
   edadAnios            int  comment '',
   edadMeses            int  comment '',
   edadSemanas          int  comment '',
   edadDias             int  comment '',
   edadHoras            int  comment '',
   edadMinutos          int  comment '',
   peso                 numeric(18,2)  comment '',
   pesoMedida           varchar(25) default 'Libras'  comment '',
   altura               numeric(18,2)  comment '',
   alturaMedida         varchar(25) default 'mts'  comment '',
   pesoNacimiento       numeric(18,2)  comment '',
   primary key (idDetalleProporcion)
);

/*==============================================================*/
/* Table: detallevacunaMedicamento                              */
/*==============================================================*/
create table FV.detallevacunaMedicamento
(
   idDetalleVacuna      int not null  comment '',
   idMedicamentoEvenRep int  comment '',
   idSitioAdmon         int  comment '',
   idMarcoApp           int  comment '',
   idNumeroDosis        int  comment '',
   idInstitucion        int  comment '',
   dosisVacuna          text  comment '',
   temperaturaVacuna    varchar(25)  comment '',
   primary key (idDetalleVacuna)
);

/*==============================================================*/
/* Table: establecimientosSalud                                 */
/*==============================================================*/
create table CAT.establecimientosSalud
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
create table CAT.estadoReporte
(
   idEstado             int not null auto_increment  comment '',
   descripcion          varchar(100) not null  comment '',
   estadoProceso        varchar(100)  comment '',
   primary key (idEstado)
);

/*==============================================================*/
/* Table: eventoConcomitantes                                   */
/*==============================================================*/
create table FV.eventoConcomitantes
(
   idEventoConcomitantes int not null  comment '',
   idReaccionEvenReo    int  comment '',
   idPrincioActivo      varchar(50)  comment '',
   dosis                text  comment '',
   presentacion         text  comment '',
   lote                 varchar(200)  comment '',
   viaAdministracion    varchar(200)  comment '',
   sitioAnatomico       varchar(200)  comment '',
   fechaVencimiento     date  comment '',
   temperatura          varchar(50)  comment '',
   laboratorioProductor varchar(200)  comment '',
   primary key (idEventoConcomitantes)
);

/*==============================================================*/
/* Table: eventoReporte                                         */
/*==============================================================*/
create table FV.eventoReporte
(
   idEventoReporte      int not null  comment '',
   eventoSerio          char(1) default 'N'  comment '',
   idSeriedad           int  comment '',
   idEvento             int  comment '',
   idReporte            int  comment '',
   primary key (idEventoReporte)
);

/*==============================================================*/
/* Table: examenesClinicos                                      */
/*==============================================================*/
create table FV.examenesClinicos
(
   idExamenClinico      int not null  comment '',
   idTipoAnalisis       int  comment '',
   idHistoriaClinicaEvento int  comment '',
   fechaMuestra         date  comment '',
   fechaResultados      date  comment '',
   resultado            text  comment '',
   primary key (idExamenClinico)
);

/*==============================================================*/
/* Table: historiaClinicaEvento                                 */
/*==============================================================*/
create table FV.historiaClinicaEvento
(
   idHistoriaClinicaEvento int not null  comment '',
   idAccion             int  comment '',
   numeroExpediente     varchar(50)  comment '',
   diagnosticoClinico   text  comment '',
   descripcionCuadro    text  comment '',
   antecedentesMedicos  text  comment '',
   reaccionOtroMedicamento char(1) default 'N'  comment '',
   nombreReacciones     text  comment '',
   otrosProcMedicos     text  comment '',
   fechaAltaPaciente    date  comment '',
   primary key (idHistoriaClinicaEvento)
);

/*==============================================================*/
/* Table: llt                                                   */
/*==============================================================*/
create table MDRA.llt
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
create table CAT.marcoAppVacuna
(
   idMarcoApp           int not null  comment '',
   marcoAplicacion      varchar(300) not null  comment '',
   primary key (idMarcoApp)
);

/*==============================================================*/
/* Table: medicamentoEventoReporte                              */
/*==============================================================*/
create table FV.medicamentoEventoReporte
(
   idMedicamentoEvenRep int not null  comment '',
   idDetalleMedicamento int  comment '',
   indicacionesMedicamento text  comment '',
   idPrincipoActivo     varchar(50)  comment '',
   concentracionPA      varchar(50)  comment '',
   idUnidadMedida       varchar(20)  comment '',
   regimenDosificacion  text  comment '',
   idViaAdmon           numeric(8,0)  comment '',
   fechaInicioAdmon     date  comment '',
   fechaFinAdmon        date  comment '',
   duracionAdmon        varchar(100)  comment '',
   esVacuna             char(1)  comment '',
   primary key (idMedicamentoEvenRep)
);

/*==============================================================*/
/* Table: numeroDosis                                           */
/*==============================================================*/
create table CAT.numeroDosis
(
   idNumeroDosis        int not null auto_increment  comment '',
   descripcionNumeroDosis varchar(100) not null  comment '',
   primary key (idNumeroDosis)
);

/*==============================================================*/
/* Table: pacienteEvenRep                                       */
/*==============================================================*/
create table FV.pacienteEvenRep
(
   idPacienteEvenRep    int not null  comment '',
   idDetalleProporcion  int  comment '',
   paisResidencia       int  comment '',
   departamentoResidencia int  comment '',
   municipioResidencia  int  comment '',
   inicialesPaciente    varchar(30) not null  comment '',
   genero               char(1)  comment '',
   fechaNacimiento      date  comment '',
   embarazoPaciente     char(1) default 'N'  comment '',
   nombrePaciente       varchar(50)  comment '',
   apellidoPaciente     varchar(50)  comment '',
   edadDesconocida      tinyint not null default 0  comment '',
   primary key (idPacienteEvenRep)
);

/*==============================================================*/
/* Table: profesionalNotificador                                */
/*==============================================================*/
create table FV.profesionalNotificador
(
   idProfesionalEvenRep int not null  comment '',
   idNotificador        int  comment '',
   idEfectora           int  comment '',
   idInstitucion        int  comment '',
   idEventoReporte      int  comment '',
   idProfesional        varchar(20)  comment '',
   idReferente          varchar(20)  comment '',
   primary key (idProfesionalEvenRep)
);

/*==============================================================*/
/* Table: razonSeriedad                                         */
/*==============================================================*/
create table CAT.razonSeriedad
(
   idSeriedad           int not null  comment '',
   nombreSeriedad       varchar(300) not null  comment '',
   primary key (idSeriedad)
);

/*==============================================================*/
/* Table: reaccionEventoReporte                                 */
/*==============================================================*/
create table FV.reaccionEventoReporte
(
   idReaccionEvenReo    int not null  comment '',
   idEventoReporte      int  comment '',
   idCondicion          int  comment '',
   lltCode              national varchar(20)  comment '',
   idPacienteEvenRep    int  comment '',
   idHistoriaClinicaEvento int  comment '',
   idMedicamentoEvenRep int  comment '',
   idDetalleMuerteEvenRep int  comment '',
   fechaDeteccion       datetime  comment '',
   fechaIngresoDeteccion datetime  comment '',
   fechaInicioReaccion  datetime  comment '',
   intervaloTiempoReaccion varchar(100)  comment '',
   fechaResolucionEvento datetime  comment '',
   tiempoDuracion       varchar(100)  comment '',
   primary key (idReaccionEvenReo)
);

/*==============================================================*/
/* Table: reporte                                               */
/*==============================================================*/
create table FV.reporte
(
   idReporte            int not null  comment '',
   idEstado             int not null default 1  comment '',
   idTipoNotificacion   int  comment '',
   numeroReporte        varchar(12)  comment '',
   passwordReporte      varchar(8)  comment '',
   tituloReporte        text  comment '',
   fechaReporte         datetime  comment '',
   fechaNotificacion    datetime  comment '',
   origenNotificacion   tinyint default 1  comment '',
   primary key (idReporte)
);

/*==============================================================*/
/* Table: resultadoPaciente                                     */
/*==============================================================*/
create table CAT.resultadoPaciente
(
   idCondicion          int not null  comment '',
   condicionPaciente    varchar(300) not null  comment '',
   primary key (idCondicion)
);

/*==============================================================*/
/* Table: sitioAnatomico                                        */
/*==============================================================*/
create table CAT.sitioAnatomico
(
   idSitioAdmon         int not null  comment '',
   nombreSitioAnatomico varchar(100) not null  comment '',
   primary key (idSitioAdmon)
);

/*==============================================================*/
/* Table: tipoAnalisis                                          */
/*==============================================================*/
create table CAT.tipoAnalisis
(
   idTipoAnalisis       int not null  comment '',
   nombreTipoAnalisis   varchar(300) not null  comment '',
   primary key (idTipoAnalisis)
);

/*==============================================================*/
/* Table: tipoEvento                                            */
/*==============================================================*/
create table CAT.tipoEvento
(
   idEvento             int not null  comment '',
   nombreEvento         varchar(300) not null  comment '',
   estado               tinyint not null default 1  comment '',
   primary key (idEvento)
);

/*==============================================================*/
/* Table: tipoNotificacion                                      */
/*==============================================================*/
create table CAT.tipoNotificacion
(
   idTipoNotificacion   int not null  comment '',
   nombreNotificacion   varchar(300) not null  comment '',
   estado               tinyint not null default 1  comment '',
   primary key (idTipoNotificacion)
);

/*==============================================================*/
/* Table: tipoNotificador                                       */
/*==============================================================*/
create table CAT.tipoNotificador
(
   idNotificador        int not null  comment '',
   nombreNotificador    varchar(50) not null  comment '',
   primary key (idNotificador)
);

/*==============================================================*/
/* Table: unidadEfectora                                        */
/*==============================================================*/
create table CAT.unidadEfectora
(
   idEfectora           int not null  comment '',
   nombreEfectora       varchar(120) not null  comment '',
   primary key (idEfectora)
);

alter table FV.ciudadanoNotificador add constraint FK_CIUDADAN_REFERENCE_EVENTORE foreign key (idEventoReporte)
      references FV.eventoReporte (idEventoReporte);

alter table FV.detalleEmbarazoPaciente add constraint FK_DETALLEE_REFERENCE_PACIENTE foreign key (idPacienteEvenRep)
      references FV.pacienteEvenRep (idPacienteEvenRep);

alter table FV.detallevacunaMedicamento add constraint FK_DETALLEV_REFERENCE_ESTABLEC foreign key (idInstitucion)
      references CAT.establecimientosSalud (idInstitucion);

alter table FV.detallevacunaMedicamento add constraint FK_DETALLEV_REFERENCE_NUMERODO foreign key (idNumeroDosis)
      references CAT.numeroDosis (idNumeroDosis);

alter table FV.detallevacunaMedicamento add constraint FK_DETALLEV_REFERENCE_MARCOAPP foreign key (idMarcoApp)
      references CAT.marcoAppVacuna (idMarcoApp);

alter table FV.detallevacunaMedicamento add constraint FK_DETALLEV_REFERENCE_MEDICAME foreign key (idMedicamentoEvenRep)
      references FV.medicamentoEventoReporte (idMedicamentoEvenRep);

alter table FV.detallevacunaMedicamento add constraint FK_DETALLEV_REFERENCE_SITIOANA foreign key (idSitioAdmon)
      references CAT.sitioAnatomico (idSitioAdmon);

alter table FV.eventoConcomitantes add constraint FK_EVENTOCO_REFERENCE_REACCION foreign key (idReaccionEvenReo)
      references FV.reaccionEventoReporte (idReaccionEvenReo);

alter table FV.eventoReporte add constraint FK_EVENTORE_REFERENCE_RAZONSER foreign key (idSeriedad)
      references CAT.razonSeriedad (idSeriedad);

alter table FV.eventoReporte add constraint FK_EVENTORE_REFERENCE_TIPOEVEN foreign key (idEvento)
      references CAT.tipoEvento (idEvento);

alter table FV.eventoReporte add constraint FK_EVENTORE_REFERENCE_REPORTE foreign key (idReporte)
      references FV.reporte (idReporte);

alter table FV.examenesClinicos add constraint FK_EXAMENES_REFERENCE_TIPOANAL foreign key (idTipoAnalisis)
      references CAT.tipoAnalisis (idTipoAnalisis);

alter table FV.examenesClinicos add constraint FK_EXAMENES_REFERENCE_HISTORIA foreign key (idHistoriaClinicaEvento)
      references FV.historiaClinicaEvento (idHistoriaClinicaEvento);

alter table FV.historiaClinicaEvento add constraint FK_HISTORIA_REFERENCE_ACCIONTO foreign key (idAccion)
      references CAT.accionTomada (idAccion);

alter table FV.medicamentoEventoReporte add constraint FK_MEDICAME_REFERENCE_DETALLEM foreign key (idDetalleMedicamento)
      references FV.detalleMedicamento (idDetalleMedicamento);

alter table FV.pacienteEvenRep add constraint FK_PACIENTE_REFERENCE_DETALLEP foreign key (idDetalleProporcion)
      references FV.detalleProporcionPaciente (idDetalleProporcion);

alter table FV.profesionalNotificador add constraint FK_PROFESIO_REFERENCE_TIPONOTI foreign key (idNotificador)
      references CAT.tipoNotificador (idNotificador);

alter table FV.profesionalNotificador add constraint FK_PROFESIO_REFERENCE_UNIDADEF foreign key (idEfectora)
      references CAT.unidadEfectora (idEfectora);

alter table FV.profesionalNotificador add constraint FK_PROFESIO_REFERENCE_ESTABLEC foreign key (idInstitucion)
      references CAT.establecimientosSalud (idInstitucion);

alter table FV.profesionalNotificador add constraint FK_PROFESIO_REFERENCE_EVENTORE foreign key (idEventoReporte)
      references FV.eventoReporte (idEventoReporte);

alter table FV.reaccionEventoReporte add constraint FK_REACCION_REFERENCE_EVENTORE foreign key (idEventoReporte)
      references FV.eventoReporte (idEventoReporte);

alter table FV.reaccionEventoReporte add constraint FK_REACCION_REFERENCE_HISTORIA foreign key (idHistoriaClinicaEvento)
      references FV.historiaClinicaEvento (idHistoriaClinicaEvento);

alter table FV.reaccionEventoReporte add constraint FK_REACCION_REFERENCE_RESULTAD foreign key (idCondicion)
      references CAT.resultadoPaciente (idCondicion);

alter table FV.reaccionEventoReporte add constraint FK_REACCION_REFERENCE_DETALLEM foreign key (idDetalleMuerteEvenRep)
      references FV.detalleMuerteEvenRep (idDetalleMuerteEvenRep);

alter table FV.reaccionEventoReporte add constraint FK_REACCION_REFERENCE_LLT foreign key (lltCode)
      references MDRA.llt (lltCode);

alter table FV.reaccionEventoReporte add constraint FK_REACCION_REFERENCE_PACIENTE foreign key (idPacienteEvenRep)
      references FV.pacienteEvenRep (idPacienteEvenRep);

alter table FV.reaccionEventoReporte add constraint FK_REACCION_REFERENCE_MEDICAME foreign key (idMedicamentoEvenRep)
      references FV.medicamentoEventoReporte (idMedicamentoEvenRep);

alter table FV.reporte add constraint FK_REPORTE_REFERENCE_TIPONOTI foreign key (idTipoNotificacion)
      references CAT.tipoNotificacion (idTipoNotificacion);

alter table FV.reporte add constraint FK_REPORTE_REFERENCE_ESTADORE foreign key (idEstado)
      references CAT.estadoReporte (idEstado);

