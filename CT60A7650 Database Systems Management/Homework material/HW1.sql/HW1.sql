CREATE TABLE purchases (
  id SERIAL,
  n varchar(255) NOT NULL,
  d DATE default NULL,
  i varchar(50) NOT NULL,
  PRIMARY KEY (id)
);

SET datestyle TO SQL, DMY;

INSERT INTO purchases (n,d,i) VALUES ('Carol K. Durham','12/04/2000','41');
INSERT INTO purchases (n,d,i) VALUES ('Xander I. Harrell','28/08/2000','71');
INSERT INTO purchases (n,d,i) VALUES ('Stone X. Owens','26/02/2000','17');
INSERT INTO purchases (n,d,i) VALUES ('Stewart X. Davenport','28/10/1999','52');
INSERT INTO purchases (n,d,i) VALUES ('Gabriel B. Blackwell','01/06/2000','2');
INSERT INTO purchases (n,d,i) VALUES ('Sylvia W. Lott','26/11/1999','4');
INSERT INTO purchases (n,d,i) VALUES ('Sylvia W. Lott','26/09/1999','40');
INSERT INTO purchases (n,d,i) VALUES ('Jelani N. Warner','12/09/2000','48');
INSERT INTO purchases (n,d,i) VALUES ('Tasha L. Burch','12/10/2000','7');
INSERT INTO purchases (n,d,i) VALUES ('Jelani N. Warner','02/03/1999','44');
INSERT INTO purchases (n,d,i) VALUES ('Hamish M. Schmidt','28/03/2000','35');
INSERT INTO purchases (n,d,i) VALUES ('Colette B. Rowe','03/10/1999','9');
INSERT INTO purchases (n,d,i) VALUES ('Jorden G. Washington','02/12/1999','37');
INSERT INTO purchases (n,d,i) VALUES ('Cassady X. Chaney','08/08/2000','51');
INSERT INTO purchases (n,d,i) VALUES ('Danielle N. Vinson','13/10/1999','13');
INSERT INTO purchases (n,d,i) VALUES ('Jenette D. Hamilton','22/05/2000','95');
INSERT INTO purchases (n,d,i) VALUES ('Flavia K. Nichols','24/10/2000','22');
INSERT INTO purchases (n,d,i) VALUES ('Randall H. Skinner','10/11/2000','17');
INSERT INTO purchases (n,d,i) VALUES ('Mikayla N. Puckett','27/10/1999','89');
INSERT INTO purchases (n,d,i) VALUES ('Kerry Z. Lynn','05/11/1999','4');
INSERT INTO purchases (n,d,i) VALUES ('Joshua K. Decker','08/02/2000','67');
INSERT INTO purchases (n,d,i) VALUES ('Hedley E. Fitzpatrick','25/10/2000','64');
INSERT INTO purchases (n,d,i) VALUES ('Cora T. Orr','12/08/2000','70');
INSERT INTO purchases (n,d,i) VALUES ('Arsenio Q. Turner','17/09/2000','40');
INSERT INTO purchases (n,d,i) VALUES ('Larissa P. Benson','30/09/2000','36');
INSERT INTO purchases (n,d,i) VALUES ('Trevor N. Sykes','02/01/2000','59');
INSERT INTO purchases (n,d,i) VALUES ('Mallory M. Atkins','11/12/2000','18');
INSERT INTO purchases (n,d,i) VALUES ('Lane F. Howell','27/07/2000','7');
INSERT INTO purchases (n,d,i) VALUES ('Molly T. Mercado','03/09/2000','8');
INSERT INTO purchases (n,d,i) VALUES ('Tobias S. Trujillo','16/12/2000','14');
INSERT INTO purchases (n,d,i) VALUES ('Liberty V. Hyde','04/11/2000','67');
INSERT INTO purchases (n,d,i) VALUES ('Haley B. Jefferson','09/04/2000','95');
INSERT INTO purchases (n,d,i) VALUES ('Kelly I. Nicholson','15/03/2000','45');
INSERT INTO purchases (n,d,i) VALUES ('Kristen A. Schwartz','11/10/2000','20');
INSERT INTO purchases (n,d,i) VALUES ('Shannon J. Knowles','01/09/2000','43');
INSERT INTO purchases (n,d,i) VALUES ('Winifred M. Mccarty','12/09/2000','65');
INSERT INTO purchases (n,d,i) VALUES ('Ciara S. Davis','01/10/1999','12');
INSERT INTO purchases (n,d,i) VALUES ('Bryar G. Hines','18/10/1999','74');
INSERT INTO purchases (n,d,i) VALUES ('Talon K. Blackburn','25/06/2000','27');
INSERT INTO purchases (n,d,i) VALUES ('Kiara F. Huff','15/11/1999','9');
INSERT INTO purchases (n,d,i) VALUES ('Brennan N. Langley','30/10/2000','68');
INSERT INTO purchases (n,d,i) VALUES ('Gemma W. Marsh','21/01/2000','20');
INSERT INTO purchases (n,d,i) VALUES ('Astra P. Dickson','16/03/2000','4');
INSERT INTO purchases (n,d,i) VALUES ('Ruth R. Brooks','08/01/2000','3');
INSERT INTO purchases (n,d,i) VALUES ('Fritz D. Harmon','17/10/2000','47');
INSERT INTO purchases (n,d,i) VALUES ('Ronan F. Haley','16/10/1999','71');
INSERT INTO purchases (n,d,i) VALUES ('Ivy Z. Mcguire','15/01/2000','100');
INSERT INTO purchases (n,d,i) VALUES ('Anastasia B. Christian','25/12/1999','18');
INSERT INTO purchases (n,d,i) VALUES ('Natalie W. Mclaughlin','17/01/2000','4');
INSERT INTO purchases (n,d,i) VALUES ('Anastasia B. Christian','25/01/2000','18');
INSERT INTO purchases (n,d,i) VALUES ('Casey G. Petty','10/04/2000','25');
INSERT INTO purchases (n,d,i) VALUES ('Wynter H. Simpson','18/02/2000','79');
INSERT INTO purchases (n,d,i) VALUES ('Whitney U. Waters','16/04/2000','29');
INSERT INTO purchases (n,d,i) VALUES ('Gail T. Walters','03/10/1999','15');
INSERT INTO purchases (n,d,i) VALUES ('Felicia W. Watts','08/01/2000','77');
INSERT INTO purchases (n,d,i) VALUES ('Kiayada T. Sanchez','12/10/2000','60');
INSERT INTO purchases (n,d,i) VALUES ('Yvette U. Shepherd','08/12/2000','68');
INSERT INTO purchases (n,d,i) VALUES ('Isadora S. Meyers','28/12/1999','62');
INSERT INTO purchases (n,d,i) VALUES ('Geoffrey W. Washington','31/05/2000','32');
INSERT INTO purchases (n,d,i) VALUES ('Regan C. Byers','09/05/2000','75');
INSERT INTO purchases (n,d,i) VALUES ('Audra A. Tran','27/10/1999','42');
INSERT INTO purchases (n,d,i) VALUES ('Shad O. Rodgers','19/12/1999','17');
INSERT INTO purchases (n,d,i) VALUES ('Shad O. Rodgers','05/10/2000','17');
INSERT INTO purchases (n,d,i) VALUES ('Audra A. Tran','06/10/2000','19');
INSERT INTO purchases (n,d,i) VALUES ('Cooper W. Ortiz','07/10/2000','43');
INSERT INTO purchases (n,d,i) VALUES ('Orson Y. Hensley','22/02/2000','29');
INSERT INTO purchases (n,d,i) VALUES ('Orson Y. Hensley','22/03/2000','29');
INSERT INTO purchases (n,d,i) VALUES ('Cooper W. Ortiz','19/06/2000','21');
INSERT INTO purchases (n,d,i) VALUES ('Keiko W. Mosley','13/11/1999','98');
INSERT INTO purchases (n,d,i) VALUES ('Doris P. Mcguire','09/02/2000','63');
INSERT INTO purchases (n,d,i) VALUES ('Kerry Y. Hoover','06/04/2000','34');
INSERT INTO purchases (n,d,i) VALUES ('Kerry Y. Hoover','06/05/2000','65');
INSERT INTO purchases (n,d,i) VALUES ('Lael C. Baker','13/11/2000','65');
INSERT INTO purchases (n,d,i) VALUES ('Vernon B. Burch','24/11/2000','78');
INSERT INTO purchases (n,d,i) VALUES ('Tatyana Y. Melton','21/05/2000','64');
INSERT INTO purchases (n,d,i) VALUES ('Alexander X. Stark','27/10/2000','25');
INSERT INTO purchases (n,d,i) VALUES ('Kyle L. Ross','23/01/2000','10');
INSERT INTO purchases (n,d,i) VALUES ('Ivana B. Gibbs','30/12/2000','73');
INSERT INTO purchases (n,d,i) VALUES ('Veda I. Mueller','03/05/2000','48');
INSERT INTO purchases (n,d,i) VALUES ('Baxter V. Farley','08/11/1999','67');
INSERT INTO purchases (n,d,i) VALUES ('Evangeline H. Taylor','15/04/2000','25');
INSERT INTO purchases (n,d,i) VALUES ('Adena A. Graves','20/08/2000','92');
INSERT INTO purchases (n,d,i) VALUES ('Yael O. White','19/01/2000','1');
INSERT INTO purchases (n,d,i) VALUES ('Sarah G. Hutchinson','12/07/2000','40');
INSERT INTO purchases (n,d,i) VALUES ('Derek M. Park','25/11/2000','71');
INSERT INTO purchases (n,d,i) VALUES ('Alma L. Lynn','20/11/2000','97');
INSERT INTO purchases (n,d,i) VALUES ('Clark L. Rivera','06/08/2000','30');
INSERT INTO purchases (n,d,i) VALUES ('Andrew Y. Dudley','29/03/2000','37');
INSERT INTO purchases (n,d,i) VALUES ('Calista P. Durham','01/04/2000','16');
INSERT INTO purchases (n,d,i) VALUES ('Macaulay B. Miles','09/12/2000','60');
INSERT INTO purchases (n,d,i) VALUES ('Leo P. Mendez','30/10/2000','43');
INSERT INTO purchases (n,d,i) VALUES ('Autumn V. Sherman','25/11/1999','35');
INSERT INTO purchases (n,d,i) VALUES ('Kessie B. Flynn','13/05/2000','58');
INSERT INTO purchases (n,d,i) VALUES ('Shannon O. Johnston','29/02/2000','6');
INSERT INTO purchases (n,d,i) VALUES ('Debra J. Workman','30/04/2000','31');
INSERT INTO purchases (n,d,i) VALUES ('Darrel R. Fowler','05/10/2000','40');
INSERT INTO purchases (n,d,i) VALUES ('Kylynn O. English','14/11/2000','19');
INSERT INTO purchases (n,d,i) VALUES ('Tasha U. Merrill','06/01/2000','49');
INSERT INTO purchases (n,d,i) VALUES ('Daniel X. Guerra','27/11/1999','32');
INSERT INTO purchases (n,d,i) VALUES ('Clio R. Perry','16/11/1999','76');
INSERT INTO purchases (n,d,i) VALUES ('Aimee I. Patrick','08/10/2000','87');
INSERT INTO purchases (n,d,i) VALUES ('Chase X. Strickland','19/05/2000','45');
INSERT INTO purchases (n,d,i) VALUES ('Steel T. Elliott','24/07/2000','12');
INSERT INTO purchases (n,d,i) VALUES ('Lael N. Herman','01/10/2000','14');
INSERT INTO purchases (n,d,i) VALUES ('Montana I. Becker','21/12/1999','58');
INSERT INTO purchases (n,d,i) VALUES ('Mohammad B. Bowman','12/12/1999','92');
INSERT INTO purchases (n,d,i) VALUES ('Jaime G. Wilder','14/12/1999','67');
INSERT INTO purchases (n,d,i) VALUES ('Naida K. Taylor','02/01/2000','71');