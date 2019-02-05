--***************************************************************************
--                    ���� �������� ������ � T-SQL
--***************************************************************************

------------------------------------ Binary ---------------------------------

-- ���� �������� ������ Binary. 
-- �������� �������� �� 1 �� 8000 ����. 

-- ���� �������� ������ ������������ ��� Binary(n), 
-- ��� n - ���������� ������������ ���������� ����(����������� n = 8000).

PRINT 'Binary'

DECLARE @binary Binary(1) = 16;
PRINT @binary;

----------------------------------- VarBinary -------------------------------

-- ���� �������� ������ VarBinary. 
-- �������� �������� �� 1 �� 2^31 ����. 

-- ���� �������� ������ ������������ ��� VarBinary(n/max), 
-- ��� n - ���������� ������������ ���������� ����(����������� n = 8000),
-- ��� �� ������ n ������������ max �� ������������ ���������� ���� ���������� 2^31.

PRINT 'VarBinary'

DECLARE @varBinary VarBinary(max) = 2147483647;
PRINT @varBinary;

-----------------------------------------------------------------------------