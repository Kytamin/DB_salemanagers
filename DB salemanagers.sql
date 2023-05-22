create database SaleManagers;
create table Customer(
cID int AUTO_INCREMENT PRIMARY KEY,
cName varchar(30),
cAge int not null
);
create table OrderTable(
oID int AUTO_INCREMENT PRIMARY KEY,
cID int,
foreign key(cID) references Customer(cID),
oDate datetime not null,
oTotalPrice int not null
);
create table Product(
pID int auto_increment primary key,
pName varchar(30) not null,
pPrice int not null
);
create table OrderDetail(
oID int,
foreign key(oID) references OrderTable(oID),
pID int,
foreign key(pID) references Product(pID),
odQTY int not null
)



















