create table Addhit(Addid int not null,Hits int);


create procedure AddSP 
(
@url varchar(200)
)
as
declare @adid int
select @adid= Orderid from AdsDataTable where NavigateUrl=@url

if exists (select Addid from Addhit where Addid=@adid)
update  Addhit  set Hits=Hits+1 where Addid=@adid
else
INSERT INTO Addhit values (@adid,1)
RETURN




      
       select * from Addhit;