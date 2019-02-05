USE ShopDB; -- ��������� �� ������� ����� ������������
GO

-------------------------------------------------------------------------
				/* ������ ������� � ������ MyFriends*/
-------------------------------------------------------------------------
CREATE TABLE MyFriends
(
	FrndId smallint IDENTITY NOT NULL,
	FstName Varchar(20) NOT NULL,
	LstName Varchar(20) NULL,
	BthDate date NULL,
	Ntel char(10) NOT NULL
)
GO -- ����� ������ ����������.

-------------------------------------------------------------------------
	-- ��������� sp_help ���������� �������� �� ������� ���� ������.
-------------------------------------------------------------------------
--EXEC sp_help MyFriends  
exec sp_help MyFriends

-------------------------------------------------------------------------
				/* �������� ������� INSERT */
-------------------------------------------------------------------------

-- ���������� ������ � ������� MyFreand
INSERT INTO MyFriends             -- �������� ����� INTO ����� �� ������������.
(FstName,LstName, BthDate, Ntel) -- �������� ������� ������ ������.
VALUES
('Max', 'Petrov', '02/03/1988', '093*******'); -- �������� ������.
GO

insert into MyFriends2 (FirstName,LastName,BirthDay,TelefoneNumber) 
values ('Max','Petrov','02/03/1988','093****');
go
-------------------------------------------------------------------------

-- ����� ���� �������� ������� ������������ �����.
INSERT INTO MyFriends
(LstName, FstName, BthDate, Ntel) -- �������� ������� ������ ������.
VALUES
('Martinov', 'Kostya', '01/03/1986', '097*******'); -- �������� ������.
GO
-------------------------------------------------------------------------

INSERT INTO MyFriends
 -- �������� ������� ������ ������ �����������, ������ ���������� ������� �� ���������.
VALUES
('Vitia', 'Sokolov', '01/03/1986', '095*******'); -- �������� ������.
GO
-------------------------------------------------------------------------

INSERT INTO MyFriends
 -- �������� ������� ������ ������ �����������, ������ ���������� ������� �� ���������.
VALUES
('Sokolov', 'Vitia', '01/03/1986', '095*******'); -- �������� ������ (������ ����������� �����!).
GO

SELECT * FROM MyFriends
-------------------------------------------------------------------------

INSERT INTO MyFriends
VALUES 
 -- ������ ��������� ������� ���� ���������� ������������ NOT NULL
(NULL, 'Imelianov', '01/03/1986', '095*******'); -- �������� ������.
GO
-------------------------------------------------------------------------

INSERT INTO MyFriends
VALUES
-- ����������� ��������� ������� ���� ���������� ������������ NULL 
('Vitia', null, '01/03/1986', '095*******'); -- �������� ������.
GO
-------------------------------------------------------------------------

INSERT INTO MyFriends
(FstName,LstName,BthDate,Ntel) 
VALUES -- ������� � 2008 SQL, ����������� ������� ��������� ����� ������������
('Max', 'Petrov', '21/02/1988', '093*******'),
('Alex', 'Vare', '20/03/1990', '093*******'),
('Sergei', 'Smolnikov', '31/05/1991', '093*******'),
('Petr', 'Vitiushkin', '06/03/1989', '093*******')
GO
-------------------------------------------------------------------------

INSERT INTO MyFriends
-- �������� ������� ������ ������ ��� ���������� ����� �� �����������
VALUES
('Max', 'Petrov', '21/02/1988', '093*******'),
('Alex', 'Vare', '20/03/1990', '093*******'),
('Sergei', 'Smolnikov', '31/05/1991', '093*******'),
('Petr', 'Vitiushkin', '06/03/1989', '093*******')
GO
-------------------------------------------------------------------------
select*from MyFriends