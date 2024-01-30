CREATE TABLE ���������� (
    ����������_ID INT PRIMARY KEY,
    ��� VARCHAR(50),
    ������� VARCHAR(50),
    ����_�������� DATE,
    ����� VARCHAR(100)
);

CREATE TABLE ����������� (
    �����������_ID INT PRIMARY KEY,
    ��� VARCHAR(50),
    ������� VARCHAR(50),
    ������������� VARCHAR(50),
    �������_������ DECIMAL(10, 2)
);

CREATE TABLE ������� (
    �������_ID INT PRIMARY KEY,
    �������� VARCHAR(100),
    ����_���������� DATE,
    ��������� VARCHAR(50)
);

CREATE TABLE ���������_�������� (
    ���������_ID INT PRIMARY KEY,
    ������ INTEGER,
    ����_����� DATE,
    ����������_ID INTEGER REFERENCES ����������(����������_ID),
    �������_ID INTEGER REFERENCES �������(�������_ID),
    �����������_ID INTEGER REFERENCES �����������(�����������_ID)
);

CREATE TABLE ������_������������ (
    ������_ID INT PRIMARY KEY,
    �����_������ DECIMAL(10, 2),
    ����_������ DATE,
    �����������_ID INTEGER REFERENCES �����������(�����������_ID)
);

