CREATE TABLE places(
   id INT NOT NULL AUTO_INCREMENT,
   place CHAR(30) NOT NULL,
   start_timestamp TIMESTAMP(6) GENERATED ALWAYS AS ROW START,
   end_timestamp TIMESTAMP(6) GENERATED ALWAYS AS ROW END,
   PERIOD FOR SYSTEM_TIME(start_timestamp, end_timestamp),
   PRIMARY KEY (id)
) WITH SYSTEM VERSIONING;