CREATE DATABASE Project;
CREATE TABLE "Customer" (
	"CustomerID"	INTEGER NOT NULL,
	"Name"	TEXT,
	"Age"	INTEGER,
	PRIMARY KEY("CustomerID")
);
CREATE TABLE "Address" (
	"AddressID"	INTEGER NOT NULL,
	"CustomerID"	INTEGER NOT NULL,
	"Street"	TEXT,
	"Number"	INTEGER,
	"PostalCode"	INTEGER,
	"Region"	TEXT,
	"CountryID"	INTEGER NOT NULL,
	CONSTRAINT FK_CustomerID
	FOREIGN KEY("CustomerID") REFERENCES "Customer"("CustomerID")
		ON DELETE CASCADE,
	CONSTRAINT FK_CountryID
	FOREIGN KEY("CountryID") REFERENCES "Country"("CountryID")
		ON DELETE CASCADE,
	PRIMARY KEY("AddressID")
);
CREATE TABLE "Country" (
	"CountryID"	INTEGER NOT NULL,
	"Country"	TEXT,
	PRIMARY KEY("CountryID")
);
CREATE TABLE "Contact" (
	"ContactID"	INTEGER NOT NULL,
	"CustomerID"	INTEGER NOT NULL,
	"Phone"	TEXT,
	"Mail"	TEXT,
	PRIMARY KEY("ContactID"),
	CONSTRAINT FK_CustomerID
	FOREIGN KEY("CustomerID") REFERENCES "Customer"("CustomerID")
		ON DELETE CASCADE
);
CREATE TABLE "Shipment" (
	"CustomerID"	INTEGER NOT NULL,
	"ItemID" INTEGER NOT NULL,
	"Date"	TEXT,
	CONSTRAINT FK_ItemID
	FOREIGN KEY("ItemID") REFERENCES "Item"("ItemID")
		ON DELETE CASCADE,
	CONSTRAINT FK_CustomerID
	FOREIGN KEY("CustomerID") REFERENCES "Customer"("CustomerID")
		ON DELETE CASCADE
);
CREATE TABLE "Item" (
	"ItemID"	INTEGER NOT NULL,
	"Name"	TEXT,
	PRIMARY KEY("ItemID")
);
INSERT INTO Customer VALUES
	(10001,"Tomasz Gorczyca",23),
	(10002,"Leon Kulikowski",36),
	(10003,"Artur Nowak",32),
	(10004,"Iwa Cegielska",28),
	(10005,"Adriana Polkowska",31),
	(10006,"Patrycja Ptaszynska",29);
INSERT INTO Country VALUES
	(1,"Czechia"),
	(2,"Slovakia");
INSERT INTO Address VALUES
	(100,10003,"Bílokostelecká",77,46331,"Liberec",1),
	(102,10005,"Kyselská",167,41801,"Teplice",1),
	(103,10001,"Strmá",184,33701,"Rokycany",1),
	(104,10004,"Mjr. Archipova",1,26012,"Dolný Kubín",2),
	(105,10002,"Rybka",84,34092,"Ružomberok",2),
	(106,10006,"Kurtaserskou",136,93201," Veľký Meder",2);
INSERT INTO Contact VALUES
	(1, 10001, "+420778756417","sveta4521@badutstore.com"),
	(2, 10002, "+421903443108","kimkjersteen@texasaol.com"),
	(3, 10003, "+420776121001","shiknikolai@eloltsf.com"),
	(4, 10004, "+421066229393","pebkac59@supermantutivie.com"),
	(5, 10005, "+420771019248","thodoan@lohpcn.com"),
	(6, 10006, "+421907353718","kotimur@playfuny.com");
INSERT INTO Item VALUES
	(1000001,"Liquorice"),
	(1000002,"Surströmming"),
	(1000003,"Durian"),
	(1000004,"Frog"),
	(1000005,"Maggot Cheese"),
	(1000006,"Balut"),
	(1000007,"Blood sausage"),
	(1000008,"Vodka"),
	(1000009,"Coconut"),
	(1000010,"Escargots snail"),
	(1000011,"Tarantula"),
	(1000012,"Brain curry"),
	(1000013,"Chicken feet"),
	(1000014,"Hakarl"),
	(1000015,"Basashi"),
	(1000016,"Molokhia"),
	(1000017,"Civet coffee"),
	(1000018,"Stinky tofu");
INSERT INTO Shipment VALUES
	(10001,1000001,"15/12/2021"),
	(10001,1000005,"11/12/2021"),
	(10002,1000008,"01/01/2022"),
	(10002,1000007,"11/01/2021"),
	(10002,1000010,"11/12/2021"),
	(10002,1000006,"02/01/2022"),
	(10003,1000011,"05/02/2022"),
	(10003,1000004,"07/08/2021"),
	(10003,1000017,"04/11/2021"),
	(10004,1000006,"12/01/2022"),
	(10004,1000003,"17/01/2022"),
	(10005,1000003,"25/12/2021"),
	(10006,1000002,"09/02/2022"),
	(10006,1000001,"11/08/2021"),
	(10007,1000003,"15/11/2021"),
	(10007,1000002,"18/01/2022"),
	(10007,1000008,"19/01/2022"),
	(10008,1000017,"21/12/2021"),
	(10004,1000013,"10/01/2022"),
	(10008,1000002,"25/12/2021");

	