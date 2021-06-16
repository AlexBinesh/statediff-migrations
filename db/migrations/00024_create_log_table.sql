CREATE TABLE Logs (
  id SERIAL,
    CONSTRAINT receipt_id
      FOREIGN KEY(id) 
      REFERENCES eth.receipt_cids(id),

address    char(42),
Topics0 Varchar (66),
Topics1 Varchar (66),
Topics2 Varchar (66),
Topics3 Varchar (66),
Data bytea);

CREATE UNIQUE INDEX topic0_idx ON Logs  (Topics0);
CREATE UNIQUE INDEX topic1_idx ON Logs  (Topics1);
CREATE UNIQUE INDEX topic2_idx ON Logs  (Topics2);
CREATE UNIQUE INDEX topic3_idx ON Logs  (Topics3);
CREATE UNIQUE INDEX address_idx ON Logs  (address);

