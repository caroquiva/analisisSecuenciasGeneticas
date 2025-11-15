create table secuencia(
id_secuencia varchar(200) primary key,
secuencia mediumtext
);

create table alineamiento(
id_alineamiento BIGINT AUTO_INCREMENT primary key,
primeraSecuencia varchar(200),
segundaSecuencia varchar(200),
longitudPrimera numeric,
longitudSegunda numeric,
secuenciaMasLarga varchar(200),
similitud varchar(100),
FOREIGN KEY (primeraSecuencia) references secuencia(id_secuencia),
FOREIGN KEY (segundaSecuencia) references secuencia(id_secuencia)
);

create table tipoEstructura(
id_tipoEstructura bigint auto_increment primary key,
secuencia varchar(200),
tipoEstructura varchar(150),
porcentajeAlfa double,
porcentajeBeta double,
foreign key (secuencia) references secuencia(id_secuencia)
);

create table motivos(
id_motivos bigint auto_increment primary key,
secuencia varchar(200),
motivo varchar(5),
motivosEncontrados numeric,
foreign key (secuencia) references secuencia(id_secuencia)
);


drop table motivos;
drop table tipoestructura;
drop table alineamiento;
drop table secuencia;