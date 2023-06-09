create database slot7;
use slot7;
go

create table dshang(
	ID_hang int primary key,
	Name_hang varchar(30) not null,
	Diachi_hang varchar(255) not null,
	Phone_hang varchar(10) not null
);
 create table dslienket(
	ID_Store int primary key,
	ID_hang int not null,
	ID_sp int not null,
	Soluong int not null,
	foreign key (ID_hang) references dshang(ID_hang),
	foreign key (ID_sp) references dssanpham(ID_sp)
 );
 create table dssanpham(
	ID_sp int primary key,
	Name_sp varchar(30) not null,
	Mota varchar(255) not null,
	Donvi varchar(20) not null,
	Gia decimal not null
 );
 insert into dshang(ID_hang,Name_hang,Diachi_hang,Phone_hang)
 values
	(123,'ASUS','USA','987654321'),
	(456,'NOKIA','JAPAN','123456789'),
	(234,'SAMSUNG','KOREA','342135678');

insert into dssanpham(ID_sp,Name_sp,Mota,Donvi,Gia)
values
	(1,'May tinh','May nhap','Chiec',1000),
	(2,'Dien thoai','dien thoai dang hot','chiec',200),
	(3,'May in','loai trung binh','chiec',100);
insert into dslienket(ID_store,ID_hang,ID_sp,Soluong)
values
	(122,123,1,10),
	(122,456,2,200),
	(122,234,3,10);

select*from dshang;
select*from dssanpham;