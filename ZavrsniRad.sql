drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;

create table NBA(
sifra int not null primary key auto_increment,
sezona int not null
);

create table konferencija(
sifra int not null primary key auto_increment,
nazivkonferencije varchar(30) not null,
NBA int not null
);

create table divizija(
sifra int not null primary key auto_increment,
nazivdivizije varchar(30) not null,
konferencija int 
);

create table klub(
sifra int not null primary key auto_increment,
divizija  int not null,
grad varchar (20) not null
);

create table igrac(
sifra int not null primary key auto_increment,
ime varchar(30) not null,
prezime varchar(30) not null,
pozicija varchar(30) ,
datumrodjenja datetime , 
statistika int,
klub int
);

create table statistika(
sifra int not null primary key auto_increment,
poeni decimal(18,2),
skokovi decimal (18,2),
asist decimal (18,2),
minutaza double 
);


alter table konferencija add foreign key (NBA) references NBA(sifra);

alter table divizija add foreign key (konferencija) references konferencija (sifra);

alter table klub add foreign key (divizija) references divizija (sifra);

alter table igrac add foreign key (klub) references klub(sifra);

alter table igrac add foreign key(statistika) references statistika(sifra);



