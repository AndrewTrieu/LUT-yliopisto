CREATE TABLE Orders
(
  orderid        INT          NOT NULL,
  custid         INT          NULL,
  empid          INT          NOT NULL,
  orderdate      TIMESTAMP     NOT NULL,
  requireddate   TIMESTAMP     NOT NULL,
  shippeddate    TIMESTAMP     NULL,
  shipperid      INT          NOT NULL,
  freight        MONEY        NOT NULL
    CONSTRAINT DFT_Orders_freight DEFAULT(0),
  shipname       VARCHAR(40) NOT NULL,
  shipaddress    VARCHAR(60) NOT NULL,
  shipcity       VARCHAR(15) NOT NULL,
  shipregion     VARCHAR(15) NULL,
  shippostalcode VARCHAR(10) NULL,
  shipcountry    VARCHAR(15) NOT NULL 
) PARTITION BY RANGE (orderdate);

INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10248, 85, 5, '20060704 00:00:00.000', '20060801 00:00:00.000', '20060716 00:00:00.000', 3, 32.38, N'Ship to 85-B', N'6789 rue de l''Abbaye', N'Reims', NULL, N'10345', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10249, 79, 6, '20060705 00:00:00.000', '20060816 00:00:00.000', '20060710 00:00:00.000', 1, 11.61, N'Ship to 79-C', N'Luisenstr. 9012', N'Münster', NULL, N'10328', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10250, 34, 4, '20060708 00:00:00.000', '20060805 00:00:00.000', '20060712 00:00:00.000', 2, 65.83, N'Destination SCQXA', N'Rua do Paço, 7890', N'Rio de Janeiro', N'RJ', N'10195', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10251, 84, 3, '20060708 00:00:00.000', '20060805 00:00:00.000', '20060715 00:00:00.000', 1, 41.34, N'Ship to 84-A', N'3456, rue du Commerce', N'Lyon', NULL, N'10342', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10252, 76, 4, '20060709 00:00:00.000', '20060806 00:00:00.000', '20060711 00:00:00.000', 2, 51.30, N'Ship to 76-B', N'Boulevard Tirou, 9012', N'Charleroi', NULL, N'10318', N'Belgium');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10253, 34, 3, '20060710 00:00:00.000', '20060724 00:00:00.000', '20060716 00:00:00.000', 2, 58.17, N'Destination JPAIY', N'Rua do Paço, 8901', N'Rio de Janeiro', N'RJ', N'10196', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10254, 14, 5, '20060711 00:00:00.000', '20060808 00:00:00.000', '20060723 00:00:00.000', 2, 22.98, N'Destination YUJRD', N'Hauptstr. 1234', N'Bern', NULL, N'10139', N'Switzerland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10255, 68, 9, '20060712 00:00:00.000', '20060809 00:00:00.000', '20060715 00:00:00.000', 3, 148.33, N'Ship to 68-A', N'Starenweg 6789', N'Genève', NULL, N'10294', N'Switzerland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10256, 88, 3, '20060715 00:00:00.000', '20060812 00:00:00.000', '20060717 00:00:00.000', 2, 13.97, N'Ship to 88-B', N'Rua do Mercado, 5678', N'Resende', N'SP', N'10354', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10257, 35, 4, '20060716 00:00:00.000', '20060813 00:00:00.000', '20060722 00:00:00.000', 3, 81.91, N'Destination JYDLM', N'Carrera1234 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'10199', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10258, 20, 1, '20060717 00:00:00.000', '20060814 00:00:00.000', '20060723 00:00:00.000', 1, 140.51, N'Destination RVDMF', N'Kirchgasse 9012', N'Graz', NULL, N'10157', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10259, 13, 4, '20060718 00:00:00.000', '20060815 00:00:00.000', '20060725 00:00:00.000', 3, 3.25, N'Destination LGGCH', N'Sierras de Granada 9012', N'México D.F.', NULL, N'10137', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10260, 56, 4, '20060719 00:00:00.000', '20060816 00:00:00.000', '20060729 00:00:00.000', 1, 55.09, N'Ship to 56-A', N'Mehrheimerstr. 0123', N'Köln', NULL, N'10258', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10261, 61, 4, '20060719 00:00:00.000', '20060816 00:00:00.000', '20060730 00:00:00.000', 2, 3.05, N'Ship to 61-B', N'Rua da Panificadora, 6789', N'Rio de Janeiro', N'RJ', N'10274', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10262, 65, 8, '20060722 00:00:00.000', '20060819 00:00:00.000', '20060725 00:00:00.000', 3, 48.29, N'Ship to 65-B', N'8901 Milton Dr.', N'Albuquerque', N'NM', N'10286', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10263, 20, 9, '20060723 00:00:00.000', '20060820 00:00:00.000', '20060731 00:00:00.000', 3, 146.06, N'Destination FFXKT', N'Kirchgasse 0123', N'Graz', NULL, N'10158', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10264, 24, 6, '20060724 00:00:00.000', '20060821 00:00:00.000', '20060823 00:00:00.000', 3, 3.67, N'Destination KBSBN', N'Åkergatan 9012', N'Bräcke', NULL, N'10167', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10265, 7, 2, '20060725 00:00:00.000', '20060822 00:00:00.000', '20060812 00:00:00.000', 1, 55.28, N'Ship to 7-A', N'0123, place Kléber', N'Strasbourg', NULL, N'10329', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10266, 87, 3, '20060726 00:00:00.000', '20060906 00:00:00.000', '20060731 00:00:00.000', 3, 25.73, N'Ship to 87-B', N'Torikatu 2345', N'Oulu', NULL, N'10351', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10267, 25, 4, '20060729 00:00:00.000', '20060826 00:00:00.000', '20060806 00:00:00.000', 1, 208.58, N'Destination VAPXU', N'Berliner Platz 0123', N'München', NULL, N'10168', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10268, 33, 8, '20060730 00:00:00.000', '20060827 00:00:00.000', '20060802 00:00:00.000', 3, 66.29, N'Destination QJVQH', N'5ª Ave. Los Palos Grandes 5678', N'Caracas', N'DF', N'10193', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10269, 89, 5, '20060731 00:00:00.000', '20060814 00:00:00.000', '20060809 00:00:00.000', 1, 4.56, N'Ship to 89-B', N'8901 - 12th Ave. S.', N'Seattle', N'WA', N'10357', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10270, 87, 1, '20060801 00:00:00.000', '20060829 00:00:00.000', '20060802 00:00:00.000', 1, 136.54, N'Ship to 87-B', N'Torikatu 2345', N'Oulu', NULL, N'10351', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10271, 75, 6, '20060801 00:00:00.000', '20060829 00:00:00.000', '20060830 00:00:00.000', 2, 4.54, N'Ship to 75-C', N'P.O. Box 7890', N'Lander', N'WY', N'10316', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10272, 65, 6, '20060802 00:00:00.000', '20060830 00:00:00.000', '20060806 00:00:00.000', 2, 98.03, N'Ship to 65-A', N'7890 Milton Dr.', N'Albuquerque', N'NM', N'10285', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10273, 63, 3, '20060805 00:00:00.000', '20060902 00:00:00.000', '20060812 00:00:00.000', 3, 76.07, N'Ship to 63-A', N'Taucherstraße 1234', N'Cunewalde', NULL, N'10279', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10274, 85, 6, '20060806 00:00:00.000', '20060903 00:00:00.000', '20060816 00:00:00.000', 1, 6.01, N'Ship to 85-B', N'6789 rue de l''Abbaye', N'Reims', NULL, N'10345', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10275, 49, 1, '20060807 00:00:00.000', '20060904 00:00:00.000', '20060809 00:00:00.000', 1, 26.93, N'Ship to 49-A', N'Via Ludovico il Moro 8901', N'Bergamo', NULL, N'10235', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10276, 80, 8, '20060808 00:00:00.000', '20060822 00:00:00.000', '20060814 00:00:00.000', 3, 13.84, N'Ship to 80-C', N'Avda. Azteca 5678', N'México D.F.', NULL, N'10334', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10277, 52, 2, '20060809 00:00:00.000', '20060906 00:00:00.000', '20060813 00:00:00.000', 3, 125.77, N'Ship to 52-A', N'Heerstr. 9012', N'Leipzig', NULL, N'10247', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10278, 5, 8, '20060812 00:00:00.000', '20060909 00:00:00.000', '20060816 00:00:00.000', 2, 92.69, N'Ship to 5-C', N'Berguvsvägen  1234', N'Luleå', NULL, N'10269', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10279, 44, 8, '20060813 00:00:00.000', '20060910 00:00:00.000', '20060816 00:00:00.000', 2, 25.83, N'Ship to 44-A', N'Magazinweg 4567', N'Frankfurt a.M.', NULL, N'10222', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10280, 5, 2, '20060814 00:00:00.000', '20060911 00:00:00.000', '20060912 00:00:00.000', 1, 8.98, N'Ship to 5-B', N'Berguvsvägen  0123', N'Luleå', NULL, N'10268', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10281, 69, 4, '20060814 00:00:00.000', '20060828 00:00:00.000', '20060821 00:00:00.000', 1, 2.94, N'Ship to 69-A', N'Gran Vía, 9012', N'Madrid', NULL, N'10297', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10282, 69, 4, '20060815 00:00:00.000', '20060912 00:00:00.000', '20060821 00:00:00.000', 1, 12.69, N'Ship to 69-B', N'Gran Vía, 0123', N'Madrid', NULL, N'10298', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10283, 46, 3, '20060816 00:00:00.000', '20060913 00:00:00.000', '20060823 00:00:00.000', 3, 84.81, N'Ship to 46-A', N'Carrera 0123 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'10227', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10284, 44, 4, '20060819 00:00:00.000', '20060916 00:00:00.000', '20060827 00:00:00.000', 1, 76.56, N'Ship to 44-A', N'Magazinweg 4567', N'Frankfurt a.M.', NULL, N'10222', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10285, 63, 1, '20060820 00:00:00.000', '20060917 00:00:00.000', '20060826 00:00:00.000', 2, 76.83, N'Ship to 63-B', N'Taucherstraße 2345', N'Cunewalde', NULL, N'10280', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10286, 63, 8, '20060821 00:00:00.000', '20060918 00:00:00.000', '20060830 00:00:00.000', 3, 229.24, N'Ship to 63-B', N'Taucherstraße 2345', N'Cunewalde', NULL, N'10280', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10287, 67, 8, '20060822 00:00:00.000', '20060919 00:00:00.000', '20060828 00:00:00.000', 3, 12.76, N'Ship to 67-A', N'Av. Copacabana, 3456', N'Rio de Janeiro', N'RJ', N'10291', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10288, 66, 4, '20060823 00:00:00.000', '20060920 00:00:00.000', '20060903 00:00:00.000', 1, 7.45, N'Ship to 66-C', N'Strada Provinciale 2345', N'Reggio Emilia', NULL, N'10290', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10289, 11, 7, '20060826 00:00:00.000', '20060923 00:00:00.000', '20060828 00:00:00.000', 3, 22.77, N'Destination DLEUN', N'Fauntleroy Circus 4567', N'London', NULL, N'10132', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10290, 15, 8, '20060827 00:00:00.000', '20060924 00:00:00.000', '20060903 00:00:00.000', 1, 79.70, N'Destination HQZHO', N'Av. dos Lusíadas, 4567', N'Sao Paulo', N'SP', N'10142', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10291, 61, 6, '20060827 00:00:00.000', '20060924 00:00:00.000', '20060904 00:00:00.000', 2, 6.40, N'Ship to 61-A', N'Rua da Panificadora, 5678', N'Rio de Janeiro', N'RJ', N'10273', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10292, 81, 1, '20060828 00:00:00.000', '20060925 00:00:00.000', '20060902 00:00:00.000', 2, 1.35, N'Ship to 81-A', N'Av. Inês de Castro, 6789', N'Sao Paulo', N'SP', N'10335', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10293, 80, 1, '20060829 00:00:00.000', '20060926 00:00:00.000', '20060911 00:00:00.000', 3, 21.18, N'Ship to 80-B', N'Avda. Azteca 4567', N'México D.F.', NULL, N'10333', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10294, 65, 4, '20060830 00:00:00.000', '20060927 00:00:00.000', '20060905 00:00:00.000', 2, 147.26, N'Ship to 65-A', N'7890 Milton Dr.', N'Albuquerque', N'NM', N'10285', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10295, 85, 2, '20060902 00:00:00.000', '20060930 00:00:00.000', '20060910 00:00:00.000', 2, 1.15, N'Ship to 85-C', N'7890 rue de l''Abbaye', N'Reims', NULL, N'10346', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10296, 46, 6, '20060903 00:00:00.000', '20061001 00:00:00.000', '20060911 00:00:00.000', 1, 0.12, N'Ship to 46-C', N'Carrera 2345 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'10229', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10297, 7, 5, '20060904 00:00:00.000', '20061016 00:00:00.000', '20060910 00:00:00.000', 2, 5.74, N'Ship to 7-C', N'2345, place Kléber', N'Strasbourg', NULL, N'10331', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10298, 37, 6, '20060905 00:00:00.000', '20061003 00:00:00.000', '20060911 00:00:00.000', 2, 168.22, N'Destination ATSOA', N'4567 Johnstown Road', N'Cork', N'Co. Cork', N'10202', N'Ireland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10299, 67, 4, '20060906 00:00:00.000', '20061004 00:00:00.000', '20060913 00:00:00.000', 2, 29.76, N'Ship to 67-A', N'Av. Copacabana, 3456', N'Rio de Janeiro', N'RJ', N'10291', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10300, 49, 2, '20060909 00:00:00.000', '20061007 00:00:00.000', '20060918 00:00:00.000', 2, 17.68, N'Ship to 49-A', N'Via Ludovico il Moro 8901', N'Bergamo', NULL, N'10235', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10301, 86, 8, '20060909 00:00:00.000', '20061007 00:00:00.000', '20060917 00:00:00.000', 2, 45.08, N'Ship to 86-A', N'Adenauerallee 8901', N'Stuttgart', NULL, N'10347', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10302, 76, 4, '20060910 00:00:00.000', '20061008 00:00:00.000', '20061009 00:00:00.000', 2, 6.27, N'Ship to 76-B', N'Boulevard Tirou, 9012', N'Charleroi', NULL, N'10318', N'Belgium');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10303, 30, 7, '20060911 00:00:00.000', '20061009 00:00:00.000', '20060918 00:00:00.000', 2, 107.83, N'Destination IIYDD', N'C/ Romero, 5678', N'Sevilla', NULL, N'10183', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10304, 80, 1, '20060912 00:00:00.000', '20061010 00:00:00.000', '20060917 00:00:00.000', 2, 63.79, N'Ship to 80-C', N'Avda. Azteca 5678', N'México D.F.', NULL, N'10334', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10305, 55, 8, '20060913 00:00:00.000', '20061011 00:00:00.000', '20061009 00:00:00.000', 3, 257.62, N'Ship to 55-B', N'8901 Bering St.', N'Anchorage', N'AK', N'10256', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10306, 69, 1, '20060916 00:00:00.000', '20061014 00:00:00.000', '20060923 00:00:00.000', 3, 7.56, N'Ship to 69-B', N'Gran Vía, 0123', N'Madrid', NULL, N'10298', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10307, 48, 2, '20060917 00:00:00.000', '20061015 00:00:00.000', '20060925 00:00:00.000', 2, 0.56, N'Ship to 48-B', N'6789 Chiaroscuro Rd.', N'Portland', N'OR', N'10233', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10308, 2, 7, '20060918 00:00:00.000', '20061016 00:00:00.000', '20060924 00:00:00.000', 3, 1.61, N'Destination QMVCI', N'Avda. de la Constitución 2345', N'México D.F.', NULL, N'10180', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10309, 37, 3, '20060919 00:00:00.000', '20061017 00:00:00.000', '20061023 00:00:00.000', 1, 47.30, N'Destination ATSOA', N'4567 Johnstown Road', N'Cork', N'Co. Cork', N'10202', N'Ireland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10310, 77, 8, '20060920 00:00:00.000', '20061018 00:00:00.000', '20060927 00:00:00.000', 2, 17.52, N'Ship to 77-B', N'2345 Jefferson Way Suite 2', N'Portland', N'OR', N'10321', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10311, 18, 1, '20060920 00:00:00.000', '20061004 00:00:00.000', '20060926 00:00:00.000', 3, 24.69, N'Destination SNPXM', N'0123, rue des Cinquante Otages', N'Nantes', NULL, N'10148', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10312, 86, 2, '20060923 00:00:00.000', '20061021 00:00:00.000', '20061003 00:00:00.000', 2, 40.26, N'Ship to 86-B', N'Adenauerallee 9012', N'Stuttgart', NULL, N'10348', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10313, 63, 2, '20060924 00:00:00.000', '20061022 00:00:00.000', '20061004 00:00:00.000', 2, 1.96, N'Ship to 63-A', N'Taucherstraße 1234', N'Cunewalde', NULL, N'10279', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10314, 65, 1, '20060925 00:00:00.000', '20061023 00:00:00.000', '20061004 00:00:00.000', 2, 74.16, N'Ship to 65-A', N'7890 Milton Dr.', N'Albuquerque', N'NM', N'10285', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10315, 38, 4, '20060926 00:00:00.000', '20061024 00:00:00.000', '20061003 00:00:00.000', 2, 41.76, N'Destination AXVHD', N'Garden House Crowther Way 9012', N'Cowes', N'Isle of Wight', N'10207', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10316, 65, 1, '20060927 00:00:00.000', '20061025 00:00:00.000', '20061008 00:00:00.000', 3, 150.15, N'Ship to 65-B', N'8901 Milton Dr.', N'Albuquerque', N'NM', N'10286', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10317, 48, 6, '20060930 00:00:00.000', '20061028 00:00:00.000', '20061010 00:00:00.000', 1, 12.69, N'Ship to 48-B', N'6789 Chiaroscuro Rd.', N'Portland', N'OR', N'10233', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10318, 38, 8, '20061001 00:00:00.000', '20061029 00:00:00.000', '20061004 00:00:00.000', 2, 4.73, N'Destination AXVHD', N'Garden House Crowther Way 9012', N'Cowes', N'Isle of Wight', N'10207', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10319, 80, 7, '20061002 00:00:00.000', '20061030 00:00:00.000', '20061011 00:00:00.000', 3, 64.50, N'Ship to 80-B', N'Avda. Azteca 4567', N'México D.F.', NULL, N'10333', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10320, 87, 5, '20061003 00:00:00.000', '20061017 00:00:00.000', '20061018 00:00:00.000', 3, 34.57, N'Ship to 87-A', N'Torikatu 1234', N'Oulu', NULL, N'10350', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10321, 38, 3, '20061003 00:00:00.000', '20061031 00:00:00.000', '20061011 00:00:00.000', 2, 3.43, N'Destination LMVGS', N'Garden House Crowther Way 8901', N'Cowes', N'Isle of Wight', N'10206', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10322, 58, 7, '20061004 00:00:00.000', '20061101 00:00:00.000', '20061023 00:00:00.000', 3, 0.40, N'Ship to 58-A', N'Calle Dr. Jorge Cash 3456', N'México D.F.', NULL, N'10261', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10323, 39, 4, '20061007 00:00:00.000', '20061104 00:00:00.000', '20061014 00:00:00.000', 1, 4.88, N'Destination RMBHM', N'Maubelstr. 1234', N'Brandenburg', NULL, N'10209', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10324, 71, 9, '20061008 00:00:00.000', '20061105 00:00:00.000', '20061010 00:00:00.000', 1, 214.27, N'Ship to 71-C', N'9012 Suffolk Ln.', N'Boise', N'ID', N'10307', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10325, 39, 1, '20061009 00:00:00.000', '20061023 00:00:00.000', '20061014 00:00:00.000', 3, 64.86, N'Destination RMBHM', N'Maubelstr. 1234', N'Brandenburg', NULL, N'10209', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10326, 8, 4, '20061010 00:00:00.000', '20061107 00:00:00.000', '20061014 00:00:00.000', 2, 77.92, N'Ship to 8-A', N'C/ Araquil, 0123', N'Madrid', NULL, N'10359', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10327, 24, 2, '20061011 00:00:00.000', '20061108 00:00:00.000', '20061014 00:00:00.000', 1, 63.36, N'Destination NCKKO', N'Åkergatan 7890', N'Bräcke', NULL, N'10165', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10328, 28, 4, '20061014 00:00:00.000', '20061111 00:00:00.000', '20061017 00:00:00.000', 3, 87.03, N'Destination CIRQO', N'Jardim das rosas n. 8901', N'Lisboa', NULL, N'10176', N'Portugal');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10329, 75, 4, '20061015 00:00:00.000', '20061126 00:00:00.000', '20061023 00:00:00.000', 2, 191.67, N'Ship to 75-C', N'P.O. Box 7890', N'Lander', N'WY', N'10316', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10330, 46, 3, '20061016 00:00:00.000', '20061113 00:00:00.000', '20061028 00:00:00.000', 1, 12.75, N'Ship to 46-A', N'Carrera 0123 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'10227', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10331, 9, 9, '20061016 00:00:00.000', '20061127 00:00:00.000', '20061021 00:00:00.000', 1, 10.19, N'Ship to 9-C', N'0123, rue des Bouchers', N'Marseille', NULL, N'10369', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10332, 51, 3, '20061017 00:00:00.000', '20061128 00:00:00.000', '20061021 00:00:00.000', 2, 52.84, N'Ship to 51-B', N'7890 rue St. Laurent', N'Montréal', N'Québec', N'10245', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10333, 87, 5, '20061018 00:00:00.000', '20061115 00:00:00.000', '20061025 00:00:00.000', 3, 0.59, N'Ship to 87-C', N'Torikatu 3456', N'Oulu', NULL, N'10352', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10334, 84, 8, '20061021 00:00:00.000', '20061118 00:00:00.000', '20061028 00:00:00.000', 2, 8.56, N'Ship to 84-B', N'4567, rue du Commerce', N'Lyon', NULL, N'10343', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10335, 37, 7, '20061022 00:00:00.000', '20061119 00:00:00.000', '20061024 00:00:00.000', 2, 42.11, N'Destination ATSOA', N'4567 Johnstown Road', N'Cork', N'Co. Cork', N'10202', N'Ireland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10336, 60, 7, '20061023 00:00:00.000', '20061120 00:00:00.000', '20061025 00:00:00.000', 2, 15.51, N'Ship to 60-B', N'Estrada da saúde n. 3456', N'Lisboa', NULL, N'10271', N'Portugal');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10337, 25, 4, '20061024 00:00:00.000', '20061121 00:00:00.000', '20061029 00:00:00.000', 3, 108.26, N'Destination QOCBL', N'Berliner Platz 1234', N'München', NULL, N'10169', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10338, 55, 4, '20061025 00:00:00.000', '20061122 00:00:00.000', '20061029 00:00:00.000', 3, 84.21, N'Ship to 55-C', N'9012 Bering St.', N'Anchorage', N'AK', N'10257', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10339, 51, 2, '20061028 00:00:00.000', '20061125 00:00:00.000', '20061104 00:00:00.000', 2, 15.66, N'Ship to 51-C', N'8901 rue St. Laurent', N'Montréal', N'Québec', N'10246', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10340, 9, 1, '20061029 00:00:00.000', '20061126 00:00:00.000', '20061108 00:00:00.000', 3, 166.31, N'Ship to 9-A', N'8901, rue des Bouchers', N'Marseille', NULL, N'10367', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10341, 73, 7, '20061029 00:00:00.000', '20061126 00:00:00.000', '20061105 00:00:00.000', 3, 26.78, N'Ship to 73-A', N'Vinbæltet 1234', N'Kobenhavn', NULL, N'10310', N'Denmark');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10342, 25, 4, '20061030 00:00:00.000', '20061113 00:00:00.000', '20061104 00:00:00.000', 2, 54.83, N'Destination VAPXU', N'Berliner Platz 0123', N'München', NULL, N'10168', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10343, 44, 4, '20061031 00:00:00.000', '20061128 00:00:00.000', '20061106 00:00:00.000', 1, 110.37, N'Ship to 44-A', N'Magazinweg 4567', N'Frankfurt a.M.', NULL, N'10222', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10344, 89, 4, '20061101 00:00:00.000', '20061129 00:00:00.000', '20061105 00:00:00.000', 2, 23.29, N'Ship to 89-A', N'7890 - 12th Ave. S.', N'Seattle', N'WA', N'10356', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10345, 63, 2, '20061104 00:00:00.000', '20061202 00:00:00.000', '20061111 00:00:00.000', 2, 249.06, N'Ship to 63-B', N'Taucherstraße 2345', N'Cunewalde', NULL, N'10280', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10346, 65, 3, '20061105 00:00:00.000', '20061217 00:00:00.000', '20061108 00:00:00.000', 3, 142.08, N'Ship to 65-A', N'7890 Milton Dr.', N'Albuquerque', N'NM', N'10285', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10347, 21, 4, '20061106 00:00:00.000', '20061204 00:00:00.000', '20061108 00:00:00.000', 3, 3.10, N'Destination KKELL', N'Rua Orós, 4567', N'Sao Paulo', N'SP', N'10162', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10348, 86, 4, '20061107 00:00:00.000', '20061205 00:00:00.000', '20061115 00:00:00.000', 2, 0.78, N'Ship to 86-B', N'Adenauerallee 9012', N'Stuttgart', NULL, N'10348', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10349, 75, 7, '20061108 00:00:00.000', '20061206 00:00:00.000', '20061115 00:00:00.000', 1, 8.63, N'Ship to 75-C', N'P.O. Box 7890', N'Lander', N'WY', N'10316', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10350, 41, 6, '20061111 00:00:00.000', '20061209 00:00:00.000', '20061203 00:00:00.000', 2, 64.19, N'Destination DWJIO', N'9012 rue Alsace-Lorraine', N'Toulouse', NULL, N'10217', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10351, 20, 1, '20061111 00:00:00.000', '20061209 00:00:00.000', '20061120 00:00:00.000', 1, 162.33, N'Destination RVDMF', N'Kirchgasse 9012', N'Graz', NULL, N'10157', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10352, 28, 3, '20061112 00:00:00.000', '20061126 00:00:00.000', '20061118 00:00:00.000', 3, 1.30, N'Destination OTSWR', N'Jardim das rosas n. 9012', N'Lisboa', NULL, N'10177', N'Portugal');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10353, 59, 7, '20061113 00:00:00.000', '20061211 00:00:00.000', '20061125 00:00:00.000', 3, 360.63, N'Ship to 59-B', N'Geislweg 7890', N'Salzburg', NULL, N'10265', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10354, 58, 8, '20061114 00:00:00.000', '20061212 00:00:00.000', '20061120 00:00:00.000', 3, 53.80, N'Ship to 58-C', N'Calle Dr. Jorge Cash 5678', N'México D.F.', NULL, N'10263', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10355, 4, 6, '20061115 00:00:00.000', '20061213 00:00:00.000', '20061120 00:00:00.000', 1, 41.95, N'Ship to 4-A', N'Brook Farm Stratford St. Mary 0123', N'Colchester', N'Essex', N'10238', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10356, 86, 6, '20061118 00:00:00.000', '20061216 00:00:00.000', '20061127 00:00:00.000', 2, 36.71, N'Ship to 86-A', N'Adenauerallee 8901', N'Stuttgart', NULL, N'10347', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10357, 46, 1, '20061119 00:00:00.000', '20061217 00:00:00.000', '20061202 00:00:00.000', 3, 34.88, N'Ship to 46-B', N'Carrera 1234 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'10228', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10358, 41, 5, '20061120 00:00:00.000', '20061218 00:00:00.000', '20061127 00:00:00.000', 1, 19.64, N'Ship to 41-C', N'0123 rue Alsace-Lorraine', N'Toulouse', NULL, N'10218', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10359, 72, 5, '20061121 00:00:00.000', '20061219 00:00:00.000', '20061126 00:00:00.000', 3, 288.43, N'Ship to 72-C', N'1234 Wadhurst Rd.', N'London', NULL, N'10309', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10360, 7, 4, '20061122 00:00:00.000', '20061220 00:00:00.000', '20061202 00:00:00.000', 3, 131.70, N'Ship to 7-C', N'2345, place Kléber', N'Strasbourg', NULL, N'10331', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10361, 63, 1, '20061122 00:00:00.000', '20061220 00:00:00.000', '20061203 00:00:00.000', 2, 183.17, N'Ship to 63-C', N'Taucherstraße 3456', N'Cunewalde', NULL, N'10281', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10362, 9, 3, '20061125 00:00:00.000', '20061223 00:00:00.000', '20061128 00:00:00.000', 1, 96.04, N'Ship to 9-B', N'9012, rue des Bouchers', N'Marseille', NULL, N'10368', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10363, 17, 4, '20061126 00:00:00.000', '20061224 00:00:00.000', '20061204 00:00:00.000', 3, 30.54, N'Destination BJCXA', N'Walserweg 7890', N'Aachen', NULL, N'10145', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10364, 19, 1, '20061126 00:00:00.000', '20070107 00:00:00.000', '20061204 00:00:00.000', 1, 71.97, N'Destination QTKCU', N'3456 King George', N'London', NULL, N'10151', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10365, 3, 3, '20061127 00:00:00.000', '20061225 00:00:00.000', '20061202 00:00:00.000', 2, 22.00, N'Destination FQFLS', N'Mataderos  3456', N'México D.F.', NULL, N'10211', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10366, 29, 8, '20061128 00:00:00.000', '20070109 00:00:00.000', '20061230 00:00:00.000', 2, 10.14, N'Destination VPNNG', N'Rambla de Cataluña, 0123', N'Barcelona', NULL, N'10178', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10367, 83, 7, '20061128 00:00:00.000', '20061226 00:00:00.000', '20061202 00:00:00.000', 3, 13.55, N'Ship to 83-B', N'Smagsloget 1234', N'Århus', NULL, N'10340', N'Denmark');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10368, 20, 2, '20061129 00:00:00.000', '20061227 00:00:00.000', '20061202 00:00:00.000', 2, 101.95, N'Destination RVDMF', N'Kirchgasse 9012', N'Graz', NULL, N'10157', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10369, 75, 8, '20061202 00:00:00.000', '20061230 00:00:00.000', '20061209 00:00:00.000', 2, 195.68, N'Ship to 75-C', N'P.O. Box 7890', N'Lander', N'WY', N'10316', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10370, 14, 6, '20061203 00:00:00.000', '20061231 00:00:00.000', '20061227 00:00:00.000', 2, 1.17, N'Destination YUJRD', N'Hauptstr. 1234', N'Bern', NULL, N'10139', N'Switzerland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10371, 41, 1, '20061203 00:00:00.000', '20061231 00:00:00.000', '20061224 00:00:00.000', 1, 0.45, N'Ship to 41-C', N'0123 rue Alsace-Lorraine', N'Toulouse', NULL, N'10218', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10372, 62, 5, '20061204 00:00:00.000', '20070101 00:00:00.000', '20061209 00:00:00.000', 2, 890.78, N'Ship to 62-A', N'Alameda dos Canàrios, 8901', N'Sao Paulo', N'SP', N'10276', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10373, 37, 4, '20061205 00:00:00.000', '20070102 00:00:00.000', '20061211 00:00:00.000', 3, 124.12, N'Destination KPVYJ', N'5678 Johnstown Road', N'Cork', N'Co. Cork', N'10203', N'Ireland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10374, 91, 1, '20061205 00:00:00.000', '20070102 00:00:00.000', '20061209 00:00:00.000', 3, 3.94, N'Ship to 91-A', N'ul. Filtrowa 5678', N'Warszawa', NULL, N'10364', N'Poland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10375, 36, 3, '20061206 00:00:00.000', '20070103 00:00:00.000', '20061209 00:00:00.000', 2, 20.12, N'Destination HOHCR', N'City Center Plaza 3456 Main St.', N'Elgin', N'OR', N'10201', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10376, 51, 1, '20061209 00:00:00.000', '20070106 00:00:00.000', '20061213 00:00:00.000', 2, 20.39, N'Ship to 51-B', N'7890 rue St. Laurent', N'Montréal', N'Québec', N'10245', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10377, 72, 1, '20061209 00:00:00.000', '20070106 00:00:00.000', '20061213 00:00:00.000', 3, 22.21, N'Ship to 72-C', N'1234 Wadhurst Rd.', N'London', NULL, N'10309', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10378, 24, 5, '20061210 00:00:00.000', '20070107 00:00:00.000', '20061219 00:00:00.000', 3, 5.44, N'Destination KBSBN', N'Åkergatan 9012', N'Bräcke', NULL, N'10167', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10379, 61, 2, '20061211 00:00:00.000', '20070108 00:00:00.000', '20061213 00:00:00.000', 1, 45.03, N'Ship to 61-B', N'Rua da Panificadora, 6789', N'Rio de Janeiro', N'RJ', N'10274', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10380, 37, 8, '20061212 00:00:00.000', '20070109 00:00:00.000', '20070116 00:00:00.000', 3, 35.03, N'Destination KPVYJ', N'5678 Johnstown Road', N'Cork', N'Co. Cork', N'10203', N'Ireland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10381, 46, 3, '20061212 00:00:00.000', '20070109 00:00:00.000', '20061213 00:00:00.000', 3, 7.99, N'Ship to 46-C', N'Carrera 2345 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'10229', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10382, 20, 4, '20061213 00:00:00.000', '20070110 00:00:00.000', '20061216 00:00:00.000', 1, 94.77, N'Destination FFXKT', N'Kirchgasse 0123', N'Graz', NULL, N'10158', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10383, 4, 8, '20061216 00:00:00.000', '20070113 00:00:00.000', '20061218 00:00:00.000', 3, 34.24, N'Ship to 4-B', N'Brook Farm Stratford St. Mary 1234', N'Colchester', N'Essex', N'10239', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10384, 5, 3, '20061216 00:00:00.000', '20070113 00:00:00.000', '20061220 00:00:00.000', 3, 168.64, N'Ship to 5-C', N'Berguvsvägen  1234', N'Luleå', NULL, N'10269', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10385, 75, 1, '20061217 00:00:00.000', '20070114 00:00:00.000', '20061223 00:00:00.000', 2, 30.96, N'Ship to 75-B', N'P.O. Box 6789', N'Lander', N'WY', N'10315', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10386, 21, 9, '20061218 00:00:00.000', '20070101 00:00:00.000', '20061225 00:00:00.000', 3, 13.99, N'Destination RNSMS', N'Rua Orós, 2345', N'Sao Paulo', N'SP', N'10160', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10387, 70, 1, '20061218 00:00:00.000', '20070115 00:00:00.000', '20061220 00:00:00.000', 2, 93.63, N'Ship to 70-B', N'Erling Skakkes gate 5678', N'Stavern', NULL, N'10303', N'Norway');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10388, 72, 2, '20061219 00:00:00.000', '20070116 00:00:00.000', '20061220 00:00:00.000', 1, 34.86, N'Ship to 72-C', N'1234 Wadhurst Rd.', N'London', NULL, N'10309', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10389, 10, 4, '20061220 00:00:00.000', '20070117 00:00:00.000', '20061224 00:00:00.000', 2, 47.42, N'Destination OLSSJ', N'2345 Tsawassen Blvd.', N'Tsawassen', N'BC', N'10130', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10390, 20, 6, '20061223 00:00:00.000', '20070120 00:00:00.000', '20061226 00:00:00.000', 1, 126.38, N'Destination RVDMF', N'Kirchgasse 9012', N'Graz', NULL, N'10157', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10391, 17, 3, '20061223 00:00:00.000', '20070120 00:00:00.000', '20061231 00:00:00.000', 3, 5.45, N'Destination AJTHX', N'Walserweg 9012', N'Aachen', NULL, N'10147', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10392, 59, 2, '20061224 00:00:00.000', '20070121 00:00:00.000', '20070101 00:00:00.000', 3, 122.46, N'Ship to 59-A', N'Geislweg 6789', N'Salzburg', NULL, N'10264', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10393, 71, 1, '20061225 00:00:00.000', '20070122 00:00:00.000', '20070103 00:00:00.000', 3, 126.56, N'Ship to 71-B', N'8901 Suffolk Ln.', N'Boise', N'ID', N'10306', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10394, 36, 1, '20061225 00:00:00.000', '20070122 00:00:00.000', '20070103 00:00:00.000', 3, 30.34, N'Destination AWPJG', N'City Center Plaza 2345 Main St.', N'Elgin', N'OR', N'10200', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10395, 35, 6, '20061226 00:00:00.000', '20070123 00:00:00.000', '20070103 00:00:00.000', 1, 184.41, N'Destination JYDLM', N'Carrera1234 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'10199', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10396, 25, 1, '20061227 00:00:00.000', '20070110 00:00:00.000', '20070106 00:00:00.000', 3, 135.35, N'Destination VAPXU', N'Berliner Platz 0123', N'München', NULL, N'10168', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10397, 60, 5, '20061227 00:00:00.000', '20070124 00:00:00.000', '20070102 00:00:00.000', 1, 60.26, N'Ship to 60-A', N'Estrada da saúde n. 2345', N'Lisboa', NULL, N'10270', N'Portugal');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10398, 71, 2, '20061230 00:00:00.000', '20070127 00:00:00.000', '20070109 00:00:00.000', 3, 89.16, N'Ship to 71-C', N'9012 Suffolk Ln.', N'Boise', N'ID', N'10307', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10399, 83, 8, '20061231 00:00:00.000', '20070114 00:00:00.000', '20070108 00:00:00.000', 3, 27.36, N'Ship to 83-C', N'Smagsloget 2345', N'Århus', NULL, N'10341', N'Denmark');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10400, 19, 1, '20070101 00:00:00.000', '20070129 00:00:00.000', '20070116 00:00:00.000', 3, 83.93, N'Destination BBMRT', N'4567 King George', N'London', NULL, N'10152', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10401, 65, 1, '20070101 00:00:00.000', '20070129 00:00:00.000', '20070110 00:00:00.000', 1, 12.51, N'Ship to 65-A', N'7890 Milton Dr.', N'Albuquerque', N'NM', N'10285', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10402, 20, 8, '20070102 00:00:00.000', '20070213 00:00:00.000', '20070110 00:00:00.000', 2, 67.88, N'Destination FFXKT', N'Kirchgasse 0123', N'Graz', NULL, N'10158', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10403, 20, 4, '20070103 00:00:00.000', '20070131 00:00:00.000', '20070109 00:00:00.000', 3, 73.79, N'Destination RVDMF', N'Kirchgasse 9012', N'Graz', NULL, N'10157', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10404, 49, 2, '20070103 00:00:00.000', '20070131 00:00:00.000', '20070108 00:00:00.000', 1, 155.97, N'Ship to 49-B', N'Via Ludovico il Moro 9012', N'Bergamo', NULL, N'10236', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10405, 47, 1, '20070106 00:00:00.000', '20070203 00:00:00.000', '20070122 00:00:00.000', 1, 34.82, N'Ship to 47-B', N'Ave. 5 de Mayo Porlamar 4567', N'I. de Margarita', N'Nueva Esparta', N'10231', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10406, 62, 7, '20070107 00:00:00.000', '20070218 00:00:00.000', '20070113 00:00:00.000', 1, 108.04, N'Ship to 62-A', N'Alameda dos Canàrios, 8901', N'Sao Paulo', N'SP', N'10276', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10407, 56, 2, '20070107 00:00:00.000', '20070204 00:00:00.000', '20070130 00:00:00.000', 2, 91.48, N'Ship to 56-B', N'Mehrheimerstr. 1234', N'Köln', NULL, N'10259', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10408, 23, 8, '20070108 00:00:00.000', '20070205 00:00:00.000', '20070114 00:00:00.000', 1, 11.26, N'Destination PXQRR', N'5678, chaussée de Tournai', N'Lille', NULL, N'10163', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10409, 54, 3, '20070109 00:00:00.000', '20070206 00:00:00.000', '20070114 00:00:00.000', 1, 29.83, N'Ship to 54-C', N'Ing. Gustavo Moncada 6789 Piso 20-A', N'Buenos Aires', NULL, N'10254', N'Argentina');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10410, 10, 3, '20070110 00:00:00.000', '20070207 00:00:00.000', '20070115 00:00:00.000', 3, 2.40, N'Destination OLSSJ', N'2345 Tsawassen Blvd.', N'Tsawassen', N'BC', N'10130', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10411, 10, 9, '20070110 00:00:00.000', '20070207 00:00:00.000', '20070121 00:00:00.000', 3, 23.65, N'Destination XJIBQ', N'1234 Tsawassen Blvd.', N'Tsawassen', N'BC', N'10129', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10412, 87, 8, '20070113 00:00:00.000', '20070210 00:00:00.000', '20070115 00:00:00.000', 2, 3.77, N'Ship to 87-C', N'Torikatu 3456', N'Oulu', NULL, N'10352', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10413, 41, 3, '20070114 00:00:00.000', '20070211 00:00:00.000', '20070116 00:00:00.000', 2, 95.66, N'Destination DWJIO', N'9012 rue Alsace-Lorraine', N'Toulouse', NULL, N'10217', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10414, 21, 2, '20070114 00:00:00.000', '20070211 00:00:00.000', '20070117 00:00:00.000', 3, 21.48, N'Destination SSYXZ', N'Rua Orós, 3456', N'Sao Paulo', N'SP', N'10161', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10415, 36, 3, '20070115 00:00:00.000', '20070212 00:00:00.000', '20070124 00:00:00.000', 1, 0.20, N'Destination AWPJG', N'City Center Plaza 2345 Main St.', N'Elgin', N'OR', N'10200', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10416, 87, 8, '20070116 00:00:00.000', '20070213 00:00:00.000', '20070127 00:00:00.000', 3, 22.72, N'Ship to 87-A', N'Torikatu 1234', N'Oulu', NULL, N'10350', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10417, 73, 4, '20070116 00:00:00.000', '20070213 00:00:00.000', '20070128 00:00:00.000', 3, 70.29, N'Ship to 73-C', N'Vinbæltet 2345', N'Kobenhavn', NULL, N'10311', N'Denmark');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10418, 63, 4, '20070117 00:00:00.000', '20070214 00:00:00.000', '20070124 00:00:00.000', 1, 17.55, N'Ship to 63-B', N'Taucherstraße 2345', N'Cunewalde', NULL, N'10280', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10419, 68, 4, '20070120 00:00:00.000', '20070217 00:00:00.000', '20070130 00:00:00.000', 2, 137.35, N'Ship to 68-A', N'Starenweg 6789', N'Genève', NULL, N'10294', N'Switzerland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10420, 88, 3, '20070121 00:00:00.000', '20070218 00:00:00.000', '20070127 00:00:00.000', 1, 44.12, N'Ship to 88-C', N'Rua do Mercado, 6789', N'Resende', N'SP', N'10355', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10421, 61, 8, '20070121 00:00:00.000', '20070304 00:00:00.000', '20070127 00:00:00.000', 1, 99.23, N'Ship to 61-C', N'Rua da Panificadora, 7890', N'Rio de Janeiro', N'RJ', N'10275', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10422, 27, 2, '20070122 00:00:00.000', '20070219 00:00:00.000', '20070131 00:00:00.000', 1, 3.02, N'Destination FFLQT', N'Via Monte Bianco 6789', N'Torino', NULL, N'10174', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10423, 31, 6, '20070123 00:00:00.000', '20070206 00:00:00.000', '20070224 00:00:00.000', 3, 24.50, N'Destination VNIAG', N'Av. Brasil, 9012', N'Campinas', N'SP', N'10187', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10424, 51, 7, '20070123 00:00:00.000', '20070220 00:00:00.000', '20070127 00:00:00.000', 2, 370.61, N'Ship to 51-C', N'8901 rue St. Laurent', N'Montréal', N'Québec', N'10246', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10425, 41, 6, '20070124 00:00:00.000', '20070221 00:00:00.000', '20070214 00:00:00.000', 2, 7.93, N'Destination DWJIO', N'9012 rue Alsace-Lorraine', N'Toulouse', NULL, N'10217', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10426, 29, 4, '20070127 00:00:00.000', '20070224 00:00:00.000', '20070206 00:00:00.000', 1, 18.69, N'Destination WOFLH', N'Rambla de Cataluña, 1234', N'Barcelona', NULL, N'10179', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10427, 59, 4, '20070127 00:00:00.000', '20070224 00:00:00.000', '20070303 00:00:00.000', 2, 31.29, N'Ship to 59-C', N'Geislweg 8901', N'Salzburg', NULL, N'10266', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10428, 66, 7, '20070128 00:00:00.000', '20070225 00:00:00.000', '20070204 00:00:00.000', 1, 11.09, N'Ship to 66-C', N'Strada Provinciale 2345', N'Reggio Emilia', NULL, N'10290', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10429, 37, 3, '20070129 00:00:00.000', '20070312 00:00:00.000', '20070207 00:00:00.000', 2, 56.63, N'Destination DGKOU', N'6789 Johnstown Road', N'Cork', N'Co. Cork', N'10204', N'Ireland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10430, 20, 4, '20070130 00:00:00.000', '20070213 00:00:00.000', '20070203 00:00:00.000', 1, 458.78, N'Destination CUVPF', N'Kirchgasse 1234', N'Graz', NULL, N'10159', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10431, 10, 4, '20070130 00:00:00.000', '20070213 00:00:00.000', '20070207 00:00:00.000', 2, 44.17, N'Destination OLSSJ', N'2345 Tsawassen Blvd.', N'Tsawassen', N'BC', N'10130', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10432, 75, 3, '20070131 00:00:00.000', '20070214 00:00:00.000', '20070207 00:00:00.000', 2, 4.34, N'Ship to 75-A', N'P.O. Box 5678', N'Lander', N'WY', N'10314', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10433, 60, 3, '20070203 00:00:00.000', '20070303 00:00:00.000', '20070304 00:00:00.000', 3, 73.83, N'Ship to 60-A', N'Estrada da saúde n. 2345', N'Lisboa', NULL, N'10270', N'Portugal');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10434, 24, 3, '20070203 00:00:00.000', '20070303 00:00:00.000', '20070213 00:00:00.000', 2, 17.92, N'Destination NCKKO', N'Åkergatan 7890', N'Bräcke', NULL, N'10165', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10435, 16, 8, '20070204 00:00:00.000', '20070318 00:00:00.000', '20070207 00:00:00.000', 2, 9.21, N'Destination QKQNB', N'Berkeley Gardens 5678  Brewery', N'London', NULL, N'10143', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10436, 7, 3, '20070205 00:00:00.000', '20070305 00:00:00.000', '20070211 00:00:00.000', 2, 156.66, N'Ship to 7-C', N'2345, place Kléber', N'Strasbourg', NULL, N'10331', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10437, 87, 8, '20070205 00:00:00.000', '20070305 00:00:00.000', '20070212 00:00:00.000', 1, 19.97, N'Ship to 87-A', N'Torikatu 1234', N'Oulu', NULL, N'10350', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10438, 79, 3, '20070206 00:00:00.000', '20070306 00:00:00.000', '20070214 00:00:00.000', 2, 8.24, N'Ship to 79-A', N'Luisenstr. 7890', N'Münster', NULL, N'10326', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10439, 51, 6, '20070207 00:00:00.000', '20070307 00:00:00.000', '20070210 00:00:00.000', 3, 4.07, N'Ship to 51-C', N'8901 rue St. Laurent', N'Montréal', N'Québec', N'10246', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10440, 71, 4, '20070210 00:00:00.000', '20070310 00:00:00.000', '20070228 00:00:00.000', 2, 86.53, N'Ship to 71-B', N'8901 Suffolk Ln.', N'Boise', N'ID', N'10306', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10441, 55, 3, '20070210 00:00:00.000', '20070324 00:00:00.000', '20070314 00:00:00.000', 2, 73.02, N'Ship to 55-C', N'9012 Bering St.', N'Anchorage', N'AK', N'10257', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10442, 20, 3, '20070211 00:00:00.000', '20070311 00:00:00.000', '20070218 00:00:00.000', 2, 47.94, N'Destination RVDMF', N'Kirchgasse 9012', N'Graz', NULL, N'10157', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10443, 66, 8, '20070212 00:00:00.000', '20070312 00:00:00.000', '20070214 00:00:00.000', 1, 13.95, N'Ship to 66-C', N'Strada Provinciale 2345', N'Reggio Emilia', NULL, N'10290', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10444, 5, 3, '20070212 00:00:00.000', '20070312 00:00:00.000', '20070221 00:00:00.000', 3, 3.50, N'Ship to 5-B', N'Berguvsvägen  0123', N'Luleå', NULL, N'10268', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10445, 5, 3, '20070213 00:00:00.000', '20070313 00:00:00.000', '20070220 00:00:00.000', 1, 9.30, N'Ship to 5-A', N'Berguvsvägen  9012', N'Luleå', NULL, N'10267', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10446, 79, 6, '20070214 00:00:00.000', '20070314 00:00:00.000', '20070219 00:00:00.000', 1, 14.68, N'Ship to 79-C', N'Luisenstr. 9012', N'Münster', NULL, N'10328', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10447, 67, 4, '20070214 00:00:00.000', '20070314 00:00:00.000', '20070307 00:00:00.000', 2, 68.66, N'Ship to 67-C', N'Av. Copacabana, 5678', N'Rio de Janeiro', N'RJ', N'10293', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10448, 64, 4, '20070217 00:00:00.000', '20070317 00:00:00.000', '20070224 00:00:00.000', 2, 38.82, N'Ship to 64-A', N'Av. del Libertador 4567', N'Buenos Aires', NULL, N'10282', N'Argentina');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10449, 7, 3, '20070218 00:00:00.000', '20070318 00:00:00.000', '20070227 00:00:00.000', 2, 53.30, N'Ship to 7-C', N'2345, place Kléber', N'Strasbourg', NULL, N'10331', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10450, 84, 8, '20070219 00:00:00.000', '20070319 00:00:00.000', '20070311 00:00:00.000', 2, 7.23, N'Ship to 84-C', N'5678, rue du Commerce', N'Lyon', NULL, N'10344', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10451, 63, 4, '20070219 00:00:00.000', '20070305 00:00:00.000', '20070312 00:00:00.000', 3, 189.09, N'Ship to 63-C', N'Taucherstraße 3456', N'Cunewalde', NULL, N'10281', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10452, 71, 8, '20070220 00:00:00.000', '20070320 00:00:00.000', '20070226 00:00:00.000', 1, 140.26, N'Ship to 71-B', N'8901 Suffolk Ln.', N'Boise', N'ID', N'10306', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10453, 4, 1, '20070221 00:00:00.000', '20070321 00:00:00.000', '20070226 00:00:00.000', 2, 25.36, N'Ship to 4-C', N'Brook Farm Stratford St. Mary 2345', N'Colchester', N'Essex', N'10240', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10454, 41, 4, '20070221 00:00:00.000', '20070321 00:00:00.000', '20070225 00:00:00.000', 3, 2.74, N'Ship to 41-C', N'0123 rue Alsace-Lorraine', N'Toulouse', NULL, N'10218', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10455, 87, 8, '20070224 00:00:00.000', '20070407 00:00:00.000', '20070303 00:00:00.000', 2, 180.45, N'Ship to 87-B', N'Torikatu 2345', N'Oulu', NULL, N'10351', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10456, 39, 8, '20070225 00:00:00.000', '20070408 00:00:00.000', '20070228 00:00:00.000', 2, 8.12, N'Destination DKMQA', N'Maubelstr. 0123', N'Brandenburg', NULL, N'10208', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10457, 39, 2, '20070225 00:00:00.000', '20070325 00:00:00.000', '20070303 00:00:00.000', 1, 11.57, N'Destination RMBHM', N'Maubelstr. 1234', N'Brandenburg', NULL, N'10209', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10458, 76, 7, '20070226 00:00:00.000', '20070326 00:00:00.000', '20070304 00:00:00.000', 3, 147.06, N'Ship to 76-A', N'Boulevard Tirou, 8901', N'Charleroi', NULL, N'10317', N'Belgium');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10459, 84, 4, '20070227 00:00:00.000', '20070327 00:00:00.000', '20070228 00:00:00.000', 2, 25.09, N'Ship to 84-B', N'4567, rue du Commerce', N'Lyon', NULL, N'10343', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10460, 24, 8, '20070228 00:00:00.000', '20070328 00:00:00.000', '20070303 00:00:00.000', 1, 16.27, N'Destination YCMPK', N'Åkergatan 8901', N'Bräcke', NULL, N'10166', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10461, 46, 1, '20070228 00:00:00.000', '20070328 00:00:00.000', '20070305 00:00:00.000', 3, 148.61, N'Ship to 46-A', N'Carrera 0123 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'10227', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10462, 16, 2, '20070303 00:00:00.000', '20070331 00:00:00.000', '20070318 00:00:00.000', 1, 6.17, N'Destination ARRMM', N'Berkeley Gardens 6789  Brewery', N'London', NULL, N'10144', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10463, 76, 5, '20070304 00:00:00.000', '20070401 00:00:00.000', '20070306 00:00:00.000', 3, 14.78, N'Ship to 76-B', N'Boulevard Tirou, 9012', N'Charleroi', NULL, N'10318', N'Belgium');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10464, 28, 4, '20070304 00:00:00.000', '20070401 00:00:00.000', '20070314 00:00:00.000', 2, 89.00, N'Destination OTSWR', N'Jardim das rosas n. 9012', N'Lisboa', NULL, N'10177', N'Portugal');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10465, 83, 1, '20070305 00:00:00.000', '20070402 00:00:00.000', '20070314 00:00:00.000', 3, 145.04, N'Ship to 83-A', N'Smagsloget 0123', N'Århus', NULL, N'10339', N'Denmark');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10466, 15, 4, '20070306 00:00:00.000', '20070403 00:00:00.000', '20070313 00:00:00.000', 1, 11.93, N'Destination GGSQD', N'Av. dos Lusíadas, 2345', N'Sao Paulo', N'SP', N'10140', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10467, 49, 8, '20070306 00:00:00.000', '20070403 00:00:00.000', '20070311 00:00:00.000', 2, 4.93, N'Ship to 49-C', N'Via Ludovico il Moro 0123', N'Bergamo', NULL, N'10237', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10468, 39, 3, '20070307 00:00:00.000', '20070404 00:00:00.000', '20070312 00:00:00.000', 3, 44.12, N'Destination RMBHM', N'Maubelstr. 1234', N'Brandenburg', NULL, N'10209', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10469, 89, 1, '20070310 00:00:00.000', '20070407 00:00:00.000', '20070314 00:00:00.000', 1, 60.18, N'Ship to 89-C', N'9012 - 12th Ave. S.', N'Seattle', N'WA', N'10358', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10470, 9, 4, '20070311 00:00:00.000', '20070408 00:00:00.000', '20070314 00:00:00.000', 2, 64.56, N'Ship to 9-C', N'0123, rue des Bouchers', N'Marseille', NULL, N'10369', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10471, 11, 2, '20070311 00:00:00.000', '20070408 00:00:00.000', '20070318 00:00:00.000', 3, 45.59, N'Destination NZASL', N'Fauntleroy Circus 5678', N'London', NULL, N'10133', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10472, 72, 8, '20070312 00:00:00.000', '20070409 00:00:00.000', '20070319 00:00:00.000', 1, 4.20, N'Ship to 72-A', N'0123 Wadhurst Rd.', N'London', NULL, N'10308', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10473, 38, 1, '20070313 00:00:00.000', '20070327 00:00:00.000', '20070321 00:00:00.000', 3, 16.37, N'Destination AXVHD', N'Garden House Crowther Way 9012', N'Cowes', N'Isle of Wight', N'10207', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10474, 58, 5, '20070313 00:00:00.000', '20070410 00:00:00.000', '20070321 00:00:00.000', 2, 83.49, N'Ship to 58-C', N'Calle Dr. Jorge Cash 5678', N'México D.F.', NULL, N'10263', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10475, 76, 9, '20070314 00:00:00.000', '20070411 00:00:00.000', '20070404 00:00:00.000', 1, 68.52, N'Ship to 76-C', N'Boulevard Tirou, 0123', N'Charleroi', NULL, N'10319', N'Belgium');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10476, 35, 8, '20070317 00:00:00.000', '20070414 00:00:00.000', '20070324 00:00:00.000', 3, 4.41, N'Destination SXYQX', N'Carrera 0123 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'10198', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10477, 60, 5, '20070317 00:00:00.000', '20070414 00:00:00.000', '20070325 00:00:00.000', 2, 13.02, N'Ship to 60-A', N'Estrada da saúde n. 2345', N'Lisboa', NULL, N'10270', N'Portugal');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10478, 84, 2, '20070318 00:00:00.000', '20070401 00:00:00.000', '20070326 00:00:00.000', 3, 4.81, N'Ship to 84-C', N'5678, rue du Commerce', N'Lyon', NULL, N'10344', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10479, 65, 3, '20070319 00:00:00.000', '20070416 00:00:00.000', '20070321 00:00:00.000', 3, 708.95, N'Ship to 65-C', N'9012 Milton Dr.', N'Albuquerque', N'NM', N'10287', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10480, 23, 6, '20070320 00:00:00.000', '20070417 00:00:00.000', '20070324 00:00:00.000', 2, 1.35, N'Destination AGPCO', N'6789, chaussée de Tournai', N'Lille', NULL, N'10164', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10481, 67, 8, '20070320 00:00:00.000', '20070417 00:00:00.000', '20070325 00:00:00.000', 2, 64.33, N'Ship to 67-A', N'Av. Copacabana, 3456', N'Rio de Janeiro', N'RJ', N'10291', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10482, 43, 1, '20070321 00:00:00.000', '20070418 00:00:00.000', '20070410 00:00:00.000', 3, 7.48, N'Ship to 43-B', N'3456 Orchestra Terrace', N'Walla Walla', N'WA', N'10221', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10483, 89, 7, '20070324 00:00:00.000', '20070421 00:00:00.000', '20070425 00:00:00.000', 2, 15.28, N'Ship to 89-A', N'7890 - 12th Ave. S.', N'Seattle', N'WA', N'10356', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10484, 11, 3, '20070324 00:00:00.000', '20070421 00:00:00.000', '20070401 00:00:00.000', 3, 6.88, N'Destination DLEUN', N'Fauntleroy Circus 4567', N'London', NULL, N'10132', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10485, 47, 4, '20070325 00:00:00.000', '20070408 00:00:00.000', '20070331 00:00:00.000', 2, 64.45, N'Ship to 47-B', N'Ave. 5 de Mayo Porlamar 4567', N'I. de Margarita', N'Nueva Esparta', N'10231', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10486, 35, 1, '20070326 00:00:00.000', '20070423 00:00:00.000', '20070402 00:00:00.000', 2, 30.53, N'Destination UOUWK', N'Carrera 9012 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'10197', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10487, 62, 2, '20070326 00:00:00.000', '20070423 00:00:00.000', '20070328 00:00:00.000', 2, 71.07, N'Ship to 62-B', N'Alameda dos Canàrios, 9012', N'Sao Paulo', N'SP', N'10277', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10488, 25, 8, '20070327 00:00:00.000', '20070424 00:00:00.000', '20070402 00:00:00.000', 2, 4.93, N'Destination VAPXU', N'Berliner Platz 0123', N'München', NULL, N'10168', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10489, 59, 6, '20070328 00:00:00.000', '20070425 00:00:00.000', '20070409 00:00:00.000', 2, 5.29, N'Ship to 59-C', N'Geislweg 8901', N'Salzburg', NULL, N'10266', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10490, 35, 7, '20070331 00:00:00.000', '20070428 00:00:00.000', '20070403 00:00:00.000', 2, 210.19, N'Destination JYDLM', N'Carrera1234 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'10199', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10491, 28, 8, '20070331 00:00:00.000', '20070428 00:00:00.000', '20070408 00:00:00.000', 3, 16.96, N'Destination OTSWR', N'Jardim das rosas n. 9012', N'Lisboa', NULL, N'10177', N'Portugal');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10492, 10, 3, '20070401 00:00:00.000', '20070429 00:00:00.000', '20070411 00:00:00.000', 1, 62.89, N'Destination XJIBQ', N'1234 Tsawassen Blvd.', N'Tsawassen', N'BC', N'10129', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10493, 41, 4, '20070402 00:00:00.000', '20070430 00:00:00.000', '20070410 00:00:00.000', 3, 10.64, N'Destination OLJND', N'8901 rue Alsace-Lorraine', N'Toulouse', NULL, N'10216', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10494, 15, 4, '20070402 00:00:00.000', '20070430 00:00:00.000', '20070409 00:00:00.000', 2, 65.99, N'Destination EVHYA', N'Av. dos Lusíadas, 3456', N'Sao Paulo', N'SP', N'10141', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10495, 42, 3, '20070403 00:00:00.000', '20070501 00:00:00.000', '20070411 00:00:00.000', 3, 4.65, N'Ship to 42-C', N'2345 Elm St.', N'Vancouver', N'BC', N'10220', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10496, 81, 7, '20070404 00:00:00.000', '20070502 00:00:00.000', '20070407 00:00:00.000', 2, 46.77, N'Ship to 81-C', N'Av. Inês de Castro, 7890', N'Sao Paulo', N'SP', N'10336', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10497, 44, 7, '20070404 00:00:00.000', '20070502 00:00:00.000', '20070407 00:00:00.000', 1, 36.21, N'Ship to 44-A', N'Magazinweg 4567', N'Frankfurt a.M.', NULL, N'10222', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10498, 35, 8, '20070407 00:00:00.000', '20070505 00:00:00.000', '20070411 00:00:00.000', 2, 29.75, N'Destination SXYQX', N'Carrera 0123 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'10198', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10499, 46, 4, '20070408 00:00:00.000', '20070506 00:00:00.000', '20070416 00:00:00.000', 2, 102.02, N'Ship to 46-C', N'Carrera 2345 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'10229', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10500, 41, 6, '20070409 00:00:00.000', '20070507 00:00:00.000', '20070417 00:00:00.000', 1, 42.68, N'Destination OLJND', N'8901 rue Alsace-Lorraine', N'Toulouse', NULL, N'10216', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10501, 6, 9, '20070409 00:00:00.000', '20070507 00:00:00.000', '20070416 00:00:00.000', 3, 8.85, N'Ship to 6-C', N'Forsterstr. 4567', N'Mannheim', NULL, N'10302', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10502, 58, 2, '20070410 00:00:00.000', '20070508 00:00:00.000', '20070429 00:00:00.000', 1, 69.32, N'Ship to 58-B', N'Calle Dr. Jorge Cash 4567', N'México D.F.', NULL, N'10262', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10503, 37, 6, '20070411 00:00:00.000', '20070509 00:00:00.000', '20070416 00:00:00.000', 2, 16.74, N'Destination ATSOA', N'4567 Johnstown Road', N'Cork', N'Co. Cork', N'10202', N'Ireland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10504, 89, 4, '20070411 00:00:00.000', '20070509 00:00:00.000', '20070418 00:00:00.000', 3, 59.13, N'Ship to 89-B', N'8901 - 12th Ave. S.', N'Seattle', N'WA', N'10357', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10505, 51, 3, '20070414 00:00:00.000', '20070512 00:00:00.000', '20070421 00:00:00.000', 3, 7.13, N'Ship to 51-B', N'7890 rue St. Laurent', N'Montréal', N'Québec', N'10245', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10506, 39, 9, '20070415 00:00:00.000', '20070513 00:00:00.000', '20070502 00:00:00.000', 2, 21.19, N'Destination DKMQA', N'Maubelstr. 0123', N'Brandenburg', NULL, N'10208', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10507, 3, 7, '20070415 00:00:00.000', '20070513 00:00:00.000', '20070422 00:00:00.000', 1, 47.45, N'Destination FQFLS', N'Mataderos  3456', N'México D.F.', NULL, N'10211', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10508, 56, 1, '20070416 00:00:00.000', '20070514 00:00:00.000', '20070513 00:00:00.000', 2, 4.99, N'Ship to 56-C', N'Mehrheimerstr. 2345', N'Köln', NULL, N'10260', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10509, 6, 4, '20070417 00:00:00.000', '20070515 00:00:00.000', '20070429 00:00:00.000', 1, 0.15, N'Ship to 6-A', N'Forsterstr. 2345', N'Mannheim', NULL, N'10300', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10510, 71, 6, '20070418 00:00:00.000', '20070516 00:00:00.000', '20070428 00:00:00.000', 3, 367.63, N'Ship to 71-A', N'7890 Suffolk Ln.', N'Boise', N'ID', N'10305', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10511, 9, 4, '20070418 00:00:00.000', '20070516 00:00:00.000', '20070421 00:00:00.000', 3, 350.64, N'Ship to 9-B', N'9012, rue des Bouchers', N'Marseille', NULL, N'10368', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10512, 21, 7, '20070421 00:00:00.000', '20070519 00:00:00.000', '20070424 00:00:00.000', 2, 3.53, N'Destination RNSMS', N'Rua Orós, 2345', N'Sao Paulo', N'SP', N'10160', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10513, 86, 7, '20070422 00:00:00.000', '20070603 00:00:00.000', '20070428 00:00:00.000', 1, 105.65, N'Ship to 86-A', N'Adenauerallee 8901', N'Stuttgart', NULL, N'10347', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10514, 20, 3, '20070422 00:00:00.000', '20070520 00:00:00.000', '20070516 00:00:00.000', 2, 789.95, N'Destination CUVPF', N'Kirchgasse 1234', N'Graz', NULL, N'10159', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10515, 63, 2, '20070423 00:00:00.000', '20070507 00:00:00.000', '20070523 00:00:00.000', 1, 204.47, N'Ship to 63-B', N'Taucherstraße 2345', N'Cunewalde', NULL, N'10280', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10516, 37, 2, '20070424 00:00:00.000', '20070522 00:00:00.000', '20070501 00:00:00.000', 3, 62.78, N'Destination DGKOU', N'6789 Johnstown Road', N'Cork', N'Co. Cork', N'10204', N'Ireland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10517, 53, 3, '20070424 00:00:00.000', '20070522 00:00:00.000', '20070429 00:00:00.000', 3, 32.07, N'Ship to 53-A', N'South House 2345 Queensbridge', N'London', NULL, N'10250', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10518, 80, 4, '20070425 00:00:00.000', '20070509 00:00:00.000', '20070505 00:00:00.000', 2, 218.15, N'Ship to 80-B', N'Avda. Azteca 4567', N'México D.F.', NULL, N'10333', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10519, 14, 6, '20070428 00:00:00.000', '20070526 00:00:00.000', '20070501 00:00:00.000', 3, 91.76, N'Destination NRTZZ', N'Hauptstr. 0123', N'Bern', NULL, N'10138', N'Switzerland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10520, 70, 7, '20070429 00:00:00.000', '20070527 00:00:00.000', '20070501 00:00:00.000', 1, 13.37, N'Ship to 70-B', N'Erling Skakkes gate 5678', N'Stavern', NULL, N'10303', N'Norway');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10521, 12, 8, '20070429 00:00:00.000', '20070527 00:00:00.000', '20070502 00:00:00.000', 2, 17.22, N'Destination QTHBC', N'Cerrito 6789', N'Buenos Aires', NULL, N'10134', N'Argentina');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10522, 44, 4, '20070430 00:00:00.000', '20070528 00:00:00.000', '20070506 00:00:00.000', 1, 45.33, N'Ship to 44-A', N'Magazinweg 4567', N'Frankfurt a.M.', NULL, N'10222', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10523, 72, 7, '20070501 00:00:00.000', '20070529 00:00:00.000', '20070530 00:00:00.000', 2, 77.63, N'Ship to 72-C', N'1234 Wadhurst Rd.', N'London', NULL, N'10309', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10524, 5, 1, '20070501 00:00:00.000', '20070529 00:00:00.000', '20070507 00:00:00.000', 2, 244.79, N'Ship to 5-A', N'Berguvsvägen  9012', N'Luleå', NULL, N'10267', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10525, 9, 1, '20070502 00:00:00.000', '20070530 00:00:00.000', '20070523 00:00:00.000', 2, 11.06, N'Ship to 9-B', N'9012, rue des Bouchers', N'Marseille', NULL, N'10368', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10526, 87, 4, '20070505 00:00:00.000', '20070602 00:00:00.000', '20070515 00:00:00.000', 2, 58.59, N'Ship to 87-C', N'Torikatu 3456', N'Oulu', NULL, N'10352', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10527, 63, 7, '20070505 00:00:00.000', '20070602 00:00:00.000', '20070507 00:00:00.000', 1, 41.90, N'Ship to 63-B', N'Taucherstraße 2345', N'Cunewalde', NULL, N'10280', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10528, 32, 6, '20070506 00:00:00.000', '20070520 00:00:00.000', '20070509 00:00:00.000', 2, 3.35, N'Destination LLUXZ', N'1234 Baker Blvd.', N'Eugene', N'OR', N'10189', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10529, 50, 5, '20070507 00:00:00.000', '20070604 00:00:00.000', '20070509 00:00:00.000', 2, 66.69, N'Ship to 50-B', N'Rue Joseph-Bens 4567', N'Bruxelles', NULL, N'10242', N'Belgium');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10530, 59, 3, '20070508 00:00:00.000', '20070605 00:00:00.000', '20070512 00:00:00.000', 2, 339.22, N'Ship to 59-C', N'Geislweg 8901', N'Salzburg', NULL, N'10266', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10531, 54, 7, '20070508 00:00:00.000', '20070605 00:00:00.000', '20070519 00:00:00.000', 1, 8.12, N'Ship to 54-A', N'Ing. Gustavo Moncada 4567 Piso 20-A', N'Buenos Aires', NULL, N'10252', N'Argentina');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10532, 19, 7, '20070509 00:00:00.000', '20070606 00:00:00.000', '20070512 00:00:00.000', 3, 74.46, N'Destination QTKCU', N'3456 King George', N'London', NULL, N'10151', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10533, 24, 8, '20070512 00:00:00.000', '20070609 00:00:00.000', '20070522 00:00:00.000', 1, 188.04, N'Destination KBSBN', N'Åkergatan 9012', N'Bräcke', NULL, N'10167', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10534, 44, 8, '20070512 00:00:00.000', '20070609 00:00:00.000', '20070514 00:00:00.000', 2, 27.94, N'Ship to 44-A', N'Magazinweg 4567', N'Frankfurt a.M.', NULL, N'10222', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10535, 3, 4, '20070513 00:00:00.000', '20070610 00:00:00.000', '20070521 00:00:00.000', 1, 15.64, N'Destination FQFLS', N'Mataderos  3456', N'México D.F.', NULL, N'10211', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10536, 44, 3, '20070514 00:00:00.000', '20070611 00:00:00.000', '20070606 00:00:00.000', 2, 58.88, N'Ship to 44-B', N'Magazinweg 5678', N'Frankfurt a.M.', NULL, N'10223', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10537, 68, 1, '20070514 00:00:00.000', '20070528 00:00:00.000', '20070519 00:00:00.000', 1, 78.85, N'Ship to 68-B', N'Starenweg 7890', N'Genève', NULL, N'10295', N'Switzerland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10538, 11, 9, '20070515 00:00:00.000', '20070612 00:00:00.000', '20070516 00:00:00.000', 3, 4.87, N'Destination DLEUN', N'Fauntleroy Circus 4567', N'London', NULL, N'10132', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10539, 11, 6, '20070516 00:00:00.000', '20070613 00:00:00.000', '20070523 00:00:00.000', 3, 12.36, N'Destination DLEUN', N'Fauntleroy Circus 4567', N'London', NULL, N'10132', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10540, 63, 3, '20070519 00:00:00.000', '20070616 00:00:00.000', '20070613 00:00:00.000', 3, 1007.64, N'Ship to 63-C', N'Taucherstraße 3456', N'Cunewalde', NULL, N'10281', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10541, 34, 2, '20070519 00:00:00.000', '20070616 00:00:00.000', '20070529 00:00:00.000', 1, 68.65, N'Destination SCQXA', N'Rua do Paço, 7890', N'Rio de Janeiro', N'RJ', N'10195', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10542, 39, 1, '20070520 00:00:00.000', '20070617 00:00:00.000', '20070526 00:00:00.000', 3, 10.95, N'Destination DKMQA', N'Maubelstr. 0123', N'Brandenburg', NULL, N'10208', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10543, 46, 8, '20070521 00:00:00.000', '20070618 00:00:00.000', '20070523 00:00:00.000', 2, 48.17, N'Ship to 46-B', N'Carrera 1234 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'10228', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10544, 48, 4, '20070521 00:00:00.000', '20070618 00:00:00.000', '20070530 00:00:00.000', 1, 24.91, N'Ship to 48-C', N'7890 Chiaroscuro Rd.', N'Portland', N'OR', N'10234', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10545, 43, 8, '20070522 00:00:00.000', '20070619 00:00:00.000', '20070626 00:00:00.000', 2, 11.92, N'Ship to 43-B', N'3456 Orchestra Terrace', N'Walla Walla', N'WA', N'10221', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10546, 84, 1, '20070523 00:00:00.000', '20070620 00:00:00.000', '20070527 00:00:00.000', 3, 194.72, N'Ship to 84-C', N'5678, rue du Commerce', N'Lyon', NULL, N'10344', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10547, 72, 3, '20070523 00:00:00.000', '20070620 00:00:00.000', '20070602 00:00:00.000', 2, 178.43, N'Ship to 72-C', N'1234 Wadhurst Rd.', N'London', NULL, N'10309', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10548, 79, 3, '20070526 00:00:00.000', '20070623 00:00:00.000', '20070602 00:00:00.000', 2, 1.43, N'Ship to 79-A', N'Luisenstr. 7890', N'Münster', NULL, N'10326', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10549, 63, 5, '20070527 00:00:00.000', '20070610 00:00:00.000', '20070530 00:00:00.000', 1, 171.24, N'Ship to 63-C', N'Taucherstraße 3456', N'Cunewalde', NULL, N'10281', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10550, 30, 7, '20070528 00:00:00.000', '20070625 00:00:00.000', '20070606 00:00:00.000', 3, 4.32, N'Destination GGQIR', N'C/ Romero, 6789', N'Sevilla', NULL, N'10184', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10551, 28, 4, '20070528 00:00:00.000', '20070709 00:00:00.000', '20070606 00:00:00.000', 3, 72.95, N'Destination OTSWR', N'Jardim das rosas n. 9012', N'Lisboa', NULL, N'10177', N'Portugal');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10552, 35, 2, '20070529 00:00:00.000', '20070626 00:00:00.000', '20070605 00:00:00.000', 1, 83.22, N'Destination UOUWK', N'Carrera 9012 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'10197', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10553, 87, 2, '20070530 00:00:00.000', '20070627 00:00:00.000', '20070603 00:00:00.000', 2, 149.49, N'Ship to 87-B', N'Torikatu 2345', N'Oulu', NULL, N'10351', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10554, 56, 4, '20070530 00:00:00.000', '20070627 00:00:00.000', '20070605 00:00:00.000', 3, 120.97, N'Ship to 56-C', N'Mehrheimerstr. 2345', N'Köln', NULL, N'10260', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10555, 71, 6, '20070602 00:00:00.000', '20070630 00:00:00.000', '20070604 00:00:00.000', 3, 252.49, N'Ship to 71-B', N'8901 Suffolk Ln.', N'Boise', N'ID', N'10306', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10556, 73, 2, '20070603 00:00:00.000', '20070715 00:00:00.000', '20070613 00:00:00.000', 1, 9.80, N'Ship to 73-A', N'Vinbæltet 1234', N'Kobenhavn', NULL, N'10310', N'Denmark');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10557, 44, 9, '20070603 00:00:00.000', '20070617 00:00:00.000', '20070606 00:00:00.000', 2, 96.72, N'Ship to 44-C', N'Magazinweg 6789', N'Frankfurt a.M.', NULL, N'10224', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10558, 4, 1, '20070604 00:00:00.000', '20070702 00:00:00.000', '20070610 00:00:00.000', 2, 72.97, N'Ship to 4-B', N'Brook Farm Stratford St. Mary 1234', N'Colchester', N'Essex', N'10239', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10559, 7, 6, '20070605 00:00:00.000', '20070703 00:00:00.000', '20070613 00:00:00.000', 1, 8.05, N'Ship to 7-B', N'1234, place Kléber', N'Strasbourg', NULL, N'10330', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10560, 25, 8, '20070606 00:00:00.000', '20070704 00:00:00.000', '20070609 00:00:00.000', 1, 36.65, N'Destination QOCBL', N'Berliner Platz 1234', N'München', NULL, N'10169', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10561, 24, 2, '20070606 00:00:00.000', '20070704 00:00:00.000', '20070609 00:00:00.000', 2, 242.21, N'Destination YCMPK', N'Åkergatan 8901', N'Bräcke', NULL, N'10166', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10562, 66, 1, '20070609 00:00:00.000', '20070707 00:00:00.000', '20070612 00:00:00.000', 1, 22.95, N'Ship to 66-B', N'Strada Provinciale 1234', N'Reggio Emilia', NULL, N'10289', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10563, 67, 2, '20070610 00:00:00.000', '20070722 00:00:00.000', '20070624 00:00:00.000', 2, 60.43, N'Ship to 67-B', N'Av. Copacabana, 4567', N'Rio de Janeiro', N'RJ', N'10292', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10564, 65, 4, '20070610 00:00:00.000', '20070708 00:00:00.000', '20070616 00:00:00.000', 3, 13.75, N'Ship to 65-B', N'8901 Milton Dr.', N'Albuquerque', N'NM', N'10286', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10565, 51, 8, '20070611 00:00:00.000', '20070709 00:00:00.000', '20070618 00:00:00.000', 2, 7.15, N'Ship to 51-C', N'8901 rue St. Laurent', N'Montréal', N'Québec', N'10246', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10566, 7, 9, '20070612 00:00:00.000', '20070710 00:00:00.000', '20070618 00:00:00.000', 1, 88.40, N'Ship to 7-C', N'2345, place Kléber', N'Strasbourg', NULL, N'10331', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10567, 37, 1, '20070612 00:00:00.000', '20070710 00:00:00.000', '20070617 00:00:00.000', 1, 33.97, N'Destination DGKOU', N'6789 Johnstown Road', N'Cork', N'Co. Cork', N'10204', N'Ireland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10568, 29, 3, '20070613 00:00:00.000', '20070711 00:00:00.000', '20070709 00:00:00.000', 3, 6.54, N'Destination VPNNG', N'Rambla de Cataluña, 0123', N'Barcelona', NULL, N'10178', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10569, 65, 5, '20070616 00:00:00.000', '20070714 00:00:00.000', '20070711 00:00:00.000', 1, 58.98, N'Ship to 65-B', N'8901 Milton Dr.', N'Albuquerque', N'NM', N'10286', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10570, 51, 3, '20070617 00:00:00.000', '20070715 00:00:00.000', '20070619 00:00:00.000', 3, 188.99, N'Ship to 51-C', N'8901 rue St. Laurent', N'Montréal', N'Québec', N'10246', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10571, 20, 8, '20070617 00:00:00.000', '20070729 00:00:00.000', '20070704 00:00:00.000', 3, 26.06, N'Destination RVDMF', N'Kirchgasse 9012', N'Graz', NULL, N'10157', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10572, 5, 3, '20070618 00:00:00.000', '20070716 00:00:00.000', '20070625 00:00:00.000', 2, 116.43, N'Ship to 5-B', N'Berguvsvägen  0123', N'Luleå', NULL, N'10268', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10573, 3, 7, '20070619 00:00:00.000', '20070717 00:00:00.000', '20070620 00:00:00.000', 3, 84.84, N'Destination LANNN', N'Mataderos  4567', N'México D.F.', NULL, N'10212', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10574, 82, 4, '20070619 00:00:00.000', '20070717 00:00:00.000', '20070630 00:00:00.000', 2, 37.60, N'Ship to 82-A', N'8901 DaVinci Blvd.', N'Kirkland', N'WA', N'10337', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10575, 52, 5, '20070620 00:00:00.000', '20070704 00:00:00.000', '20070630 00:00:00.000', 1, 127.34, N'Ship to 52-C', N'Heerstr. 1234', N'Leipzig', NULL, N'10249', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10576, 80, 3, '20070623 00:00:00.000', '20070707 00:00:00.000', '20070630 00:00:00.000', 3, 18.56, N'Ship to 80-C', N'Avda. Azteca 5678', N'México D.F.', NULL, N'10334', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10577, 82, 9, '20070623 00:00:00.000', '20070804 00:00:00.000', '20070630 00:00:00.000', 2, 25.41, N'Ship to 82-B', N'9012 DaVinci Blvd.', N'Kirkland', N'WA', N'10338', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10578, 11, 4, '20070624 00:00:00.000', '20070722 00:00:00.000', '20070725 00:00:00.000', 3, 29.60, N'Destination NZASL', N'Fauntleroy Circus 5678', N'London', NULL, N'10133', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10579, 45, 1, '20070625 00:00:00.000', '20070723 00:00:00.000', '20070704 00:00:00.000', 2, 13.73, N'Ship to 45-C', N'9012 Polk St. Suite 5', N'San Francisco', N'CA', N'10226', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10580, 56, 4, '20070626 00:00:00.000', '20070724 00:00:00.000', '20070701 00:00:00.000', 3, 75.89, N'Ship to 56-C', N'Mehrheimerstr. 2345', N'Köln', NULL, N'10260', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10581, 21, 3, '20070626 00:00:00.000', '20070724 00:00:00.000', '20070702 00:00:00.000', 1, 3.01, N'Destination SSYXZ', N'Rua Orós, 3456', N'Sao Paulo', N'SP', N'10161', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10582, 6, 3, '20070627 00:00:00.000', '20070725 00:00:00.000', '20070714 00:00:00.000', 2, 27.71, N'Ship to 6-A', N'Forsterstr. 2345', N'Mannheim', NULL, N'10300', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10583, 87, 2, '20070630 00:00:00.000', '20070728 00:00:00.000', '20070704 00:00:00.000', 2, 7.28, N'Ship to 87-C', N'Torikatu 3456', N'Oulu', NULL, N'10352', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10584, 7, 4, '20070630 00:00:00.000', '20070728 00:00:00.000', '20070704 00:00:00.000', 1, 59.14, N'Ship to 7-B', N'1234, place Kléber', N'Strasbourg', NULL, N'10330', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10585, 88, 7, '20070701 00:00:00.000', '20070729 00:00:00.000', '20070710 00:00:00.000', 1, 13.41, N'Ship to 88-A', N'Rua do Mercado, 4567', N'Resende', N'SP', N'10353', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10586, 66, 9, '20070702 00:00:00.000', '20070730 00:00:00.000', '20070709 00:00:00.000', 1, 0.48, N'Ship to 66-B', N'Strada Provinciale 1234', N'Reggio Emilia', NULL, N'10289', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10587, 61, 1, '20070702 00:00:00.000', '20070730 00:00:00.000', '20070709 00:00:00.000', 1, 62.52, N'Ship to 61-C', N'Rua da Panificadora, 7890', N'Rio de Janeiro', N'RJ', N'10275', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10588, 63, 2, '20070703 00:00:00.000', '20070731 00:00:00.000', '20070710 00:00:00.000', 3, 194.67, N'Ship to 63-A', N'Taucherstraße 1234', N'Cunewalde', NULL, N'10279', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10589, 32, 8, '20070704 00:00:00.000', '20070801 00:00:00.000', '20070714 00:00:00.000', 2, 4.42, N'Destination AVQUS', N'2345 Baker Blvd.', N'Eugene', N'OR', N'10190', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10590, 51, 4, '20070707 00:00:00.000', '20070804 00:00:00.000', '20070714 00:00:00.000', 3, 44.77, N'Ship to 51-B', N'7890 rue St. Laurent', N'Montréal', N'Québec', N'10245', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10591, 83, 1, '20070707 00:00:00.000', '20070721 00:00:00.000', '20070716 00:00:00.000', 1, 55.92, N'Ship to 83-A', N'Smagsloget 0123', N'Århus', NULL, N'10339', N'Denmark');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10592, 44, 3, '20070708 00:00:00.000', '20070805 00:00:00.000', '20070716 00:00:00.000', 1, 32.10, N'Ship to 44-B', N'Magazinweg 5678', N'Frankfurt a.M.', NULL, N'10223', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10593, 44, 7, '20070709 00:00:00.000', '20070806 00:00:00.000', '20070813 00:00:00.000', 2, 174.20, N'Ship to 44-C', N'Magazinweg 6789', N'Frankfurt a.M.', NULL, N'10224', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10594, 55, 3, '20070709 00:00:00.000', '20070806 00:00:00.000', '20070716 00:00:00.000', 2, 5.24, N'Ship to 55-B', N'8901 Bering St.', N'Anchorage', N'AK', N'10256', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10595, 20, 2, '20070710 00:00:00.000', '20070807 00:00:00.000', '20070714 00:00:00.000', 1, 96.78, N'Destination CUVPF', N'Kirchgasse 1234', N'Graz', NULL, N'10159', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10596, 89, 8, '20070711 00:00:00.000', '20070808 00:00:00.000', '20070812 00:00:00.000', 1, 16.34, N'Ship to 89-C', N'9012 - 12th Ave. S.', N'Seattle', N'WA', N'10358', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10597, 59, 7, '20070711 00:00:00.000', '20070808 00:00:00.000', '20070718 00:00:00.000', 3, 35.12, N'Ship to 59-B', N'Geislweg 7890', N'Salzburg', NULL, N'10265', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10598, 65, 1, '20070714 00:00:00.000', '20070811 00:00:00.000', '20070718 00:00:00.000', 3, 44.42, N'Ship to 65-C', N'9012 Milton Dr.', N'Albuquerque', N'NM', N'10287', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10599, 11, 6, '20070715 00:00:00.000', '20070826 00:00:00.000', '20070721 00:00:00.000', 3, 29.98, N'Destination DLEUN', N'Fauntleroy Circus 4567', N'London', NULL, N'10132', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10600, 36, 4, '20070716 00:00:00.000', '20070813 00:00:00.000', '20070721 00:00:00.000', 1, 45.13, N'Destination HOHCR', N'City Center Plaza 3456 Main St.', N'Elgin', N'OR', N'10201', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10601, 35, 7, '20070716 00:00:00.000', '20070827 00:00:00.000', '20070722 00:00:00.000', 1, 58.30, N'Destination UOUWK', N'Carrera 9012 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'10197', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10602, 83, 8, '20070717 00:00:00.000', '20070814 00:00:00.000', '20070722 00:00:00.000', 2, 2.92, N'Ship to 83-A', N'Smagsloget 0123', N'Århus', NULL, N'10339', N'Denmark');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10603, 71, 8, '20070718 00:00:00.000', '20070815 00:00:00.000', '20070808 00:00:00.000', 2, 48.77, N'Ship to 71-C', N'9012 Suffolk Ln.', N'Boise', N'ID', N'10307', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10604, 28, 1, '20070718 00:00:00.000', '20070815 00:00:00.000', '20070729 00:00:00.000', 1, 7.46, N'Destination CIRQO', N'Jardim das rosas n. 8901', N'Lisboa', NULL, N'10176', N'Portugal');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10605, 51, 1, '20070721 00:00:00.000', '20070818 00:00:00.000', '20070729 00:00:00.000', 2, 379.13, N'Ship to 51-B', N'7890 rue St. Laurent', N'Montréal', N'Québec', N'10245', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10606, 81, 4, '20070722 00:00:00.000', '20070819 00:00:00.000', '20070731 00:00:00.000', 3, 79.40, N'Ship to 81-C', N'Av. Inês de Castro, 7890', N'Sao Paulo', N'SP', N'10336', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10607, 71, 5, '20070722 00:00:00.000', '20070819 00:00:00.000', '20070725 00:00:00.000', 1, 200.24, N'Ship to 71-C', N'9012 Suffolk Ln.', N'Boise', N'ID', N'10307', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10608, 79, 4, '20070723 00:00:00.000', '20070820 00:00:00.000', '20070801 00:00:00.000', 2, 27.79, N'Ship to 79-C', N'Luisenstr. 9012', N'Münster', NULL, N'10328', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10609, 18, 7, '20070724 00:00:00.000', '20070821 00:00:00.000', '20070730 00:00:00.000', 2, 1.85, N'Destination SNPXM', N'0123, rue des Cinquante Otages', N'Nantes', NULL, N'10148', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10610, 41, 8, '20070725 00:00:00.000', '20070822 00:00:00.000', '20070806 00:00:00.000', 1, 26.78, N'Ship to 41-C', N'0123 rue Alsace-Lorraine', N'Toulouse', NULL, N'10218', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10611, 91, 6, '20070725 00:00:00.000', '20070822 00:00:00.000', '20070801 00:00:00.000', 2, 80.65, N'Ship to 91-B', N'ul. Filtrowa 6789', N'Warszawa', NULL, N'10365', N'Poland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10612, 71, 1, '20070728 00:00:00.000', '20070825 00:00:00.000', '20070801 00:00:00.000', 2, 544.08, N'Ship to 71-A', N'7890 Suffolk Ln.', N'Boise', N'ID', N'10305', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10613, 35, 4, '20070729 00:00:00.000', '20070826 00:00:00.000', '20070801 00:00:00.000', 2, 8.11, N'Destination JYDLM', N'Carrera1234 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'10199', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10614, 6, 8, '20070729 00:00:00.000', '20070826 00:00:00.000', '20070801 00:00:00.000', 3, 1.93, N'Ship to 6-A', N'Forsterstr. 2345', N'Mannheim', NULL, N'10300', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10615, 90, 2, '20070730 00:00:00.000', '20070827 00:00:00.000', '20070806 00:00:00.000', 3, 0.75, N'Ship to 90-B', N'Keskuskatu 3456', N'Helsinki', NULL, N'10362', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10616, 32, 1, '20070731 00:00:00.000', '20070828 00:00:00.000', '20070805 00:00:00.000', 2, 116.53, N'Destination LLUXZ', N'1234 Baker Blvd.', N'Eugene', N'OR', N'10189', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10617, 32, 4, '20070731 00:00:00.000', '20070828 00:00:00.000', '20070804 00:00:00.000', 2, 18.53, N'Destination AVQUS', N'2345 Baker Blvd.', N'Eugene', N'OR', N'10190', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10618, 51, 1, '20070801 00:00:00.000', '20070912 00:00:00.000', '20070808 00:00:00.000', 1, 154.68, N'Ship to 51-C', N'8901 rue St. Laurent', N'Montréal', N'Québec', N'10246', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10619, 51, 3, '20070804 00:00:00.000', '20070901 00:00:00.000', '20070807 00:00:00.000', 3, 91.05, N'Ship to 51-B', N'7890 rue St. Laurent', N'Montréal', N'Québec', N'10245', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10620, 42, 2, '20070805 00:00:00.000', '20070902 00:00:00.000', '20070814 00:00:00.000', 3, 0.94, N'Ship to 42-A', N'1234 Elm St.', N'Vancouver', N'BC', N'10219', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10621, 38, 4, '20070805 00:00:00.000', '20070902 00:00:00.000', '20070811 00:00:00.000', 2, 23.73, N'Destination LMVGS', N'Garden House Crowther Way 8901', N'Cowes', N'Isle of Wight', N'10206', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10622, 67, 4, '20070806 00:00:00.000', '20070903 00:00:00.000', '20070811 00:00:00.000', 3, 50.97, N'Ship to 67-A', N'Av. Copacabana, 3456', N'Rio de Janeiro', N'RJ', N'10291', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10623, 25, 8, '20070807 00:00:00.000', '20070904 00:00:00.000', '20070812 00:00:00.000', 2, 97.18, N'Destination VAPXU', N'Berliner Platz 0123', N'München', NULL, N'10168', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10624, 78, 4, '20070807 00:00:00.000', '20070904 00:00:00.000', '20070819 00:00:00.000', 2, 94.80, N'Ship to 78-C', N'6789 Grizzly Peak Rd.', N'Butte', N'MT', N'10325', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10625, 2, 3, '20070808 00:00:00.000', '20070905 00:00:00.000', '20070814 00:00:00.000', 1, 43.90, N'Destination QOTQA', N'Avda. de la Constitución 3456', N'México D.F.', NULL, N'10181', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10626, 5, 1, '20070811 00:00:00.000', '20070908 00:00:00.000', '20070820 00:00:00.000', 2, 138.69, N'Ship to 5-A', N'Berguvsvägen  9012', N'Luleå', NULL, N'10267', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10627, 71, 8, '20070811 00:00:00.000', '20070922 00:00:00.000', '20070821 00:00:00.000', 3, 107.46, N'Ship to 71-B', N'8901 Suffolk Ln.', N'Boise', N'ID', N'10306', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10628, 7, 4, '20070812 00:00:00.000', '20070909 00:00:00.000', '20070820 00:00:00.000', 3, 30.36, N'Ship to 7-B', N'1234, place Kléber', N'Strasbourg', NULL, N'10330', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10629, 30, 4, '20070812 00:00:00.000', '20070909 00:00:00.000', '20070820 00:00:00.000', 3, 85.46, N'Destination IIYDD', N'C/ Romero, 5678', N'Sevilla', NULL, N'10183', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10630, 39, 1, '20070813 00:00:00.000', '20070910 00:00:00.000', '20070819 00:00:00.000', 2, 32.35, N'Destination RMBHM', N'Maubelstr. 1234', N'Brandenburg', NULL, N'10209', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10631, 41, 8, '20070814 00:00:00.000', '20070911 00:00:00.000', '20070815 00:00:00.000', 1, 0.87, N'Destination OLJND', N'8901 rue Alsace-Lorraine', N'Toulouse', NULL, N'10216', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10632, 86, 8, '20070814 00:00:00.000', '20070911 00:00:00.000', '20070819 00:00:00.000', 1, 41.38, N'Ship to 86-C', N'Adenauerallee 0123', N'Stuttgart', NULL, N'10349', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10633, 20, 7, '20070815 00:00:00.000', '20070912 00:00:00.000', '20070818 00:00:00.000', 3, 477.90, N'Destination FFXKT', N'Kirchgasse 0123', N'Graz', NULL, N'10158', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10634, 23, 4, '20070815 00:00:00.000', '20070912 00:00:00.000', '20070821 00:00:00.000', 3, 487.38, N'Destination AGPCO', N'6789, chaussée de Tournai', N'Lille', NULL, N'10164', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10635, 49, 8, '20070818 00:00:00.000', '20070915 00:00:00.000', '20070821 00:00:00.000', 3, 47.46, N'Ship to 49-A', N'Via Ludovico il Moro 8901', N'Bergamo', NULL, N'10235', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10636, 87, 4, '20070819 00:00:00.000', '20070916 00:00:00.000', '20070826 00:00:00.000', 1, 1.15, N'Ship to 87-A', N'Torikatu 1234', N'Oulu', NULL, N'10350', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10637, 62, 6, '20070819 00:00:00.000', '20070916 00:00:00.000', '20070826 00:00:00.000', 1, 201.29, N'Ship to 62-C', N'Alameda dos Canàrios, 0123', N'Sao Paulo', N'SP', N'10278', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10638, 47, 3, '20070820 00:00:00.000', '20070917 00:00:00.000', '20070901 00:00:00.000', 1, 158.44, N'Ship to 47-B', N'Ave. 5 de Mayo Porlamar 4567', N'I. de Margarita', N'Nueva Esparta', N'10231', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10639, 70, 7, '20070820 00:00:00.000', '20070917 00:00:00.000', '20070827 00:00:00.000', 3, 38.64, N'Ship to 70-B', N'Erling Skakkes gate 5678', N'Stavern', NULL, N'10303', N'Norway');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10640, 86, 4, '20070821 00:00:00.000', '20070918 00:00:00.000', '20070828 00:00:00.000', 1, 23.55, N'Ship to 86-A', N'Adenauerallee 8901', N'Stuttgart', NULL, N'10347', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10641, 35, 4, '20070822 00:00:00.000', '20070919 00:00:00.000', '20070826 00:00:00.000', 2, 179.61, N'Destination JYDLM', N'Carrera1234 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'10199', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10642, 73, 7, '20070822 00:00:00.000', '20070919 00:00:00.000', '20070905 00:00:00.000', 3, 41.89, N'Ship to 73-C', N'Vinbæltet 2345', N'Kobenhavn', NULL, N'10311', N'Denmark');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10643, 1, 6, '20070825 00:00:00.000', '20070922 00:00:00.000', '20070902 00:00:00.000', 1, 29.46, N'Destination LOUIE', N'Obere Str. 6789', N'Berlin', NULL, N'10154', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10644, 88, 3, '20070825 00:00:00.000', '20070922 00:00:00.000', '20070901 00:00:00.000', 2, 0.14, N'Ship to 88-A', N'Rua do Mercado, 4567', N'Resende', N'SP', N'10353', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10645, 34, 4, '20070826 00:00:00.000', '20070923 00:00:00.000', '20070902 00:00:00.000', 1, 12.41, N'Destination DPCVR', N'Rua do Paço, 6789', N'Rio de Janeiro', N'RJ', N'10194', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10646, 37, 9, '20070827 00:00:00.000', '20071008 00:00:00.000', '20070903 00:00:00.000', 3, 142.33, N'Destination ATSOA', N'4567 Johnstown Road', N'Cork', N'Co. Cork', N'10202', N'Ireland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10647, 61, 4, '20070827 00:00:00.000', '20070910 00:00:00.000', '20070903 00:00:00.000', 2, 45.54, N'Ship to 61-B', N'Rua da Panificadora, 6789', N'Rio de Janeiro', N'RJ', N'10274', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10648, 67, 5, '20070828 00:00:00.000', '20071009 00:00:00.000', '20070909 00:00:00.000', 2, 14.25, N'Ship to 67-C', N'Av. Copacabana, 5678', N'Rio de Janeiro', N'RJ', N'10293', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10649, 50, 5, '20070828 00:00:00.000', '20070925 00:00:00.000', '20070829 00:00:00.000', 3, 6.20, N'Ship to 50-B', N'Rue Joseph-Bens 4567', N'Bruxelles', NULL, N'10242', N'Belgium');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10650, 21, 5, '20070829 00:00:00.000', '20070926 00:00:00.000', '20070903 00:00:00.000', 3, 176.81, N'Destination SSYXZ', N'Rua Orós, 3456', N'Sao Paulo', N'SP', N'10161', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10651, 86, 8, '20070901 00:00:00.000', '20070929 00:00:00.000', '20070911 00:00:00.000', 2, 20.60, N'Ship to 86-A', N'Adenauerallee 8901', N'Stuttgart', NULL, N'10347', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10652, 31, 4, '20070901 00:00:00.000', '20070929 00:00:00.000', '20070908 00:00:00.000', 2, 7.14, N'Destination VNIAG', N'Av. Brasil, 9012', N'Campinas', N'SP', N'10187', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10653, 25, 1, '20070902 00:00:00.000', '20070930 00:00:00.000', '20070919 00:00:00.000', 1, 93.25, N'Destination QOCBL', N'Berliner Platz 1234', N'München', NULL, N'10169', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10654, 5, 5, '20070902 00:00:00.000', '20070930 00:00:00.000', '20070911 00:00:00.000', 1, 55.26, N'Ship to 5-C', N'Berguvsvägen  1234', N'Luleå', NULL, N'10269', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10655, 66, 1, '20070903 00:00:00.000', '20071001 00:00:00.000', '20070911 00:00:00.000', 2, 4.41, N'Ship to 66-B', N'Strada Provinciale 1234', N'Reggio Emilia', NULL, N'10289', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10656, 32, 6, '20070904 00:00:00.000', '20071002 00:00:00.000', '20070910 00:00:00.000', 1, 57.15, N'Destination AVQUS', N'2345 Baker Blvd.', N'Eugene', N'OR', N'10190', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10657, 71, 2, '20070904 00:00:00.000', '20071002 00:00:00.000', '20070915 00:00:00.000', 2, 352.69, N'Ship to 71-A', N'7890 Suffolk Ln.', N'Boise', N'ID', N'10305', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10658, 63, 4, '20070905 00:00:00.000', '20071003 00:00:00.000', '20070908 00:00:00.000', 1, 364.15, N'Ship to 63-C', N'Taucherstraße 3456', N'Cunewalde', NULL, N'10281', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10659, 62, 7, '20070905 00:00:00.000', '20071003 00:00:00.000', '20070910 00:00:00.000', 2, 105.81, N'Ship to 62-B', N'Alameda dos Canàrios, 9012', N'Sao Paulo', N'SP', N'10277', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10660, 36, 8, '20070908 00:00:00.000', '20071006 00:00:00.000', '20071015 00:00:00.000', 1, 111.29, N'Destination HOHCR', N'City Center Plaza 3456 Main St.', N'Elgin', N'OR', N'10201', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10661, 37, 7, '20070909 00:00:00.000', '20071007 00:00:00.000', '20070915 00:00:00.000', 3, 17.55, N'Destination ATSOA', N'4567 Johnstown Road', N'Cork', N'Co. Cork', N'10202', N'Ireland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10662, 48, 3, '20070909 00:00:00.000', '20071007 00:00:00.000', '20070918 00:00:00.000', 2, 1.28, N'Ship to 48-C', N'7890 Chiaroscuro Rd.', N'Portland', N'OR', N'10234', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10663, 9, 2, '20070910 00:00:00.000', '20070924 00:00:00.000', '20071003 00:00:00.000', 2, 113.15, N'Ship to 9-B', N'9012, rue des Bouchers', N'Marseille', NULL, N'10368', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10664, 28, 1, '20070910 00:00:00.000', '20071008 00:00:00.000', '20070919 00:00:00.000', 3, 1.27, N'Destination OTSWR', N'Jardim das rosas n. 9012', N'Lisboa', NULL, N'10177', N'Portugal');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10665, 48, 1, '20070911 00:00:00.000', '20071009 00:00:00.000', '20070917 00:00:00.000', 2, 26.31, N'Ship to 48-B', N'6789 Chiaroscuro Rd.', N'Portland', N'OR', N'10233', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10666, 68, 7, '20070912 00:00:00.000', '20071010 00:00:00.000', '20070922 00:00:00.000', 2, 232.42, N'Ship to 68-A', N'Starenweg 6789', N'Genève', NULL, N'10294', N'Switzerland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10667, 20, 7, '20070912 00:00:00.000', '20071010 00:00:00.000', '20070919 00:00:00.000', 1, 78.09, N'Destination CUVPF', N'Kirchgasse 1234', N'Graz', NULL, N'10159', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10668, 86, 1, '20070915 00:00:00.000', '20071013 00:00:00.000', '20070923 00:00:00.000', 2, 47.22, N'Ship to 86-C', N'Adenauerallee 0123', N'Stuttgart', NULL, N'10349', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10669, 73, 2, '20070915 00:00:00.000', '20071013 00:00:00.000', '20070922 00:00:00.000', 1, 24.39, N'Ship to 73-A', N'Vinbæltet 1234', N'Kobenhavn', NULL, N'10310', N'Denmark');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10670, 25, 4, '20070916 00:00:00.000', '20071014 00:00:00.000', '20070918 00:00:00.000', 1, 203.48, N'Destination QOCBL', N'Berliner Platz 1234', N'München', NULL, N'10169', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10671, 26, 1, '20070917 00:00:00.000', '20071015 00:00:00.000', '20070924 00:00:00.000', 1, 30.34, N'Destination OPXJT', N'4567, rue Royale', N'Nantes', NULL, N'10172', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10672, 5, 9, '20070917 00:00:00.000', '20071001 00:00:00.000', '20070926 00:00:00.000', 2, 95.75, N'Ship to 5-C', N'Berguvsvägen  1234', N'Luleå', NULL, N'10269', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10673, 90, 2, '20070918 00:00:00.000', '20071016 00:00:00.000', '20070919 00:00:00.000', 1, 22.76, N'Ship to 90-B', N'Keskuskatu 3456', N'Helsinki', NULL, N'10362', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10674, 38, 4, '20070918 00:00:00.000', '20071016 00:00:00.000', '20070930 00:00:00.000', 2, 0.90, N'Destination QVTLW', N'Garden House Crowther Way 7890', N'Cowes', N'Isle of Wight', N'10205', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10675, 25, 5, '20070919 00:00:00.000', '20071017 00:00:00.000', '20070923 00:00:00.000', 2, 31.85, N'Destination WEGWI', N'Berliner Platz 2345', N'München', NULL, N'10170', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10676, 80, 2, '20070922 00:00:00.000', '20071020 00:00:00.000', '20070929 00:00:00.000', 2, 2.01, N'Ship to 80-C', N'Avda. Azteca 5678', N'México D.F.', NULL, N'10334', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10677, 3, 1, '20070922 00:00:00.000', '20071020 00:00:00.000', '20070926 00:00:00.000', 3, 4.03, N'Destination LANNN', N'Mataderos  4567', N'México D.F.', NULL, N'10212', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10678, 71, 7, '20070923 00:00:00.000', '20071021 00:00:00.000', '20071016 00:00:00.000', 3, 388.98, N'Ship to 71-A', N'7890 Suffolk Ln.', N'Boise', N'ID', N'10305', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10679, 7, 8, '20070923 00:00:00.000', '20071021 00:00:00.000', '20070930 00:00:00.000', 3, 27.94, N'Ship to 7-A', N'0123, place Kléber', N'Strasbourg', NULL, N'10329', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10680, 55, 1, '20070924 00:00:00.000', '20071022 00:00:00.000', '20070926 00:00:00.000', 1, 26.61, N'Ship to 55-B', N'8901 Bering St.', N'Anchorage', N'AK', N'10256', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10681, 32, 3, '20070925 00:00:00.000', '20071023 00:00:00.000', '20070930 00:00:00.000', 3, 76.13, N'Destination AVQUS', N'2345 Baker Blvd.', N'Eugene', N'OR', N'10190', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10682, 3, 3, '20070925 00:00:00.000', '20071023 00:00:00.000', '20071001 00:00:00.000', 2, 36.13, N'Destination RTGIS', N'Mataderos  2345', N'México D.F.', NULL, N'10210', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10683, 18, 2, '20070926 00:00:00.000', '20071024 00:00:00.000', '20071001 00:00:00.000', 1, 4.40, N'Destination FVRGC', N'2345, rue des Cinquante Otages', N'Nantes', NULL, N'10150', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10684, 56, 3, '20070926 00:00:00.000', '20071024 00:00:00.000', '20070930 00:00:00.000', 1, 145.63, N'Ship to 56-B', N'Mehrheimerstr. 1234', N'Köln', NULL, N'10259', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10685, 31, 4, '20070929 00:00:00.000', '20071013 00:00:00.000', '20071003 00:00:00.000', 2, 33.75, N'Destination VNIAG', N'Av. Brasil, 9012', N'Campinas', N'SP', N'10187', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10686, 59, 2, '20070930 00:00:00.000', '20071028 00:00:00.000', '20071008 00:00:00.000', 1, 96.50, N'Ship to 59-B', N'Geislweg 7890', N'Salzburg', NULL, N'10265', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10687, 37, 9, '20070930 00:00:00.000', '20071028 00:00:00.000', '20071030 00:00:00.000', 2, 296.43, N'Destination KPVYJ', N'5678 Johnstown Road', N'Cork', N'Co. Cork', N'10203', N'Ireland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10688, 83, 4, '20071001 00:00:00.000', '20071015 00:00:00.000', '20071007 00:00:00.000', 2, 299.09, N'Ship to 83-A', N'Smagsloget 0123', N'Århus', NULL, N'10339', N'Denmark');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10689, 5, 1, '20071001 00:00:00.000', '20071029 00:00:00.000', '20071007 00:00:00.000', 2, 13.42, N'Ship to 5-B', N'Berguvsvägen  0123', N'Luleå', NULL, N'10268', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10690, 34, 1, '20071002 00:00:00.000', '20071030 00:00:00.000', '20071003 00:00:00.000', 1, 15.80, N'Destination JPAIY', N'Rua do Paço, 8901', N'Rio de Janeiro', N'RJ', N'10196', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10691, 63, 2, '20071003 00:00:00.000', '20071114 00:00:00.000', '20071022 00:00:00.000', 2, 810.05, N'Ship to 63-B', N'Taucherstraße 2345', N'Cunewalde', NULL, N'10280', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10692, 1, 4, '20071003 00:00:00.000', '20071031 00:00:00.000', '20071013 00:00:00.000', 2, 61.02, N'Destination RSVRP', N'Obere Str. 8901', N'Berlin', NULL, N'10156', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10693, 89, 3, '20071006 00:00:00.000', '20071020 00:00:00.000', '20071010 00:00:00.000', 3, 139.34, N'Ship to 89-C', N'9012 - 12th Ave. S.', N'Seattle', N'WA', N'10358', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10694, 63, 8, '20071006 00:00:00.000', '20071103 00:00:00.000', '20071009 00:00:00.000', 3, 398.36, N'Ship to 63-A', N'Taucherstraße 1234', N'Cunewalde', NULL, N'10279', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10695, 90, 7, '20071007 00:00:00.000', '20071118 00:00:00.000', '20071014 00:00:00.000', 1, 16.72, N'Ship to 90-C', N'Keskuskatu 4567', N'Helsinki', NULL, N'10363', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10696, 89, 8, '20071008 00:00:00.000', '20071119 00:00:00.000', '20071014 00:00:00.000', 3, 102.55, N'Ship to 89-A', N'7890 - 12th Ave. S.', N'Seattle', N'WA', N'10356', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10697, 47, 3, '20071008 00:00:00.000', '20071105 00:00:00.000', '20071014 00:00:00.000', 1, 45.52, N'Ship to 47-B', N'Ave. 5 de Mayo Porlamar 4567', N'I. de Margarita', N'Nueva Esparta', N'10231', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10698, 20, 4, '20071009 00:00:00.000', '20071106 00:00:00.000', '20071017 00:00:00.000', 1, 272.47, N'Destination RVDMF', N'Kirchgasse 9012', N'Graz', NULL, N'10157', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10699, 52, 3, '20071009 00:00:00.000', '20071106 00:00:00.000', '20071013 00:00:00.000', 3, 0.58, N'Ship to 52-B', N'Heerstr. 0123', N'Leipzig', NULL, N'10248', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10700, 71, 3, '20071010 00:00:00.000', '20071107 00:00:00.000', '20071016 00:00:00.000', 1, 65.10, N'Ship to 71-C', N'9012 Suffolk Ln.', N'Boise', N'ID', N'10307', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10701, 37, 6, '20071013 00:00:00.000', '20071027 00:00:00.000', '20071015 00:00:00.000', 3, 220.31, N'Destination KPVYJ', N'5678 Johnstown Road', N'Cork', N'Co. Cork', N'10203', N'Ireland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10702, 1, 4, '20071013 00:00:00.000', '20071124 00:00:00.000', '20071021 00:00:00.000', 1, 23.94, N'Destination ZELZJ', N'Obere Str. 7890', N'Berlin', NULL, N'10155', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10703, 24, 6, '20071014 00:00:00.000', '20071111 00:00:00.000', '20071020 00:00:00.000', 2, 152.30, N'Destination KBSBN', N'Åkergatan 9012', N'Bräcke', NULL, N'10167', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10704, 62, 6, '20071014 00:00:00.000', '20071111 00:00:00.000', '20071107 00:00:00.000', 1, 4.78, N'Ship to 62-C', N'Alameda dos Canàrios, 0123', N'Sao Paulo', N'SP', N'10278', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10705, 35, 9, '20071015 00:00:00.000', '20071112 00:00:00.000', '20071118 00:00:00.000', 2, 3.52, N'Destination JYDLM', N'Carrera1234 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'10199', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10706, 55, 8, '20071016 00:00:00.000', '20071113 00:00:00.000', '20071021 00:00:00.000', 3, 135.63, N'Ship to 55-C', N'9012 Bering St.', N'Anchorage', N'AK', N'10257', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10707, 4, 4, '20071016 00:00:00.000', '20071030 00:00:00.000', '20071023 00:00:00.000', 3, 21.74, N'Ship to 4-A', N'Brook Farm Stratford St. Mary 0123', N'Colchester', N'Essex', N'10238', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10708, 77, 6, '20071017 00:00:00.000', '20071128 00:00:00.000', '20071105 00:00:00.000', 2, 2.96, N'Ship to 77-C', N'3456 Jefferson Way Suite 2', N'Portland', N'OR', N'10322', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10709, 31, 1, '20071017 00:00:00.000', '20071114 00:00:00.000', '20071120 00:00:00.000', 3, 210.80, N'Destination GWPFK', N'Av. Brasil, 0123', N'Campinas', N'SP', N'10188', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10710, 27, 1, '20071020 00:00:00.000', '20071117 00:00:00.000', '20071023 00:00:00.000', 1, 4.98, N'Destination FFLQT', N'Via Monte Bianco 6789', N'Torino', NULL, N'10174', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10711, 71, 5, '20071021 00:00:00.000', '20071202 00:00:00.000', '20071029 00:00:00.000', 2, 52.41, N'Ship to 71-A', N'7890 Suffolk Ln.', N'Boise', N'ID', N'10305', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10712, 37, 3, '20071021 00:00:00.000', '20071118 00:00:00.000', '20071031 00:00:00.000', 1, 89.93, N'Destination KPVYJ', N'5678 Johnstown Road', N'Cork', N'Co. Cork', N'10203', N'Ireland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10713, 71, 1, '20071022 00:00:00.000', '20071119 00:00:00.000', '20071024 00:00:00.000', 1, 167.05, N'Ship to 71-C', N'9012 Suffolk Ln.', N'Boise', N'ID', N'10307', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10714, 71, 5, '20071022 00:00:00.000', '20071119 00:00:00.000', '20071027 00:00:00.000', 3, 24.49, N'Ship to 71-A', N'7890 Suffolk Ln.', N'Boise', N'ID', N'10305', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10715, 9, 3, '20071023 00:00:00.000', '20071106 00:00:00.000', '20071029 00:00:00.000', 1, 63.20, N'Ship to 9-B', N'9012, rue des Bouchers', N'Marseille', NULL, N'10368', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10716, 64, 4, '20071024 00:00:00.000', '20071121 00:00:00.000', '20071027 00:00:00.000', 2, 22.57, N'Ship to 64-B', N'Av. del Libertador 5678', N'Buenos Aires', NULL, N'10283', N'Argentina');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10717, 25, 1, '20071024 00:00:00.000', '20071121 00:00:00.000', '20071029 00:00:00.000', 2, 59.25, N'Destination QOCBL', N'Berliner Platz 1234', N'München', NULL, N'10169', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10718, 39, 1, '20071027 00:00:00.000', '20071124 00:00:00.000', '20071029 00:00:00.000', 3, 170.88, N'Destination DKMQA', N'Maubelstr. 0123', N'Brandenburg', NULL, N'10208', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10719, 45, 8, '20071027 00:00:00.000', '20071124 00:00:00.000', '20071105 00:00:00.000', 2, 51.44, N'Ship to 45-A', N'8901 Polk St. Suite 5', N'San Francisco', N'CA', N'10225', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10720, 61, 8, '20071028 00:00:00.000', '20071111 00:00:00.000', '20071105 00:00:00.000', 2, 9.53, N'Ship to 61-C', N'Rua da Panificadora, 7890', N'Rio de Janeiro', N'RJ', N'10275', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10721, 63, 5, '20071029 00:00:00.000', '20071126 00:00:00.000', '20071031 00:00:00.000', 3, 48.92, N'Ship to 63-A', N'Taucherstraße 1234', N'Cunewalde', NULL, N'10279', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10722, 71, 8, '20071029 00:00:00.000', '20071210 00:00:00.000', '20071104 00:00:00.000', 1, 74.58, N'Ship to 71-A', N'7890 Suffolk Ln.', N'Boise', N'ID', N'10305', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10723, 89, 3, '20071030 00:00:00.000', '20071127 00:00:00.000', '20071125 00:00:00.000', 1, 21.72, N'Ship to 89-C', N'9012 - 12th Ave. S.', N'Seattle', N'WA', N'10358', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10724, 51, 8, '20071030 00:00:00.000', '20071211 00:00:00.000', '20071105 00:00:00.000', 2, 57.75, N'Ship to 51-A', N'6789 rue St. Laurent', N'Montréal', N'Québec', N'10244', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10725, 21, 4, '20071031 00:00:00.000', '20071128 00:00:00.000', '20071105 00:00:00.000', 3, 10.83, N'Destination KKELL', N'Rua Orós, 4567', N'Sao Paulo', N'SP', N'10162', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10726, 19, 4, '20071103 00:00:00.000', '20071117 00:00:00.000', '20071205 00:00:00.000', 1, 16.56, N'Destination FRCGJ', N'5678 King George', N'London', NULL, N'10153', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10727, 66, 2, '20071103 00:00:00.000', '20071201 00:00:00.000', '20071205 00:00:00.000', 1, 89.90, N'Ship to 66-A', N'Strada Provinciale 0123', N'Reggio Emilia', NULL, N'10288', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10728, 62, 4, '20071104 00:00:00.000', '20071202 00:00:00.000', '20071111 00:00:00.000', 2, 58.33, N'Ship to 62-A', N'Alameda dos Canàrios, 8901', N'Sao Paulo', N'SP', N'10276', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10729, 47, 8, '20071104 00:00:00.000', '20071216 00:00:00.000', '20071114 00:00:00.000', 3, 141.06, N'Ship to 47-A', N'Ave. 5 de Mayo Porlamar 3456', N'I. de Margarita', N'Nueva Esparta', N'10230', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10730, 9, 5, '20071105 00:00:00.000', '20071203 00:00:00.000', '20071114 00:00:00.000', 1, 20.12, N'Ship to 9-A', N'8901, rue des Bouchers', N'Marseille', NULL, N'10367', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10731, 14, 7, '20071106 00:00:00.000', '20071204 00:00:00.000', '20071114 00:00:00.000', 1, 96.65, N'Destination YUJRD', N'Hauptstr. 1234', N'Bern', NULL, N'10139', N'Switzerland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10732, 9, 3, '20071106 00:00:00.000', '20071204 00:00:00.000', '20071107 00:00:00.000', 1, 16.97, N'Ship to 9-A', N'8901, rue des Bouchers', N'Marseille', NULL, N'10367', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10733, 5, 1, '20071107 00:00:00.000', '20071205 00:00:00.000', '20071110 00:00:00.000', 3, 110.11, N'Ship to 5-A', N'Berguvsvägen  9012', N'Luleå', NULL, N'10267', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10734, 31, 2, '20071107 00:00:00.000', '20071205 00:00:00.000', '20071112 00:00:00.000', 3, 1.63, N'Destination VNIAG', N'Av. Brasil, 9012', N'Campinas', N'SP', N'10187', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10735, 45, 6, '20071110 00:00:00.000', '20071208 00:00:00.000', '20071121 00:00:00.000', 2, 45.97, N'Ship to 45-A', N'8901 Polk St. Suite 5', N'San Francisco', N'CA', N'10225', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10736, 37, 9, '20071111 00:00:00.000', '20071209 00:00:00.000', '20071121 00:00:00.000', 2, 44.10, N'Destination DGKOU', N'6789 Johnstown Road', N'Cork', N'Co. Cork', N'10204', N'Ireland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10737, 85, 2, '20071111 00:00:00.000', '20071209 00:00:00.000', '20071118 00:00:00.000', 2, 7.79, N'Ship to 85-C', N'7890 rue de l''Abbaye', N'Reims', NULL, N'10346', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10738, 74, 2, '20071112 00:00:00.000', '20071210 00:00:00.000', '20071118 00:00:00.000', 1, 2.91, N'Ship to 74-A', N'3456, rue Lauriston', N'Paris', NULL, N'10312', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10739, 85, 3, '20071112 00:00:00.000', '20071210 00:00:00.000', '20071117 00:00:00.000', 3, 11.08, N'Ship to 85-C', N'7890 rue de l''Abbaye', N'Reims', NULL, N'10346', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10740, 89, 4, '20071113 00:00:00.000', '20071211 00:00:00.000', '20071125 00:00:00.000', 2, 81.88, N'Ship to 89-B', N'8901 - 12th Ave. S.', N'Seattle', N'WA', N'10357', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10741, 4, 4, '20071114 00:00:00.000', '20071128 00:00:00.000', '20071118 00:00:00.000', 3, 10.96, N'Ship to 4-C', N'Brook Farm Stratford St. Mary 2345', N'Colchester', N'Essex', N'10240', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10742, 10, 3, '20071114 00:00:00.000', '20071212 00:00:00.000', '20071118 00:00:00.000', 3, 243.73, N'Destination LPHSI', N'3456 Tsawassen Blvd.', N'Tsawassen', N'BC', N'10131', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10743, 4, 1, '20071117 00:00:00.000', '20071215 00:00:00.000', '20071121 00:00:00.000', 2, 23.72, N'Ship to 4-C', N'Brook Farm Stratford St. Mary 2345', N'Colchester', N'Essex', N'10240', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10744, 83, 6, '20071117 00:00:00.000', '20071215 00:00:00.000', '20071124 00:00:00.000', 1, 69.19, N'Ship to 83-A', N'Smagsloget 0123', N'Århus', NULL, N'10339', N'Denmark');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10745, 63, 9, '20071118 00:00:00.000', '20071216 00:00:00.000', '20071127 00:00:00.000', 1, 3.52, N'Ship to 63-C', N'Taucherstraße 3456', N'Cunewalde', NULL, N'10281', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10746, 14, 1, '20071119 00:00:00.000', '20071217 00:00:00.000', '20071121 00:00:00.000', 3, 31.43, N'Destination NRTZZ', N'Hauptstr. 0123', N'Bern', NULL, N'10138', N'Switzerland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10747, 59, 6, '20071119 00:00:00.000', '20071217 00:00:00.000', '20071126 00:00:00.000', 1, 117.33, N'Ship to 59-B', N'Geislweg 7890', N'Salzburg', NULL, N'10265', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10748, 71, 3, '20071120 00:00:00.000', '20071218 00:00:00.000', '20071128 00:00:00.000', 1, 232.55, N'Ship to 71-B', N'8901 Suffolk Ln.', N'Boise', N'ID', N'10306', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10749, 38, 4, '20071120 00:00:00.000', '20071218 00:00:00.000', '20071219 00:00:00.000', 2, 61.53, N'Destination QVTLW', N'Garden House Crowther Way 7890', N'Cowes', N'Isle of Wight', N'10205', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10750, 87, 9, '20071121 00:00:00.000', '20071219 00:00:00.000', '20071124 00:00:00.000', 1, 79.30, N'Ship to 87-C', N'Torikatu 3456', N'Oulu', NULL, N'10352', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10751, 68, 3, '20071124 00:00:00.000', '20071222 00:00:00.000', '20071203 00:00:00.000', 3, 130.79, N'Ship to 68-A', N'Starenweg 6789', N'Genève', NULL, N'10294', N'Switzerland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10752, 53, 2, '20071124 00:00:00.000', '20071222 00:00:00.000', '20071128 00:00:00.000', 3, 1.39, N'Ship to 53-C', N'South House 3456 Queensbridge', N'London', NULL, N'10251', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10753, 27, 3, '20071125 00:00:00.000', '20071223 00:00:00.000', '20071127 00:00:00.000', 1, 7.70, N'Destination DICGM', N'Via Monte Bianco 7890', N'Torino', NULL, N'10175', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10754, 49, 6, '20071125 00:00:00.000', '20071223 00:00:00.000', '20071127 00:00:00.000', 3, 2.38, N'Ship to 49-B', N'Via Ludovico il Moro 9012', N'Bergamo', NULL, N'10236', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10755, 9, 4, '20071126 00:00:00.000', '20071224 00:00:00.000', '20071128 00:00:00.000', 2, 16.71, N'Ship to 9-C', N'0123, rue des Bouchers', N'Marseille', NULL, N'10369', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10756, 75, 8, '20071127 00:00:00.000', '20071225 00:00:00.000', '20071202 00:00:00.000', 2, 73.21, N'Ship to 75-C', N'P.O. Box 7890', N'Lander', N'WY', N'10316', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10757, 71, 6, '20071127 00:00:00.000', '20071225 00:00:00.000', '20071215 00:00:00.000', 1, 8.19, N'Ship to 71-B', N'8901 Suffolk Ln.', N'Boise', N'ID', N'10306', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10758, 68, 3, '20071128 00:00:00.000', '20071226 00:00:00.000', '20071204 00:00:00.000', 3, 138.17, N'Ship to 68-C', N'Starenweg 8901', N'Genève', NULL, N'10296', N'Switzerland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10759, 2, 3, '20071128 00:00:00.000', '20071226 00:00:00.000', '20071212 00:00:00.000', 3, 11.99, N'Destination QOTQA', N'Avda. de la Constitución 3456', N'México D.F.', NULL, N'10181', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10760, 50, 4, '20071201 00:00:00.000', '20071229 00:00:00.000', '20071210 00:00:00.000', 1, 155.64, N'Ship to 50-B', N'Rue Joseph-Bens 4567', N'Bruxelles', NULL, N'10242', N'Belgium');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10761, 65, 5, '20071202 00:00:00.000', '20071230 00:00:00.000', '20071208 00:00:00.000', 2, 18.66, N'Ship to 65-B', N'8901 Milton Dr.', N'Albuquerque', N'NM', N'10286', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10762, 24, 3, '20071202 00:00:00.000', '20071230 00:00:00.000', '20071209 00:00:00.000', 1, 328.74, N'Destination YCMPK', N'Åkergatan 8901', N'Bräcke', NULL, N'10166', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10763, 23, 3, '20071203 00:00:00.000', '20071231 00:00:00.000', '20071208 00:00:00.000', 3, 37.35, N'Destination PXQRR', N'5678, chaussée de Tournai', N'Lille', NULL, N'10163', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10764, 20, 6, '20071203 00:00:00.000', '20071231 00:00:00.000', '20071208 00:00:00.000', 3, 145.45, N'Destination CUVPF', N'Kirchgasse 1234', N'Graz', NULL, N'10159', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10765, 63, 3, '20071204 00:00:00.000', '20080101 00:00:00.000', '20071209 00:00:00.000', 3, 42.74, N'Ship to 63-A', N'Taucherstraße 1234', N'Cunewalde', NULL, N'10279', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10766, 56, 4, '20071205 00:00:00.000', '20080102 00:00:00.000', '20071209 00:00:00.000', 1, 157.55, N'Ship to 56-C', N'Mehrheimerstr. 2345', N'Köln', NULL, N'10260', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10767, 76, 4, '20071205 00:00:00.000', '20080102 00:00:00.000', '20071215 00:00:00.000', 3, 1.59, N'Ship to 76-B', N'Boulevard Tirou, 9012', N'Charleroi', NULL, N'10318', N'Belgium');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10768, 4, 3, '20071208 00:00:00.000', '20080105 00:00:00.000', '20071215 00:00:00.000', 2, 146.32, N'Ship to 4-B', N'Brook Farm Stratford St. Mary 1234', N'Colchester', N'Essex', N'10239', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10769, 83, 3, '20071208 00:00:00.000', '20080105 00:00:00.000', '20071212 00:00:00.000', 1, 65.06, N'Ship to 83-C', N'Smagsloget 2345', N'Århus', NULL, N'10341', N'Denmark');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10770, 34, 8, '20071209 00:00:00.000', '20080106 00:00:00.000', '20071217 00:00:00.000', 3, 5.32, N'Destination JPAIY', N'Rua do Paço, 8901', N'Rio de Janeiro', N'RJ', N'10196', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10771, 20, 9, '20071210 00:00:00.000', '20080107 00:00:00.000', '20080102 00:00:00.000', 2, 11.19, N'Destination CUVPF', N'Kirchgasse 1234', N'Graz', NULL, N'10159', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10772, 44, 3, '20071210 00:00:00.000', '20080107 00:00:00.000', '20071219 00:00:00.000', 2, 91.28, N'Ship to 44-B', N'Magazinweg 5678', N'Frankfurt a.M.', NULL, N'10223', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10773, 20, 1, '20071211 00:00:00.000', '20080108 00:00:00.000', '20071216 00:00:00.000', 3, 96.43, N'Destination FFXKT', N'Kirchgasse 0123', N'Graz', NULL, N'10158', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10774, 24, 4, '20071211 00:00:00.000', '20071225 00:00:00.000', '20071212 00:00:00.000', 1, 48.20, N'Destination KBSBN', N'Åkergatan 9012', N'Bräcke', NULL, N'10167', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10775, 78, 7, '20071212 00:00:00.000', '20080109 00:00:00.000', '20071226 00:00:00.000', 1, 20.25, N'Ship to 78-A', N'4567 Grizzly Peak Rd.', N'Butte', N'MT', N'10323', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10776, 20, 1, '20071215 00:00:00.000', '20080112 00:00:00.000', '20071218 00:00:00.000', 3, 351.53, N'Destination RVDMF', N'Kirchgasse 9012', N'Graz', NULL, N'10157', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10777, 31, 7, '20071215 00:00:00.000', '20071229 00:00:00.000', '20080121 00:00:00.000', 2, 3.01, N'Destination GWPFK', N'Av. Brasil, 0123', N'Campinas', N'SP', N'10188', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10778, 5, 3, '20071216 00:00:00.000', '20080113 00:00:00.000', '20071224 00:00:00.000', 1, 6.79, N'Ship to 5-A', N'Berguvsvägen  9012', N'Luleå', NULL, N'10267', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10779, 52, 3, '20071216 00:00:00.000', '20080113 00:00:00.000', '20080114 00:00:00.000', 2, 58.13, N'Ship to 52-A', N'Heerstr. 9012', N'Leipzig', NULL, N'10247', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10780, 46, 2, '20071216 00:00:00.000', '20071230 00:00:00.000', '20071225 00:00:00.000', 1, 42.13, N'Ship to 46-C', N'Carrera 2345 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'10229', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10781, 87, 2, '20071217 00:00:00.000', '20080114 00:00:00.000', '20071219 00:00:00.000', 3, 73.16, N'Ship to 87-A', N'Torikatu 1234', N'Oulu', NULL, N'10350', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10782, 12, 9, '20071217 00:00:00.000', '20080114 00:00:00.000', '20071222 00:00:00.000', 3, 1.10, N'Destination CJDJB', N'Cerrito 8901', N'Buenos Aires', NULL, N'10136', N'Argentina');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10783, 34, 4, '20071218 00:00:00.000', '20080115 00:00:00.000', '20071219 00:00:00.000', 2, 124.98, N'Destination DPCVR', N'Rua do Paço, 6789', N'Rio de Janeiro', N'RJ', N'10194', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10784, 49, 4, '20071218 00:00:00.000', '20080115 00:00:00.000', '20071222 00:00:00.000', 3, 70.09, N'Ship to 49-A', N'Via Ludovico il Moro 8901', N'Bergamo', NULL, N'10235', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10785, 33, 1, '20071218 00:00:00.000', '20080115 00:00:00.000', '20071224 00:00:00.000', 3, 1.51, N'Destination FQJFJ', N'5ª Ave. Los Palos Grandes 4567', N'Caracas', N'DF', N'10192', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10786, 62, 8, '20071219 00:00:00.000', '20080116 00:00:00.000', '20071223 00:00:00.000', 1, 110.87, N'Ship to 62-B', N'Alameda dos Canàrios, 9012', N'Sao Paulo', N'SP', N'10277', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10787, 41, 2, '20071219 00:00:00.000', '20080102 00:00:00.000', '20071226 00:00:00.000', 1, 249.93, N'Destination DWJIO', N'9012 rue Alsace-Lorraine', N'Toulouse', NULL, N'10217', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10788, 63, 1, '20071222 00:00:00.000', '20080119 00:00:00.000', '20080119 00:00:00.000', 2, 42.70, N'Ship to 63-C', N'Taucherstraße 3456', N'Cunewalde', NULL, N'10281', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10789, 23, 1, '20071222 00:00:00.000', '20080119 00:00:00.000', '20071231 00:00:00.000', 2, 100.60, N'Destination PXQRR', N'5678, chaussée de Tournai', N'Lille', NULL, N'10163', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10790, 31, 6, '20071222 00:00:00.000', '20080119 00:00:00.000', '20071226 00:00:00.000', 1, 28.23, N'Destination XOIGC', N'Av. Brasil, 8901', N'Campinas', N'SP', N'10186', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10791, 25, 6, '20071223 00:00:00.000', '20080120 00:00:00.000', '20080101 00:00:00.000', 2, 16.85, N'Destination QOCBL', N'Berliner Platz 1234', N'München', NULL, N'10169', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10792, 91, 1, '20071223 00:00:00.000', '20080120 00:00:00.000', '20071231 00:00:00.000', 3, 23.79, N'Ship to 91-C', N'ul. Filtrowa 7890', N'Warszawa', NULL, N'10366', N'Poland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10793, 4, 3, '20071224 00:00:00.000', '20080121 00:00:00.000', '20080108 00:00:00.000', 3, 4.52, N'Ship to 4-B', N'Brook Farm Stratford St. Mary 1234', N'Colchester', N'Essex', N'10239', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10794, 61, 6, '20071224 00:00:00.000', '20080121 00:00:00.000', '20080102 00:00:00.000', 1, 21.49, N'Ship to 61-C', N'Rua da Panificadora, 7890', N'Rio de Janeiro', N'RJ', N'10275', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10795, 20, 8, '20071224 00:00:00.000', '20080121 00:00:00.000', '20080120 00:00:00.000', 2, 126.66, N'Destination FFXKT', N'Kirchgasse 0123', N'Graz', NULL, N'10158', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10796, 35, 3, '20071225 00:00:00.000', '20080122 00:00:00.000', '20080114 00:00:00.000', 1, 26.52, N'Destination UOUWK', N'Carrera 9012 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'10197', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10797, 17, 7, '20071225 00:00:00.000', '20080122 00:00:00.000', '20080105 00:00:00.000', 2, 33.35, N'Destination AJTHX', N'Walserweg 9012', N'Aachen', NULL, N'10147', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10798, 38, 2, '20071226 00:00:00.000', '20080123 00:00:00.000', '20080105 00:00:00.000', 1, 2.33, N'Destination AXVHD', N'Garden House Crowther Way 9012', N'Cowes', N'Isle of Wight', N'10207', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10799, 39, 9, '20071226 00:00:00.000', '20080206 00:00:00.000', '20080105 00:00:00.000', 3, 30.76, N'Destination DKMQA', N'Maubelstr. 0123', N'Brandenburg', NULL, N'10208', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10800, 72, 1, '20071226 00:00:00.000', '20080123 00:00:00.000', '20080105 00:00:00.000', 3, 137.44, N'Ship to 72-C', N'1234 Wadhurst Rd.', N'London', NULL, N'10309', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10801, 8, 4, '20071229 00:00:00.000', '20080126 00:00:00.000', '20071231 00:00:00.000', 2, 97.09, N'Ship to 8-C', N'C/ Araquil, 1234', N'Madrid', NULL, N'10360', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10802, 73, 4, '20071229 00:00:00.000', '20080126 00:00:00.000', '20080102 00:00:00.000', 2, 257.26, N'Ship to 73-A', N'Vinbæltet 1234', N'Kobenhavn', NULL, N'10310', N'Denmark');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10803, 88, 4, '20071230 00:00:00.000', '20080127 00:00:00.000', '20080106 00:00:00.000', 1, 55.23, N'Ship to 88-B', N'Rua do Mercado, 5678', N'Resende', N'SP', N'10354', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10804, 72, 6, '20071230 00:00:00.000', '20080127 00:00:00.000', '20080107 00:00:00.000', 2, 27.33, N'Ship to 72-C', N'1234 Wadhurst Rd.', N'London', NULL, N'10309', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10805, 77, 2, '20071230 00:00:00.000', '20080127 00:00:00.000', '20080109 00:00:00.000', 3, 237.34, N'Ship to 77-A', N'1234 Jefferson Way Suite 2', N'Portland', N'OR', N'10320', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10806, 84, 3, '20071231 00:00:00.000', '20080128 00:00:00.000', '20080105 00:00:00.000', 2, 22.11, N'Ship to 84-C', N'5678, rue du Commerce', N'Lyon', NULL, N'10344', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10807, 27, 4, '20071231 00:00:00.000', '20080128 00:00:00.000', '20080130 00:00:00.000', 1, 1.36, N'Destination XNLFB', N'Via Monte Bianco 5678', N'Torino', NULL, N'10173', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10808, 55, 2, '20080101 00:00:00.000', '20080129 00:00:00.000', '20080109 00:00:00.000', 3, 45.53, N'Ship to 55-B', N'8901 Bering St.', N'Anchorage', N'AK', N'10256', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10809, 88, 7, '20080101 00:00:00.000', '20080129 00:00:00.000', '20080107 00:00:00.000', 1, 4.87, N'Ship to 88-C', N'Rua do Mercado, 6789', N'Resende', N'SP', N'10355', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10810, 42, 2, '20080101 00:00:00.000', '20080129 00:00:00.000', '20080107 00:00:00.000', 3, 4.33, N'Ship to 42-A', N'1234 Elm St.', N'Vancouver', N'BC', N'10219', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10811, 47, 8, '20080102 00:00:00.000', '20080130 00:00:00.000', '20080108 00:00:00.000', 1, 31.22, N'Ship to 47-B', N'Ave. 5 de Mayo Porlamar 4567', N'I. de Margarita', N'Nueva Esparta', N'10231', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10812, 66, 5, '20080102 00:00:00.000', '20080130 00:00:00.000', '20080112 00:00:00.000', 1, 59.78, N'Ship to 66-B', N'Strada Provinciale 1234', N'Reggio Emilia', NULL, N'10289', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10813, 67, 1, '20080105 00:00:00.000', '20080202 00:00:00.000', '20080109 00:00:00.000', 1, 47.38, N'Ship to 67-C', N'Av. Copacabana, 5678', N'Rio de Janeiro', N'RJ', N'10293', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10814, 84, 3, '20080105 00:00:00.000', '20080202 00:00:00.000', '20080114 00:00:00.000', 3, 130.94, N'Ship to 84-B', N'4567, rue du Commerce', N'Lyon', NULL, N'10343', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10815, 71, 2, '20080105 00:00:00.000', '20080202 00:00:00.000', '20080114 00:00:00.000', 3, 14.62, N'Ship to 71-A', N'7890 Suffolk Ln.', N'Boise', N'ID', N'10305', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10816, 32, 4, '20080106 00:00:00.000', '20080203 00:00:00.000', '20080204 00:00:00.000', 2, 719.78, N'Destination AVQUS', N'2345 Baker Blvd.', N'Eugene', N'OR', N'10190', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10817, 39, 3, '20080106 00:00:00.000', '20080120 00:00:00.000', '20080113 00:00:00.000', 2, 306.07, N'Destination RMBHM', N'Maubelstr. 1234', N'Brandenburg', NULL, N'10209', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10818, 49, 7, '20080107 00:00:00.000', '20080204 00:00:00.000', '20080112 00:00:00.000', 3, 65.48, N'Ship to 49-B', N'Via Ludovico il Moro 9012', N'Bergamo', NULL, N'10236', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10819, 12, 2, '20080107 00:00:00.000', '20080204 00:00:00.000', '20080116 00:00:00.000', 3, 19.76, N'Destination QTHBC', N'Cerrito 6789', N'Buenos Aires', NULL, N'10134', N'Argentina');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10820, 65, 3, '20080107 00:00:00.000', '20080204 00:00:00.000', '20080113 00:00:00.000', 2, 37.52, N'Ship to 65-B', N'8901 Milton Dr.', N'Albuquerque', N'NM', N'10286', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10821, 75, 1, '20080108 00:00:00.000', '20080205 00:00:00.000', '20080115 00:00:00.000', 1, 36.68, N'Ship to 75-A', N'P.O. Box 5678', N'Lander', N'WY', N'10314', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10822, 82, 6, '20080108 00:00:00.000', '20080205 00:00:00.000', '20080116 00:00:00.000', 3, 7.00, N'Ship to 82-B', N'9012 DaVinci Blvd.', N'Kirkland', N'WA', N'10338', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10823, 46, 5, '20080109 00:00:00.000', '20080206 00:00:00.000', '20080113 00:00:00.000', 2, 163.97, N'Ship to 46-A', N'Carrera 0123 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'10227', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10824, 24, 8, '20080109 00:00:00.000', '20080206 00:00:00.000', '20080130 00:00:00.000', 1, 1.23, N'Destination NCKKO', N'Åkergatan 7890', N'Bräcke', NULL, N'10165', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10825, 17, 1, '20080109 00:00:00.000', '20080206 00:00:00.000', '20080114 00:00:00.000', 1, 79.25, N'Destination BJCXA', N'Walserweg 7890', N'Aachen', NULL, N'10145', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10826, 7, 6, '20080112 00:00:00.000', '20080209 00:00:00.000', '20080206 00:00:00.000', 1, 7.09, N'Ship to 7-C', N'2345, place Kléber', N'Strasbourg', NULL, N'10331', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10827, 9, 1, '20080112 00:00:00.000', '20080126 00:00:00.000', '20080206 00:00:00.000', 2, 63.54, N'Ship to 9-B', N'9012, rue des Bouchers', N'Marseille', NULL, N'10368', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10828, 64, 9, '20080113 00:00:00.000', '20080127 00:00:00.000', '20080204 00:00:00.000', 1, 90.85, N'Ship to 64-B', N'Av. del Libertador 5678', N'Buenos Aires', NULL, N'10283', N'Argentina');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10829, 38, 9, '20080113 00:00:00.000', '20080210 00:00:00.000', '20080123 00:00:00.000', 1, 154.72, N'Destination QVTLW', N'Garden House Crowther Way 7890', N'Cowes', N'Isle of Wight', N'10205', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10830, 81, 4, '20080113 00:00:00.000', '20080224 00:00:00.000', '20080121 00:00:00.000', 2, 81.83, N'Ship to 81-C', N'Av. Inês de Castro, 7890', N'Sao Paulo', N'SP', N'10336', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10831, 70, 3, '20080114 00:00:00.000', '20080211 00:00:00.000', '20080123 00:00:00.000', 2, 72.19, N'Ship to 70-B', N'Erling Skakkes gate 5678', N'Stavern', NULL, N'10303', N'Norway');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10832, 41, 2, '20080114 00:00:00.000', '20080211 00:00:00.000', '20080119 00:00:00.000', 2, 43.26, N'Ship to 41-C', N'0123 rue Alsace-Lorraine', N'Toulouse', NULL, N'10218', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10833, 56, 6, '20080115 00:00:00.000', '20080212 00:00:00.000', '20080123 00:00:00.000', 2, 71.49, N'Ship to 56-B', N'Mehrheimerstr. 1234', N'Köln', NULL, N'10259', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10834, 81, 1, '20080115 00:00:00.000', '20080212 00:00:00.000', '20080119 00:00:00.000', 3, 29.78, N'Ship to 81-A', N'Av. Inês de Castro, 6789', N'Sao Paulo', N'SP', N'10335', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10835, 1, 1, '20080115 00:00:00.000', '20080212 00:00:00.000', '20080121 00:00:00.000', 3, 69.53, N'Destination LOUIE', N'Obere Str. 6789', N'Berlin', NULL, N'10154', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10836, 20, 7, '20080116 00:00:00.000', '20080213 00:00:00.000', '20080121 00:00:00.000', 1, 411.88, N'Destination CUVPF', N'Kirchgasse 1234', N'Graz', NULL, N'10159', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10837, 5, 9, '20080116 00:00:00.000', '20080213 00:00:00.000', '20080123 00:00:00.000', 3, 13.32, N'Ship to 5-A', N'Berguvsvägen  9012', N'Luleå', NULL, N'10267', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10838, 47, 3, '20080119 00:00:00.000', '20080216 00:00:00.000', '20080123 00:00:00.000', 3, 59.28, N'Ship to 47-A', N'Ave. 5 de Mayo Porlamar 3456', N'I. de Margarita', N'Nueva Esparta', N'10230', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10839, 81, 3, '20080119 00:00:00.000', '20080216 00:00:00.000', '20080122 00:00:00.000', 3, 35.43, N'Ship to 81-C', N'Av. Inês de Castro, 7890', N'Sao Paulo', N'SP', N'10336', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10840, 47, 4, '20080119 00:00:00.000', '20080302 00:00:00.000', '20080216 00:00:00.000', 2, 2.71, N'Ship to 47-A', N'Ave. 5 de Mayo Porlamar 3456', N'I. de Margarita', N'Nueva Esparta', N'10230', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10841, 76, 5, '20080120 00:00:00.000', '20080217 00:00:00.000', '20080129 00:00:00.000', 2, 424.30, N'Ship to 76-B', N'Boulevard Tirou, 9012', N'Charleroi', NULL, N'10318', N'Belgium');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10842, 80, 1, '20080120 00:00:00.000', '20080217 00:00:00.000', '20080129 00:00:00.000', 3, 54.42, N'Ship to 80-A', N'Avda. Azteca 3456', N'México D.F.', NULL, N'10332', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10843, 84, 4, '20080121 00:00:00.000', '20080218 00:00:00.000', '20080126 00:00:00.000', 2, 9.26, N'Ship to 84-C', N'5678, rue du Commerce', N'Lyon', NULL, N'10344', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10844, 59, 8, '20080121 00:00:00.000', '20080218 00:00:00.000', '20080126 00:00:00.000', 2, 25.22, N'Ship to 59-A', N'Geislweg 6789', N'Salzburg', NULL, N'10264', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10845, 63, 8, '20080121 00:00:00.000', '20080204 00:00:00.000', '20080130 00:00:00.000', 1, 212.98, N'Ship to 63-A', N'Taucherstraße 1234', N'Cunewalde', NULL, N'10279', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10846, 76, 2, '20080122 00:00:00.000', '20080305 00:00:00.000', '20080123 00:00:00.000', 3, 56.46, N'Ship to 76-C', N'Boulevard Tirou, 0123', N'Charleroi', NULL, N'10319', N'Belgium');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10847, 71, 4, '20080122 00:00:00.000', '20080205 00:00:00.000', '20080210 00:00:00.000', 3, 487.57, N'Ship to 71-A', N'7890 Suffolk Ln.', N'Boise', N'ID', N'10305', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10848, 16, 7, '20080123 00:00:00.000', '20080220 00:00:00.000', '20080129 00:00:00.000', 2, 38.24, N'Destination QKQNB', N'Berkeley Gardens 5678  Brewery', N'London', NULL, N'10143', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10849, 39, 9, '20080123 00:00:00.000', '20080220 00:00:00.000', '20080130 00:00:00.000', 2, 0.56, N'Destination DKMQA', N'Maubelstr. 0123', N'Brandenburg', NULL, N'10208', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10850, 84, 1, '20080123 00:00:00.000', '20080306 00:00:00.000', '20080130 00:00:00.000', 1, 49.19, N'Ship to 84-C', N'5678, rue du Commerce', N'Lyon', NULL, N'10344', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10851, 67, 5, '20080126 00:00:00.000', '20080223 00:00:00.000', '20080202 00:00:00.000', 1, 160.55, N'Ship to 67-C', N'Av. Copacabana, 5678', N'Rio de Janeiro', N'RJ', N'10293', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10852, 65, 8, '20080126 00:00:00.000', '20080209 00:00:00.000', '20080130 00:00:00.000', 1, 174.05, N'Ship to 65-A', N'7890 Milton Dr.', N'Albuquerque', N'NM', N'10285', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10853, 6, 9, '20080127 00:00:00.000', '20080224 00:00:00.000', '20080203 00:00:00.000', 2, 53.83, N'Ship to 6-B', N'Forsterstr. 3456', N'Mannheim', NULL, N'10301', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10854, 20, 3, '20080127 00:00:00.000', '20080224 00:00:00.000', '20080205 00:00:00.000', 2, 100.22, N'Destination CUVPF', N'Kirchgasse 1234', N'Graz', NULL, N'10159', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10855, 55, 3, '20080127 00:00:00.000', '20080224 00:00:00.000', '20080204 00:00:00.000', 1, 170.97, N'Ship to 55-A', N'7890 Bering St.', N'Anchorage', N'AK', N'10255', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10856, 3, 3, '20080128 00:00:00.000', '20080225 00:00:00.000', '20080210 00:00:00.000', 2, 58.43, N'Destination FQFLS', N'Mataderos  3456', N'México D.F.', NULL, N'10211', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10857, 5, 8, '20080128 00:00:00.000', '20080225 00:00:00.000', '20080206 00:00:00.000', 2, 188.85, N'Ship to 5-B', N'Berguvsvägen  0123', N'Luleå', NULL, N'10268', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10858, 40, 2, '20080129 00:00:00.000', '20080226 00:00:00.000', '20080203 00:00:00.000', 1, 52.51, N'Destination POAEW', N'7890, avenue de l''Europe', N'Versailles', NULL, N'10215', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10859, 25, 1, '20080129 00:00:00.000', '20080226 00:00:00.000', '20080202 00:00:00.000', 2, 76.10, N'Destination QOCBL', N'Berliner Platz 1234', N'München', NULL, N'10169', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10860, 26, 3, '20080129 00:00:00.000', '20080226 00:00:00.000', '20080204 00:00:00.000', 3, 19.26, N'Destination XBVKN', N'3456, rue Royale', N'Nantes', NULL, N'10171', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10861, 89, 4, '20080130 00:00:00.000', '20080227 00:00:00.000', '20080217 00:00:00.000', 2, 14.93, N'Ship to 89-C', N'9012 - 12th Ave. S.', N'Seattle', N'WA', N'10358', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10862, 44, 8, '20080130 00:00:00.000', '20080313 00:00:00.000', '20080202 00:00:00.000', 2, 53.23, N'Ship to 44-C', N'Magazinweg 6789', N'Frankfurt a.M.', NULL, N'10224', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10863, 35, 4, '20080202 00:00:00.000', '20080302 00:00:00.000', '20080217 00:00:00.000', 2, 30.26, N'Destination UOUWK', N'Carrera 9012 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'10197', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10864, 4, 4, '20080202 00:00:00.000', '20080302 00:00:00.000', '20080209 00:00:00.000', 2, 3.04, N'Ship to 4-C', N'Brook Farm Stratford St. Mary 2345', N'Colchester', N'Essex', N'10240', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10865, 63, 2, '20080202 00:00:00.000', '20080216 00:00:00.000', '20080212 00:00:00.000', 1, 348.14, N'Ship to 63-A', N'Taucherstraße 1234', N'Cunewalde', NULL, N'10279', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10866, 5, 5, '20080203 00:00:00.000', '20080303 00:00:00.000', '20080212 00:00:00.000', 1, 109.11, N'Ship to 5-B', N'Berguvsvägen  0123', N'Luleå', NULL, N'10268', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10867, 48, 6, '20080203 00:00:00.000', '20080317 00:00:00.000', '20080211 00:00:00.000', 1, 1.93, N'Ship to 48-B', N'6789 Chiaroscuro Rd.', N'Portland', N'OR', N'10233', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10868, 62, 7, '20080204 00:00:00.000', '20080304 00:00:00.000', '20080223 00:00:00.000', 2, 191.27, N'Ship to 62-C', N'Alameda dos Canàrios, 0123', N'Sao Paulo', N'SP', N'10278', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10869, 72, 5, '20080204 00:00:00.000', '20080304 00:00:00.000', '20080209 00:00:00.000', 1, 143.28, N'Ship to 72-A', N'0123 Wadhurst Rd.', N'London', NULL, N'10308', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10870, 91, 5, '20080204 00:00:00.000', '20080304 00:00:00.000', '20080213 00:00:00.000', 3, 12.04, N'Ship to 91-A', N'ul. Filtrowa 5678', N'Warszawa', NULL, N'10364', N'Poland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10871, 9, 9, '20080205 00:00:00.000', '20080305 00:00:00.000', '20080210 00:00:00.000', 2, 112.27, N'Ship to 9-B', N'9012, rue des Bouchers', N'Marseille', NULL, N'10368', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10872, 30, 5, '20080205 00:00:00.000', '20080305 00:00:00.000', '20080209 00:00:00.000', 2, 175.32, N'Destination GGQIR', N'C/ Romero, 6789', N'Sevilla', NULL, N'10184', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10873, 90, 4, '20080206 00:00:00.000', '20080306 00:00:00.000', '20080209 00:00:00.000', 1, 0.82, N'Ship to 90-B', N'Keskuskatu 3456', N'Helsinki', NULL, N'10362', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10874, 30, 5, '20080206 00:00:00.000', '20080306 00:00:00.000', '20080211 00:00:00.000', 2, 19.58, N'Destination IIYDD', N'C/ Romero, 5678', N'Sevilla', NULL, N'10183', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10875, 5, 4, '20080206 00:00:00.000', '20080306 00:00:00.000', '20080303 00:00:00.000', 2, 32.37, N'Ship to 5-A', N'Berguvsvägen  9012', N'Luleå', NULL, N'10267', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10876, 9, 7, '20080209 00:00:00.000', '20080309 00:00:00.000', '20080212 00:00:00.000', 3, 60.42, N'Ship to 9-A', N'8901, rue des Bouchers', N'Marseille', NULL, N'10367', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10877, 67, 1, '20080209 00:00:00.000', '20080309 00:00:00.000', '20080219 00:00:00.000', 1, 38.06, N'Ship to 67-B', N'Av. Copacabana, 4567', N'Rio de Janeiro', N'RJ', N'10292', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10878, 63, 4, '20080210 00:00:00.000', '20080310 00:00:00.000', '20080212 00:00:00.000', 1, 46.69, N'Ship to 63-B', N'Taucherstraße 2345', N'Cunewalde', NULL, N'10280', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10879, 90, 3, '20080210 00:00:00.000', '20080310 00:00:00.000', '20080212 00:00:00.000', 3, 8.50, N'Ship to 90-A', N'Keskuskatu 2345', N'Helsinki', NULL, N'10361', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10880, 24, 7, '20080210 00:00:00.000', '20080324 00:00:00.000', '20080218 00:00:00.000', 1, 88.01, N'Destination KBSBN', N'Åkergatan 9012', N'Bräcke', NULL, N'10167', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10881, 12, 4, '20080211 00:00:00.000', '20080311 00:00:00.000', '20080218 00:00:00.000', 1, 2.84, N'Destination IGLOB', N'Cerrito 7890', N'Buenos Aires', NULL, N'10135', N'Argentina');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10882, 71, 4, '20080211 00:00:00.000', '20080311 00:00:00.000', '20080220 00:00:00.000', 3, 23.10, N'Ship to 71-B', N'8901 Suffolk Ln.', N'Boise', N'ID', N'10306', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10883, 48, 8, '20080212 00:00:00.000', '20080312 00:00:00.000', '20080220 00:00:00.000', 3, 0.53, N'Ship to 48-C', N'7890 Chiaroscuro Rd.', N'Portland', N'OR', N'10234', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10884, 45, 4, '20080212 00:00:00.000', '20080312 00:00:00.000', '20080213 00:00:00.000', 2, 90.97, N'Ship to 45-C', N'9012 Polk St. Suite 5', N'San Francisco', N'CA', N'10226', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10885, 76, 6, '20080212 00:00:00.000', '20080312 00:00:00.000', '20080218 00:00:00.000', 3, 5.64, N'Ship to 76-B', N'Boulevard Tirou, 9012', N'Charleroi', NULL, N'10318', N'Belgium');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10886, 34, 1, '20080213 00:00:00.000', '20080313 00:00:00.000', '20080302 00:00:00.000', 1, 4.99, N'Destination SCQXA', N'Rua do Paço, 7890', N'Rio de Janeiro', N'RJ', N'10195', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10887, 29, 8, '20080213 00:00:00.000', '20080313 00:00:00.000', '20080216 00:00:00.000', 3, 1.25, N'Destination VPNNG', N'Rambla de Cataluña, 0123', N'Barcelona', NULL, N'10178', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10888, 30, 1, '20080216 00:00:00.000', '20080316 00:00:00.000', '20080223 00:00:00.000', 2, 51.87, N'Destination IIYDD', N'C/ Romero, 5678', N'Sevilla', NULL, N'10183', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10889, 65, 9, '20080216 00:00:00.000', '20080316 00:00:00.000', '20080223 00:00:00.000', 3, 280.61, N'Ship to 65-C', N'9012 Milton Dr.', N'Albuquerque', N'NM', N'10287', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10890, 18, 7, '20080216 00:00:00.000', '20080316 00:00:00.000', '20080218 00:00:00.000', 1, 32.76, N'Destination JNSYI', N'1234, rue des Cinquante Otages', N'Nantes', NULL, N'10149', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10891, 44, 7, '20080217 00:00:00.000', '20080317 00:00:00.000', '20080219 00:00:00.000', 2, 20.37, N'Ship to 44-A', N'Magazinweg 4567', N'Frankfurt a.M.', NULL, N'10222', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10892, 50, 4, '20080217 00:00:00.000', '20080317 00:00:00.000', '20080219 00:00:00.000', 2, 120.27, N'Ship to 50-A', N'Rue Joseph-Bens 3456', N'Bruxelles', NULL, N'10241', N'Belgium');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10893, 39, 9, '20080218 00:00:00.000', '20080318 00:00:00.000', '20080220 00:00:00.000', 2, 77.78, N'Destination RMBHM', N'Maubelstr. 1234', N'Brandenburg', NULL, N'10209', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10894, 71, 1, '20080218 00:00:00.000', '20080318 00:00:00.000', '20080220 00:00:00.000', 1, 116.13, N'Ship to 71-A', N'7890 Suffolk Ln.', N'Boise', N'ID', N'10305', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10895, 20, 3, '20080218 00:00:00.000', '20080318 00:00:00.000', '20080223 00:00:00.000', 1, 162.75, N'Destination CUVPF', N'Kirchgasse 1234', N'Graz', NULL, N'10159', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10896, 50, 7, '20080219 00:00:00.000', '20080319 00:00:00.000', '20080227 00:00:00.000', 3, 32.45, N'Ship to 50-A', N'Rue Joseph-Bens 3456', N'Bruxelles', NULL, N'10241', N'Belgium');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10897, 37, 3, '20080219 00:00:00.000', '20080319 00:00:00.000', '20080225 00:00:00.000', 2, 603.54, N'Destination DGKOU', N'6789 Johnstown Road', N'Cork', N'Co. Cork', N'10204', N'Ireland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10898, 54, 4, '20080220 00:00:00.000', '20080320 00:00:00.000', '20080306 00:00:00.000', 2, 1.27, N'Ship to 54-B', N'Ing. Gustavo Moncada 5678 Piso 20-A', N'Buenos Aires', NULL, N'10253', N'Argentina');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10899, 46, 5, '20080220 00:00:00.000', '20080320 00:00:00.000', '20080226 00:00:00.000', 3, 1.21, N'Ship to 46-C', N'Carrera 2345 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'10229', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10900, 88, 1, '20080220 00:00:00.000', '20080320 00:00:00.000', '20080304 00:00:00.000', 2, 1.66, N'Ship to 88-A', N'Rua do Mercado, 4567', N'Resende', N'SP', N'10353', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10901, 35, 4, '20080223 00:00:00.000', '20080323 00:00:00.000', '20080226 00:00:00.000', 1, 62.09, N'Destination UOUWK', N'Carrera 9012 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'10197', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10902, 24, 1, '20080223 00:00:00.000', '20080323 00:00:00.000', '20080303 00:00:00.000', 1, 44.15, N'Destination NCKKO', N'Åkergatan 7890', N'Bräcke', NULL, N'10165', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10903, 34, 3, '20080224 00:00:00.000', '20080324 00:00:00.000', '20080304 00:00:00.000', 3, 36.71, N'Destination DPCVR', N'Rua do Paço, 6789', N'Rio de Janeiro', N'RJ', N'10194', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10904, 89, 3, '20080224 00:00:00.000', '20080324 00:00:00.000', '20080227 00:00:00.000', 3, 162.95, N'Ship to 89-A', N'7890 - 12th Ave. S.', N'Seattle', N'WA', N'10356', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10905, 88, 9, '20080224 00:00:00.000', '20080324 00:00:00.000', '20080306 00:00:00.000', 2, 13.72, N'Ship to 88-A', N'Rua do Mercado, 4567', N'Resende', N'SP', N'10353', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10906, 91, 4, '20080225 00:00:00.000', '20080311 00:00:00.000', '20080303 00:00:00.000', 3, 26.29, N'Ship to 91-B', N'ul. Filtrowa 6789', N'Warszawa', NULL, N'10365', N'Poland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10907, 74, 6, '20080225 00:00:00.000', '20080325 00:00:00.000', '20080227 00:00:00.000', 3, 9.19, N'Ship to 74-B', N'4567, rue Lauriston', N'Paris', NULL, N'10313', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10908, 66, 4, '20080226 00:00:00.000', '20080326 00:00:00.000', '20080306 00:00:00.000', 2, 32.96, N'Ship to 66-B', N'Strada Provinciale 1234', N'Reggio Emilia', NULL, N'10289', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10909, 70, 1, '20080226 00:00:00.000', '20080326 00:00:00.000', '20080310 00:00:00.000', 2, 53.05, N'Ship to 70-C', N'Erling Skakkes gate 6789', N'Stavern', NULL, N'10304', N'Norway');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10910, 90, 1, '20080226 00:00:00.000', '20080326 00:00:00.000', '20080304 00:00:00.000', 3, 38.11, N'Ship to 90-A', N'Keskuskatu 2345', N'Helsinki', NULL, N'10361', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10911, 30, 3, '20080226 00:00:00.000', '20080326 00:00:00.000', '20080305 00:00:00.000', 1, 38.19, N'Destination IIYDD', N'C/ Romero, 5678', N'Sevilla', NULL, N'10183', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10912, 37, 2, '20080226 00:00:00.000', '20080326 00:00:00.000', '20080318 00:00:00.000', 2, 580.91, N'Destination DGKOU', N'6789 Johnstown Road', N'Cork', N'Co. Cork', N'10204', N'Ireland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10913, 62, 4, '20080226 00:00:00.000', '20080326 00:00:00.000', '20080304 00:00:00.000', 1, 33.05, N'Ship to 62-A', N'Alameda dos Canàrios, 8901', N'Sao Paulo', N'SP', N'10276', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10914, 62, 6, '20080227 00:00:00.000', '20080327 00:00:00.000', '20080302 00:00:00.000', 1, 21.19, N'Ship to 62-B', N'Alameda dos Canàrios, 9012', N'Sao Paulo', N'SP', N'10277', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10915, 80, 2, '20080227 00:00:00.000', '20080327 00:00:00.000', '20080302 00:00:00.000', 2, 3.51, N'Ship to 80-C', N'Avda. Azteca 5678', N'México D.F.', NULL, N'10334', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10916, 64, 1, '20080227 00:00:00.000', '20080327 00:00:00.000', '20080309 00:00:00.000', 2, 63.77, N'Ship to 64-C', N'Av. del Libertador 6789', N'Buenos Aires', NULL, N'10284', N'Argentina');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10917, 69, 4, '20080302 00:00:00.000', '20080330 00:00:00.000', '20080311 00:00:00.000', 2, 8.29, N'Ship to 69-C', N'Gran Vía, 1234', N'Madrid', NULL, N'10299', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10918, 10, 3, '20080302 00:00:00.000', '20080330 00:00:00.000', '20080311 00:00:00.000', 3, 48.83, N'Destination OLSSJ', N'2345 Tsawassen Blvd.', N'Tsawassen', N'BC', N'10130', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10919, 47, 2, '20080302 00:00:00.000', '20080330 00:00:00.000', '20080304 00:00:00.000', 2, 19.80, N'Ship to 47-B', N'Ave. 5 de Mayo Porlamar 4567', N'I. de Margarita', N'Nueva Esparta', N'10231', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10920, 4, 4, '20080303 00:00:00.000', '20080331 00:00:00.000', '20080309 00:00:00.000', 2, 29.61, N'Ship to 4-A', N'Brook Farm Stratford St. Mary 0123', N'Colchester', N'Essex', N'10238', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10921, 83, 1, '20080303 00:00:00.000', '20080414 00:00:00.000', '20080309 00:00:00.000', 1, 176.48, N'Ship to 83-A', N'Smagsloget 0123', N'Århus', NULL, N'10339', N'Denmark');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10922, 34, 5, '20080303 00:00:00.000', '20080331 00:00:00.000', '20080305 00:00:00.000', 3, 62.74, N'Destination DPCVR', N'Rua do Paço, 6789', N'Rio de Janeiro', N'RJ', N'10194', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10923, 41, 7, '20080303 00:00:00.000', '20080414 00:00:00.000', '20080313 00:00:00.000', 3, 68.26, N'Destination OLJND', N'8901 rue Alsace-Lorraine', N'Toulouse', NULL, N'10216', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10924, 5, 3, '20080304 00:00:00.000', '20080401 00:00:00.000', '20080408 00:00:00.000', 2, 151.52, N'Ship to 5-A', N'Berguvsvägen  9012', N'Luleå', NULL, N'10267', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10925, 34, 3, '20080304 00:00:00.000', '20080401 00:00:00.000', '20080313 00:00:00.000', 1, 2.27, N'Destination JPAIY', N'Rua do Paço, 8901', N'Rio de Janeiro', N'RJ', N'10196', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10926, 2, 4, '20080304 00:00:00.000', '20080401 00:00:00.000', '20080311 00:00:00.000', 3, 39.92, N'Destination RAIGI', N'Avda. de la Constitución 4567', N'México D.F.', NULL, N'10182', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10927, 40, 4, '20080305 00:00:00.000', '20080402 00:00:00.000', '20080408 00:00:00.000', 1, 19.79, N'Destination WWJLO', N'6789, avenue de l''Europe', N'Versailles', NULL, N'10214', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10928, 29, 1, '20080305 00:00:00.000', '20080402 00:00:00.000', '20080318 00:00:00.000', 1, 1.36, N'Destination WOFLH', N'Rambla de Cataluña, 1234', N'Barcelona', NULL, N'10179', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10929, 25, 6, '20080305 00:00:00.000', '20080402 00:00:00.000', '20080312 00:00:00.000', 1, 33.93, N'Destination QOCBL', N'Berliner Platz 1234', N'München', NULL, N'10169', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10930, 76, 4, '20080306 00:00:00.000', '20080417 00:00:00.000', '20080318 00:00:00.000', 3, 15.55, N'Ship to 76-A', N'Boulevard Tirou, 8901', N'Charleroi', NULL, N'10317', N'Belgium');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10931, 68, 4, '20080306 00:00:00.000', '20080320 00:00:00.000', '20080319 00:00:00.000', 2, 13.60, N'Ship to 68-B', N'Starenweg 7890', N'Genève', NULL, N'10295', N'Switzerland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10932, 9, 8, '20080306 00:00:00.000', '20080403 00:00:00.000', '20080324 00:00:00.000', 1, 134.64, N'Ship to 9-B', N'9012, rue des Bouchers', N'Marseille', NULL, N'10368', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10933, 38, 6, '20080306 00:00:00.000', '20080403 00:00:00.000', '20080316 00:00:00.000', 3, 54.15, N'Destination QVTLW', N'Garden House Crowther Way 7890', N'Cowes', N'Isle of Wight', N'10205', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10934, 44, 3, '20080309 00:00:00.000', '20080406 00:00:00.000', '20080312 00:00:00.000', 3, 32.01, N'Ship to 44-C', N'Magazinweg 6789', N'Frankfurt a.M.', NULL, N'10224', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10935, 88, 4, '20080309 00:00:00.000', '20080406 00:00:00.000', '20080318 00:00:00.000', 3, 47.59, N'Ship to 88-A', N'Rua do Mercado, 4567', N'Resende', N'SP', N'10353', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10936, 32, 3, '20080309 00:00:00.000', '20080406 00:00:00.000', '20080318 00:00:00.000', 2, 33.68, N'Destination AVQUS', N'2345 Baker Blvd.', N'Eugene', N'OR', N'10190', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10937, 12, 7, '20080310 00:00:00.000', '20080324 00:00:00.000', '20080313 00:00:00.000', 3, 31.51, N'Destination QTHBC', N'Cerrito 6789', N'Buenos Aires', NULL, N'10134', N'Argentina');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10938, 63, 3, '20080310 00:00:00.000', '20080407 00:00:00.000', '20080316 00:00:00.000', 2, 31.89, N'Ship to 63-C', N'Taucherstraße 3456', N'Cunewalde', NULL, N'10281', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10939, 49, 2, '20080310 00:00:00.000', '20080407 00:00:00.000', '20080313 00:00:00.000', 2, 76.33, N'Ship to 49-A', N'Via Ludovico il Moro 8901', N'Bergamo', NULL, N'10235', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10940, 9, 8, '20080311 00:00:00.000', '20080408 00:00:00.000', '20080323 00:00:00.000', 3, 19.77, N'Ship to 9-C', N'0123, rue des Bouchers', N'Marseille', NULL, N'10369', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10941, 71, 7, '20080311 00:00:00.000', '20080408 00:00:00.000', '20080320 00:00:00.000', 2, 400.81, N'Ship to 71-A', N'7890 Suffolk Ln.', N'Boise', N'ID', N'10305', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10942, 66, 9, '20080311 00:00:00.000', '20080408 00:00:00.000', '20080318 00:00:00.000', 3, 17.95, N'Ship to 66-C', N'Strada Provinciale 2345', N'Reggio Emilia', NULL, N'10290', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10943, 11, 4, '20080311 00:00:00.000', '20080408 00:00:00.000', '20080319 00:00:00.000', 2, 2.17, N'Destination NZASL', N'Fauntleroy Circus 5678', N'London', NULL, N'10133', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10944, 10, 6, '20080312 00:00:00.000', '20080326 00:00:00.000', '20080313 00:00:00.000', 3, 52.92, N'Destination XJIBQ', N'1234 Tsawassen Blvd.', N'Tsawassen', N'BC', N'10129', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10945, 52, 4, '20080312 00:00:00.000', '20080409 00:00:00.000', '20080318 00:00:00.000', 1, 10.22, N'Ship to 52-B', N'Heerstr. 0123', N'Leipzig', NULL, N'10248', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10946, 83, 1, '20080312 00:00:00.000', '20080409 00:00:00.000', '20080319 00:00:00.000', 2, 27.20, N'Ship to 83-B', N'Smagsloget 1234', N'Århus', NULL, N'10340', N'Denmark');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10947, 11, 3, '20080313 00:00:00.000', '20080410 00:00:00.000', '20080316 00:00:00.000', 2, 3.26, N'Destination NZASL', N'Fauntleroy Circus 5678', N'London', NULL, N'10133', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10948, 30, 3, '20080313 00:00:00.000', '20080410 00:00:00.000', '20080319 00:00:00.000', 3, 23.39, N'Destination GGQIR', N'C/ Romero, 6789', N'Sevilla', NULL, N'10184', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10949, 10, 2, '20080313 00:00:00.000', '20080410 00:00:00.000', '20080317 00:00:00.000', 3, 74.44, N'Destination OLSSJ', N'2345 Tsawassen Blvd.', N'Tsawassen', N'BC', N'10130', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10950, 49, 1, '20080316 00:00:00.000', '20080413 00:00:00.000', '20080323 00:00:00.000', 2, 2.50, N'Ship to 49-B', N'Via Ludovico il Moro 9012', N'Bergamo', NULL, N'10236', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10951, 68, 9, '20080316 00:00:00.000', '20080427 00:00:00.000', '20080407 00:00:00.000', 2, 30.85, N'Ship to 68-A', N'Starenweg 6789', N'Genève', NULL, N'10294', N'Switzerland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10952, 1, 1, '20080316 00:00:00.000', '20080427 00:00:00.000', '20080324 00:00:00.000', 1, 40.42, N'Destination LOUIE', N'Obere Str. 6789', N'Berlin', NULL, N'10154', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10953, 4, 9, '20080316 00:00:00.000', '20080330 00:00:00.000', '20080325 00:00:00.000', 2, 23.72, N'Ship to 4-B', N'Brook Farm Stratford St. Mary 1234', N'Colchester', N'Essex', N'10239', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10954, 47, 5, '20080317 00:00:00.000', '20080428 00:00:00.000', '20080320 00:00:00.000', 1, 27.91, N'Ship to 47-B', N'Ave. 5 de Mayo Porlamar 4567', N'I. de Margarita', N'Nueva Esparta', N'10231', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10955, 24, 8, '20080317 00:00:00.000', '20080414 00:00:00.000', '20080320 00:00:00.000', 2, 3.26, N'Destination YCMPK', N'Åkergatan 8901', N'Bräcke', NULL, N'10166', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10956, 6, 6, '20080317 00:00:00.000', '20080428 00:00:00.000', '20080320 00:00:00.000', 2, 44.65, N'Ship to 6-B', N'Forsterstr. 3456', N'Mannheim', NULL, N'10301', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10957, 35, 8, '20080318 00:00:00.000', '20080415 00:00:00.000', '20080327 00:00:00.000', 3, 105.36, N'Destination UOUWK', N'Carrera 9012 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'10197', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10958, 54, 7, '20080318 00:00:00.000', '20080415 00:00:00.000', '20080327 00:00:00.000', 2, 49.56, N'Ship to 54-C', N'Ing. Gustavo Moncada 6789 Piso 20-A', N'Buenos Aires', NULL, N'10254', N'Argentina');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10959, 31, 6, '20080318 00:00:00.000', '20080429 00:00:00.000', '20080323 00:00:00.000', 2, 4.98, N'Destination GWPFK', N'Av. Brasil, 0123', N'Campinas', N'SP', N'10188', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10960, 35, 3, '20080319 00:00:00.000', '20080402 00:00:00.000', '20080408 00:00:00.000', 1, 2.08, N'Destination SXYQX', N'Carrera 0123 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'10198', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10961, 62, 8, '20080319 00:00:00.000', '20080416 00:00:00.000', '20080330 00:00:00.000', 1, 104.47, N'Ship to 62-A', N'Alameda dos Canàrios, 8901', N'Sao Paulo', N'SP', N'10276', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10962, 63, 8, '20080319 00:00:00.000', '20080416 00:00:00.000', '20080323 00:00:00.000', 2, 275.79, N'Ship to 63-B', N'Taucherstraße 2345', N'Cunewalde', NULL, N'10280', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10963, 28, 9, '20080319 00:00:00.000', '20080416 00:00:00.000', '20080326 00:00:00.000', 3, 2.70, N'Destination CIRQO', N'Jardim das rosas n. 8901', N'Lisboa', NULL, N'10176', N'Portugal');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10964, 74, 3, '20080320 00:00:00.000', '20080417 00:00:00.000', '20080324 00:00:00.000', 2, 87.38, N'Ship to 74-B', N'4567, rue Lauriston', N'Paris', NULL, N'10313', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10965, 55, 6, '20080320 00:00:00.000', '20080417 00:00:00.000', '20080330 00:00:00.000', 3, 144.38, N'Ship to 55-B', N'8901 Bering St.', N'Anchorage', N'AK', N'10256', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10966, 14, 4, '20080320 00:00:00.000', '20080417 00:00:00.000', '20080408 00:00:00.000', 1, 27.19, N'Destination NRTZZ', N'Hauptstr. 0123', N'Bern', NULL, N'10138', N'Switzerland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10967, 79, 2, '20080323 00:00:00.000', '20080420 00:00:00.000', '20080402 00:00:00.000', 2, 62.22, N'Ship to 79-B', N'Luisenstr. 8901', N'Münster', NULL, N'10327', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10968, 20, 1, '20080323 00:00:00.000', '20080420 00:00:00.000', '20080401 00:00:00.000', 3, 74.60, N'Destination CUVPF', N'Kirchgasse 1234', N'Graz', NULL, N'10159', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10969, 15, 1, '20080323 00:00:00.000', '20080420 00:00:00.000', '20080330 00:00:00.000', 2, 0.21, N'Destination EVHYA', N'Av. dos Lusíadas, 3456', N'Sao Paulo', N'SP', N'10141', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10970, 8, 9, '20080324 00:00:00.000', '20080407 00:00:00.000', '20080424 00:00:00.000', 1, 16.16, N'Ship to 8-C', N'C/ Araquil, 1234', N'Madrid', NULL, N'10360', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10971, 26, 2, '20080324 00:00:00.000', '20080421 00:00:00.000', '20080402 00:00:00.000', 2, 121.82, N'Destination XBVKN', N'3456, rue Royale', N'Nantes', NULL, N'10171', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10972, 40, 4, '20080324 00:00:00.000', '20080421 00:00:00.000', '20080326 00:00:00.000', 2, 0.02, N'Destination MVTWX', N'5678, avenue de l''Europe', N'Versailles', NULL, N'10213', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10973, 40, 6, '20080324 00:00:00.000', '20080421 00:00:00.000', '20080327 00:00:00.000', 2, 15.17, N'Destination WWJLO', N'6789, avenue de l''Europe', N'Versailles', NULL, N'10214', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10974, 75, 3, '20080325 00:00:00.000', '20080408 00:00:00.000', '20080403 00:00:00.000', 3, 12.96, N'Ship to 75-B', N'P.O. Box 6789', N'Lander', N'WY', N'10315', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10975, 10, 1, '20080325 00:00:00.000', '20080422 00:00:00.000', '20080327 00:00:00.000', 3, 32.27, N'Destination OLSSJ', N'2345 Tsawassen Blvd.', N'Tsawassen', N'BC', N'10130', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10976, 35, 1, '20080325 00:00:00.000', '20080506 00:00:00.000', '20080403 00:00:00.000', 1, 37.97, N'Destination SXYQX', N'Carrera 0123 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'10198', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10977, 24, 8, '20080326 00:00:00.000', '20080423 00:00:00.000', '20080410 00:00:00.000', 3, 208.50, N'Destination NCKKO', N'Åkergatan 7890', N'Bräcke', NULL, N'10165', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10978, 50, 9, '20080326 00:00:00.000', '20080423 00:00:00.000', '20080423 00:00:00.000', 2, 32.82, N'Ship to 50-A', N'Rue Joseph-Bens 3456', N'Bruxelles', NULL, N'10241', N'Belgium');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10979, 20, 8, '20080326 00:00:00.000', '20080423 00:00:00.000', '20080331 00:00:00.000', 2, 353.07, N'Destination CUVPF', N'Kirchgasse 1234', N'Graz', NULL, N'10159', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10980, 24, 4, '20080327 00:00:00.000', '20080508 00:00:00.000', '20080417 00:00:00.000', 1, 1.26, N'Destination YCMPK', N'Åkergatan 8901', N'Bräcke', NULL, N'10166', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10981, 34, 1, '20080327 00:00:00.000', '20080424 00:00:00.000', '20080402 00:00:00.000', 2, 193.37, N'Destination JPAIY', N'Rua do Paço, 8901', N'Rio de Janeiro', N'RJ', N'10196', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10982, 10, 2, '20080327 00:00:00.000', '20080424 00:00:00.000', '20080408 00:00:00.000', 1, 14.01, N'Destination XJIBQ', N'1234 Tsawassen Blvd.', N'Tsawassen', N'BC', N'10129', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10983, 71, 2, '20080327 00:00:00.000', '20080424 00:00:00.000', '20080406 00:00:00.000', 2, 657.54, N'Ship to 71-B', N'8901 Suffolk Ln.', N'Boise', N'ID', N'10306', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10984, 71, 1, '20080330 00:00:00.000', '20080427 00:00:00.000', '20080403 00:00:00.000', 3, 211.22, N'Ship to 71-B', N'8901 Suffolk Ln.', N'Boise', N'ID', N'10306', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10985, 37, 2, '20080330 00:00:00.000', '20080427 00:00:00.000', '20080402 00:00:00.000', 1, 91.51, N'Destination ATSOA', N'4567 Johnstown Road', N'Cork', N'Co. Cork', N'10202', N'Ireland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10986, 54, 8, '20080330 00:00:00.000', '20080427 00:00:00.000', '20080421 00:00:00.000', 2, 217.86, N'Ship to 54-A', N'Ing. Gustavo Moncada 4567 Piso 20-A', N'Buenos Aires', NULL, N'10252', N'Argentina');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10987, 19, 8, '20080331 00:00:00.000', '20080428 00:00:00.000', '20080406 00:00:00.000', 1, 185.48, N'Destination FRCGJ', N'5678 King George', N'London', NULL, N'10153', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10988, 65, 3, '20080331 00:00:00.000', '20080428 00:00:00.000', '20080410 00:00:00.000', 2, 61.14, N'Ship to 65-A', N'7890 Milton Dr.', N'Albuquerque', N'NM', N'10285', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10989, 61, 2, '20080331 00:00:00.000', '20080428 00:00:00.000', '20080402 00:00:00.000', 1, 34.76, N'Ship to 61-A', N'Rua da Panificadora, 5678', N'Rio de Janeiro', N'RJ', N'10273', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10990, 20, 2, '20080401 00:00:00.000', '20080513 00:00:00.000', '20080407 00:00:00.000', 3, 117.61, N'Destination RVDMF', N'Kirchgasse 9012', N'Graz', NULL, N'10157', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10991, 63, 1, '20080401 00:00:00.000', '20080429 00:00:00.000', '20080407 00:00:00.000', 1, 38.51, N'Ship to 63-A', N'Taucherstraße 1234', N'Cunewalde', NULL, N'10279', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10992, 77, 1, '20080401 00:00:00.000', '20080429 00:00:00.000', '20080403 00:00:00.000', 3, 4.27, N'Ship to 77-C', N'3456 Jefferson Way Suite 2', N'Portland', N'OR', N'10322', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10993, 24, 7, '20080401 00:00:00.000', '20080429 00:00:00.000', '20080410 00:00:00.000', 3, 8.81, N'Destination NCKKO', N'Åkergatan 7890', N'Bräcke', NULL, N'10165', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10994, 83, 2, '20080402 00:00:00.000', '20080416 00:00:00.000', '20080409 00:00:00.000', 3, 65.53, N'Ship to 83-C', N'Smagsloget 2345', N'Århus', NULL, N'10341', N'Denmark');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10995, 58, 1, '20080402 00:00:00.000', '20080430 00:00:00.000', '20080406 00:00:00.000', 3, 46.00, N'Ship to 58-B', N'Calle Dr. Jorge Cash 4567', N'México D.F.', NULL, N'10262', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10996, 63, 4, '20080402 00:00:00.000', '20080430 00:00:00.000', '20080410 00:00:00.000', 2, 1.12, N'Ship to 63-C', N'Taucherstraße 3456', N'Cunewalde', NULL, N'10281', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10997, 46, 8, '20080403 00:00:00.000', '20080515 00:00:00.000', '20080413 00:00:00.000', 2, 73.91, N'Ship to 46-A', N'Carrera 0123 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'10227', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10998, 91, 8, '20080403 00:00:00.000', '20080417 00:00:00.000', '20080417 00:00:00.000', 2, 20.31, N'Ship to 91-A', N'ul. Filtrowa 5678', N'Warszawa', NULL, N'10364', N'Poland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(10999, 56, 6, '20080403 00:00:00.000', '20080501 00:00:00.000', '20080410 00:00:00.000', 2, 96.35, N'Ship to 56-B', N'Mehrheimerstr. 1234', N'Köln', NULL, N'10259', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11000, 65, 2, '20080406 00:00:00.000', '20080504 00:00:00.000', '20080414 00:00:00.000', 3, 55.12, N'Ship to 65-A', N'7890 Milton Dr.', N'Albuquerque', N'NM', N'10285', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11001, 24, 2, '20080406 00:00:00.000', '20080504 00:00:00.000', '20080414 00:00:00.000', 2, 197.30, N'Destination YCMPK', N'Åkergatan 8901', N'Bräcke', NULL, N'10166', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11002, 71, 4, '20080406 00:00:00.000', '20080504 00:00:00.000', '20080416 00:00:00.000', 1, 141.16, N'Ship to 71-A', N'7890 Suffolk Ln.', N'Boise', N'ID', N'10305', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11003, 78, 3, '20080406 00:00:00.000', '20080504 00:00:00.000', '20080408 00:00:00.000', 3, 14.91, N'Ship to 78-B', N'5678 Grizzly Peak Rd.', N'Butte', N'MT', N'10324', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11004, 50, 3, '20080407 00:00:00.000', '20080505 00:00:00.000', '20080420 00:00:00.000', 1, 44.84, N'Ship to 50-C', N'Rue Joseph-Bens 5678', N'Bruxelles', NULL, N'10243', N'Belgium');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11005, 90, 2, '20080407 00:00:00.000', '20080505 00:00:00.000', '20080410 00:00:00.000', 1, 0.75, N'Ship to 90-A', N'Keskuskatu 2345', N'Helsinki', NULL, N'10361', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11006, 32, 3, '20080407 00:00:00.000', '20080505 00:00:00.000', '20080415 00:00:00.000', 2, 25.19, N'Destination LLUXZ', N'1234 Baker Blvd.', N'Eugene', N'OR', N'10189', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11007, 60, 8, '20080408 00:00:00.000', '20080506 00:00:00.000', '20080413 00:00:00.000', 2, 202.24, N'Ship to 60-C', N'Estrada da saúde n. 4567', N'Lisboa', NULL, N'10272', N'Portugal');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11008, 20, 7, '20080408 00:00:00.000', '20080506 00:00:00.000', NULL, 3, 79.46, N'Destination CUVPF', N'Kirchgasse 1234', N'Graz', NULL, N'10159', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11009, 30, 2, '20080408 00:00:00.000', '20080506 00:00:00.000', '20080410 00:00:00.000', 1, 59.11, N'Destination WVLDH', N'C/ Romero, 7890', N'Sevilla', NULL, N'10185', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11010, 66, 2, '20080409 00:00:00.000', '20080507 00:00:00.000', '20080421 00:00:00.000', 2, 28.71, N'Ship to 66-A', N'Strada Provinciale 0123', N'Reggio Emilia', NULL, N'10288', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11011, 1, 3, '20080409 00:00:00.000', '20080507 00:00:00.000', '20080413 00:00:00.000', 1, 1.21, N'Destination LOUIE', N'Obere Str. 6789', N'Berlin', NULL, N'10154', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11012, 25, 1, '20080409 00:00:00.000', '20080423 00:00:00.000', '20080417 00:00:00.000', 3, 242.95, N'Destination WEGWI', N'Berliner Platz 2345', N'München', NULL, N'10170', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11013, 69, 2, '20080409 00:00:00.000', '20080507 00:00:00.000', '20080410 00:00:00.000', 1, 32.99, N'Ship to 69-A', N'Gran Vía, 9012', N'Madrid', NULL, N'10297', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11014, 47, 2, '20080410 00:00:00.000', '20080508 00:00:00.000', '20080415 00:00:00.000', 3, 23.60, N'Ship to 47-A', N'Ave. 5 de Mayo Porlamar 3456', N'I. de Margarita', N'Nueva Esparta', N'10230', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11015, 70, 2, '20080410 00:00:00.000', '20080424 00:00:00.000', '20080420 00:00:00.000', 2, 4.62, N'Ship to 70-C', N'Erling Skakkes gate 6789', N'Stavern', NULL, N'10304', N'Norway');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11016, 4, 9, '20080410 00:00:00.000', '20080508 00:00:00.000', '20080413 00:00:00.000', 2, 33.80, N'Ship to 4-A', N'Brook Farm Stratford St. Mary 0123', N'Colchester', N'Essex', N'10238', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11017, 20, 9, '20080413 00:00:00.000', '20080511 00:00:00.000', '20080420 00:00:00.000', 2, 754.26, N'Destination CUVPF', N'Kirchgasse 1234', N'Graz', NULL, N'10159', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11018, 48, 4, '20080413 00:00:00.000', '20080511 00:00:00.000', '20080416 00:00:00.000', 2, 11.65, N'Ship to 48-B', N'6789 Chiaroscuro Rd.', N'Portland', N'OR', N'10233', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11019, 64, 6, '20080413 00:00:00.000', '20080511 00:00:00.000', NULL, 3, 3.17, N'Ship to 64-B', N'Av. del Libertador 5678', N'Buenos Aires', NULL, N'10283', N'Argentina');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11020, 56, 2, '20080414 00:00:00.000', '20080512 00:00:00.000', '20080416 00:00:00.000', 2, 43.30, N'Ship to 56-B', N'Mehrheimerstr. 1234', N'Köln', NULL, N'10259', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11021, 63, 3, '20080414 00:00:00.000', '20080512 00:00:00.000', '20080421 00:00:00.000', 1, 297.18, N'Ship to 63-B', N'Taucherstraße 2345', N'Cunewalde', NULL, N'10280', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11022, 34, 9, '20080414 00:00:00.000', '20080512 00:00:00.000', '20080504 00:00:00.000', 2, 6.27, N'Destination SCQXA', N'Rua do Paço, 7890', N'Rio de Janeiro', N'RJ', N'10195', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11023, 11, 1, '20080414 00:00:00.000', '20080428 00:00:00.000', '20080424 00:00:00.000', 2, 123.83, N'Destination NZASL', N'Fauntleroy Circus 5678', N'London', NULL, N'10133', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11024, 19, 4, '20080415 00:00:00.000', '20080513 00:00:00.000', '20080420 00:00:00.000', 1, 74.36, N'Destination BBMRT', N'4567 King George', N'London', NULL, N'10152', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11025, 87, 6, '20080415 00:00:00.000', '20080513 00:00:00.000', '20080424 00:00:00.000', 3, 29.17, N'Ship to 87-C', N'Torikatu 3456', N'Oulu', NULL, N'10352', N'Finland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11026, 27, 4, '20080415 00:00:00.000', '20080513 00:00:00.000', '20080428 00:00:00.000', 1, 47.09, N'Destination DICGM', N'Via Monte Bianco 7890', N'Torino', NULL, N'10175', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11027, 10, 1, '20080416 00:00:00.000', '20080514 00:00:00.000', '20080420 00:00:00.000', 1, 52.52, N'Destination XJIBQ', N'1234 Tsawassen Blvd.', N'Tsawassen', N'BC', N'10129', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11028, 39, 2, '20080416 00:00:00.000', '20080514 00:00:00.000', '20080422 00:00:00.000', 1, 29.59, N'Destination DKMQA', N'Maubelstr. 0123', N'Brandenburg', NULL, N'10208', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11029, 14, 4, '20080416 00:00:00.000', '20080514 00:00:00.000', '20080427 00:00:00.000', 1, 47.84, N'Destination YUJRD', N'Hauptstr. 1234', N'Bern', NULL, N'10139', N'Switzerland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11030, 71, 7, '20080417 00:00:00.000', '20080515 00:00:00.000', '20080427 00:00:00.000', 2, 830.75, N'Ship to 71-C', N'9012 Suffolk Ln.', N'Boise', N'ID', N'10307', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11031, 71, 6, '20080417 00:00:00.000', '20080515 00:00:00.000', '20080424 00:00:00.000', 2, 227.22, N'Ship to 71-C', N'9012 Suffolk Ln.', N'Boise', N'ID', N'10307', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11032, 89, 2, '20080417 00:00:00.000', '20080515 00:00:00.000', '20080423 00:00:00.000', 3, 606.19, N'Ship to 89-B', N'8901 - 12th Ave. S.', N'Seattle', N'WA', N'10357', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11033, 68, 7, '20080417 00:00:00.000', '20080515 00:00:00.000', '20080423 00:00:00.000', 3, 84.74, N'Ship to 68-A', N'Starenweg 6789', N'Genève', NULL, N'10294', N'Switzerland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11034, 55, 8, '20080420 00:00:00.000', '20080601 00:00:00.000', '20080427 00:00:00.000', 1, 40.32, N'Ship to 55-B', N'8901 Bering St.', N'Anchorage', N'AK', N'10256', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11035, 76, 2, '20080420 00:00:00.000', '20080518 00:00:00.000', '20080424 00:00:00.000', 2, 0.17, N'Ship to 76-B', N'Boulevard Tirou, 9012', N'Charleroi', NULL, N'10318', N'Belgium');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11036, 17, 8, '20080420 00:00:00.000', '20080518 00:00:00.000', '20080422 00:00:00.000', 3, 149.47, N'Destination YPUYI', N'Walserweg 8901', N'Aachen', NULL, N'10146', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11037, 30, 7, '20080421 00:00:00.000', '20080519 00:00:00.000', '20080427 00:00:00.000', 1, 3.20, N'Destination GGQIR', N'C/ Romero, 6789', N'Sevilla', NULL, N'10184', N'Spain');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11038, 76, 1, '20080421 00:00:00.000', '20080519 00:00:00.000', '20080430 00:00:00.000', 2, 29.59, N'Ship to 76-A', N'Boulevard Tirou, 8901', N'Charleroi', NULL, N'10317', N'Belgium');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11039, 47, 1, '20080421 00:00:00.000', '20080519 00:00:00.000', NULL, 2, 65.00, N'Ship to 47-C', N'Ave. 5 de Mayo Porlamar 5678', N'I. de Margarita', N'Nueva Esparta', N'10232', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11040, 32, 4, '20080422 00:00:00.000', '20080520 00:00:00.000', NULL, 3, 18.84, N'Destination VYOBK', N'3456 Baker Blvd.', N'Eugene', N'OR', N'10191', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11041, 14, 3, '20080422 00:00:00.000', '20080520 00:00:00.000', '20080428 00:00:00.000', 2, 48.22, N'Destination YUJRD', N'Hauptstr. 1234', N'Bern', NULL, N'10139', N'Switzerland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11042, 15, 2, '20080422 00:00:00.000', '20080506 00:00:00.000', '20080501 00:00:00.000', 1, 29.99, N'Destination EVHYA', N'Av. dos Lusíadas, 3456', N'Sao Paulo', N'SP', N'10141', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11043, 74, 5, '20080422 00:00:00.000', '20080520 00:00:00.000', '20080429 00:00:00.000', 2, 8.80, N'Ship to 74-B', N'4567, rue Lauriston', N'Paris', NULL, N'10313', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11044, 91, 4, '20080423 00:00:00.000', '20080521 00:00:00.000', '20080501 00:00:00.000', 1, 8.72, N'Ship to 91-B', N'ul. Filtrowa 6789', N'Warszawa', NULL, N'10365', N'Poland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11045, 10, 6, '20080423 00:00:00.000', '20080521 00:00:00.000', NULL, 2, 70.58, N'Destination LPHSI', N'3456 Tsawassen Blvd.', N'Tsawassen', N'BC', N'10131', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11046, 86, 8, '20080423 00:00:00.000', '20080521 00:00:00.000', '20080424 00:00:00.000', 2, 71.64, N'Ship to 86-C', N'Adenauerallee 0123', N'Stuttgart', NULL, N'10349', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11047, 19, 7, '20080424 00:00:00.000', '20080522 00:00:00.000', '20080501 00:00:00.000', 3, 46.62, N'Destination FRCGJ', N'5678 King George', N'London', NULL, N'10153', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11048, 10, 7, '20080424 00:00:00.000', '20080522 00:00:00.000', '20080430 00:00:00.000', 3, 24.12, N'Destination XJIBQ', N'1234 Tsawassen Blvd.', N'Tsawassen', N'BC', N'10129', N'Canada');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11049, 31, 3, '20080424 00:00:00.000', '20080522 00:00:00.000', '20080504 00:00:00.000', 1, 8.34, N'Destination XOIGC', N'Av. Brasil, 8901', N'Campinas', N'SP', N'10186', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11050, 24, 8, '20080427 00:00:00.000', '20080525 00:00:00.000', '20080505 00:00:00.000', 2, 59.41, N'Destination YCMPK', N'Åkergatan 8901', N'Bräcke', NULL, N'10166', N'Sweden');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11051, 41, 7, '20080427 00:00:00.000', '20080525 00:00:00.000', NULL, 3, 2.79, N'Destination OLJND', N'8901 rue Alsace-Lorraine', N'Toulouse', NULL, N'10216', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11052, 34, 3, '20080427 00:00:00.000', '20080525 00:00:00.000', '20080501 00:00:00.000', 1, 67.26, N'Destination DPCVR', N'Rua do Paço, 6789', N'Rio de Janeiro', N'RJ', N'10194', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11053, 59, 2, '20080427 00:00:00.000', '20080525 00:00:00.000', '20080429 00:00:00.000', 2, 53.05, N'Ship to 59-A', N'Geislweg 6789', N'Salzburg', NULL, N'10264', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11054, 12, 8, '20080428 00:00:00.000', '20080526 00:00:00.000', NULL, 1, 0.33, N'Destination QTHBC', N'Cerrito 6789', N'Buenos Aires', NULL, N'10134', N'Argentina');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11055, 35, 7, '20080428 00:00:00.000', '20080526 00:00:00.000', '20080505 00:00:00.000', 2, 120.92, N'Destination JYDLM', N'Carrera1234 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'Táchira', N'10199', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11056, 19, 8, '20080428 00:00:00.000', '20080512 00:00:00.000', '20080501 00:00:00.000', 2, 278.96, N'Destination QTKCU', N'3456 King George', N'London', NULL, N'10151', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11057, 53, 3, '20080429 00:00:00.000', '20080527 00:00:00.000', '20080501 00:00:00.000', 3, 4.13, N'Ship to 53-C', N'South House 3456 Queensbridge', N'London', NULL, N'10251', N'UK');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11058, 6, 9, '20080429 00:00:00.000', '20080527 00:00:00.000', NULL, 3, 31.14, N'Ship to 6-A', N'Forsterstr. 2345', N'Mannheim', NULL, N'10300', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11059, 67, 2, '20080429 00:00:00.000', '20080610 00:00:00.000', NULL, 2, 85.80, N'Ship to 67-A', N'Av. Copacabana, 3456', N'Rio de Janeiro', N'RJ', N'10291', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11060, 27, 2, '20080430 00:00:00.000', '20080528 00:00:00.000', '20080504 00:00:00.000', 2, 10.98, N'Destination DICGM', N'Via Monte Bianco 7890', N'Torino', NULL, N'10175', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11061, 32, 4, '20080430 00:00:00.000', '20080611 00:00:00.000', NULL, 3, 14.01, N'Destination VYOBK', N'3456 Baker Blvd.', N'Eugene', N'OR', N'10191', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11062, 66, 4, '20080430 00:00:00.000', '20080528 00:00:00.000', NULL, 2, 29.93, N'Ship to 66-B', N'Strada Provinciale 1234', N'Reggio Emilia', NULL, N'10289', N'Italy');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11063, 37, 3, '20080430 00:00:00.000', '20080528 00:00:00.000', '20080506 00:00:00.000', 2, 81.73, N'Destination KPVYJ', N'5678 Johnstown Road', N'Cork', N'Co. Cork', N'10203', N'Ireland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11064, 71, 1, '20080501 00:00:00.000', '20080529 00:00:00.000', '20080504 00:00:00.000', 1, 30.09, N'Ship to 71-C', N'9012 Suffolk Ln.', N'Boise', N'ID', N'10307', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11065, 46, 8, '20080501 00:00:00.000', '20080529 00:00:00.000', NULL, 1, 12.91, N'Ship to 46-C', N'Carrera 2345 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'10229', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11066, 89, 7, '20080501 00:00:00.000', '20080529 00:00:00.000', '20080504 00:00:00.000', 2, 44.72, N'Ship to 89-A', N'7890 - 12th Ave. S.', N'Seattle', N'WA', N'10356', N'USA');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11067, 17, 1, '20080504 00:00:00.000', '20080518 00:00:00.000', '20080506 00:00:00.000', 2, 7.98, N'Destination BJCXA', N'Walserweg 7890', N'Aachen', NULL, N'10145', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11068, 62, 8, '20080504 00:00:00.000', '20080601 00:00:00.000', NULL, 2, 81.75, N'Ship to 62-A', N'Alameda dos Canàrios, 8901', N'Sao Paulo', N'SP', N'10276', N'Brazil');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11069, 80, 1, '20080504 00:00:00.000', '20080601 00:00:00.000', '20080506 00:00:00.000', 2, 15.67, N'Ship to 80-B', N'Avda. Azteca 4567', N'México D.F.', NULL, N'10333', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11070, 44, 2, '20080505 00:00:00.000', '20080602 00:00:00.000', NULL, 1, 136.00, N'Ship to 44-A', N'Magazinweg 4567', N'Frankfurt a.M.', NULL, N'10222', N'Germany');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11071, 46, 1, '20080505 00:00:00.000', '20080602 00:00:00.000', NULL, 1, 0.93, N'Ship to 46-B', N'Carrera 1234 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'10228', N'Venezuela');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11072, 20, 4, '20080505 00:00:00.000', '20080602 00:00:00.000', NULL, 2, 258.64, N'Destination RVDMF', N'Kirchgasse 9012', N'Graz', NULL, N'10157', N'Austria');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11073, 58, 2, '20080505 00:00:00.000', '20080602 00:00:00.000', NULL, 2, 24.95, N'Ship to 58-B', N'Calle Dr. Jorge Cash 4567', N'México D.F.', NULL, N'10262', N'Mexico');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11074, 73, 7, '20080506 00:00:00.000', '20080603 00:00:00.000', NULL, 2, 18.44, N'Ship to 73-A', N'Vinbæltet 1234', N'Kobenhavn', NULL, N'10310', N'Denmark');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11075, 68, 8, '20080506 00:00:00.000', '20080603 00:00:00.000', NULL, 2, 6.19, N'Ship to 68-A', N'Starenweg 6789', N'Genève', NULL, N'10294', N'Switzerland');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11076, 9, 4, '20080506 00:00:00.000', '20080603 00:00:00.000', NULL, 2, 38.28, N'Ship to 9-A', N'8901, rue des Bouchers', N'Marseille', NULL, N'10367', N'France');
INSERT INTO Orders(orderid, custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
  VALUES(11077, 65, 1, '20080506 00:00:00.000', '20080603 00:00:00.000', NULL, 2, 8.53, N'Ship to 65-A', N'7890 Milton Dr.', N'Albuquerque', N'NM', N'10285', N'USA');



