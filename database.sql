create database project2 ;
create table project2.fruit(
   fruitID int unique not null auto_increment primary key ,
   fruitName varchar(20) not null unique,
   fruitPrice int 
) ;

create table project2.fruitIn(
  fruitInId int auto_increment not null unique,
  fruitID int ,
  fruitAmount int ,
  time_in datetime default current_timestamp ,
  constraint fk_fruit1 foreign key (fruitID) references project2.fruit(fruitID)
) ;

create table project2.fruitOut(
  OderID int unique not null auto_increment ,
  fruitID int ,
  fruitAmount_out int ,
  fruitPrice_out int ,
  time_out datetime default current_timestamp ,
  constraint fk_fruit2 foreign key (fruitID) references project2.fruit(fruitID)

  

) ;
create table project2.employee (
employeeID int unique auto_increment ,
username varchar(20) unique not null ,
passs varchar(20) ,
employeeName enum('NV','QL')

)

