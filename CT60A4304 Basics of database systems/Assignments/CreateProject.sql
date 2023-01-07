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
	"OrderID"	INTEGER NOT NULL,
	"CustomerID"	INTEGER NOT NULL,
	"Date"	TEXT,
	PRIMARY KEY("OrderID"),
	CONSTRAINT FK_CustomerID
	FOREIGN KEY("CustomerID") REFERENCES "Customer"("CustomerID")
		ON DELETE CASCADE
);
CREATE TABLE "Item" (
	"ItemID"	INTEGER NOT NULL,
	"OrderID"	INTEGER NOT NULL,
	"Name"	TEXT,
	CONSTRAINT FK_OrderID
	FOREIGN KEY("OrderID") REFERENCES "Shipment"("OrderID")
		ON DELETE CASCADE,
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
INSERT INTO Shipment VALUES
	(1001,10002,"11/12/2021"),
	(1002,10006,"01/01/2022"),
	(1003,10001,"05/02/2022"),
	(1004,10001,"07/08/2021"),
	(1005,10003,"09/11/2021"),
	(1006,10005,"16/01/2022"),
	(1007,10003,"17/01/2022"),
	(1008,10004,"25/12/2021");
INSERT INTO Item VALUES
	(1000001,1002,"Liquorice"),
	(1000002,1002,"Surströmming"),
	(1000003,1002,"Durian"),
	(1000004,1004,"Frog"),
	(1000005,1006,"Maggot Cheese"),
	(1000006,1005,"Balut"),
	(1000007,1002,"Blood sausage"),
	(1000008,1001,"Vodka"),
	(1000009,1005,"Coconut"),
	(1000010,1006,"Escargots snail"),
	(1000011,1004,"Tarantula"),
	(1000012,1002,"Brain curry"),
	(1000013,1001,"Chicken feet"),
	(1000014,1003,"Hakarl"),
	(1000015,1004,"Basashi"),
	(1000016,1002,"Molokhia"),
	(1000017,1004,"Civet coffee"),
	(1000018,1006,"Stinky tofu");

	