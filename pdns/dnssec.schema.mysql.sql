create table domainmetadata (
 id		 INT auto_increment,
 domain_id       INT NOT NULL,
 kind		 VARCHAR(15),
 content	TEXT,
 primary key(id)
);

create table cryptokeys (
 id		INT auto_increment,
 domain_id      INT DEFAULT NULL,
 flags		INT NOT NULL,
 active		BOOL,
 content	TEXT,
 primary key(id)
);		 

alter table records add ordername      VARCHAR(255);
alter table records add auth bool;
create index orderindex on records(ordername);
