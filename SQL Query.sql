-- Create table 
CREATE TABLE [dbo].[users] (
  id integer   identity (1,1),
  Username VARCHAR(50) not null,
  UserEmailId VARCHAR(50) not null,
  isNewUser   bit default 1
);

-- Insert to table 
insert into [dbo].[users] values('Alpa','alpa@gmial.com',1)
insert into [dbo].[users] values('Nic','Nic@gmial.com',1)
insert into [dbo].[users] values('test','test@gmial.com',1)
insert into [dbo].[users] values('Pratic','Pratic@gmial.com',1)
insert into [dbo].[users] values('Raj','Raj@gmial.com',1)

--alter table [dbo].[users] add isNewUser bit 
update  [dbo].[users] set isNewUser=0

--select from dbo.users where isNewUser=1
select * from [dbo].[users] 

CREATE PROCEDURE [dbo].[UpdateIsNew]
AS
update  [dbo].[users] set isNewUser=0
GO;

insert into [dbo].[users] values('Alpa1','alpa1@gmial.com',1)