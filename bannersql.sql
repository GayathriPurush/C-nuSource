Create Table AdsDataTable 
( 
  OrderId int,
    AlternateText VarChar(200), 
  ImageUrl VarChar(200), 
  NavigateUrl VarChar(200),
  IsAdActive bit 
)


insert into AdsDataTable values(1,'Hi1','Images/side.jpg','noth',0);
insert into AdsDataTable values(2,'hi2','Images/im.png','noth2',1);
insert into AdsDataTable values(3,'hi3','Images/im1.png','noth3',1);
