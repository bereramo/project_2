-- drop tables if exist

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS campaign;

-- create contacts table and set our primary key

CREATE TABLE contacts (
    contact_id INT NOT NULL,
    first_name VARCHAR (30)  NOT NULL,
    last_name VARCHAR (30)  NOT NULL,
    email VARCHAR (30)  NOT NULL,
	PRIMARY KEY (contact_id)
);

SELECT * FROM contacts

-- create category table and set our primary key

CREATE TABLE category (
    category_id VARCHAR (30)   NOT NULL,
    category VARCHAR (30)  NOT NULL,
	PRIMARY KEY (category_id)
);

SELECT * FROM category

-- create subcategory table and set our primary key

CREATE TABLE subcategory (
    subcategory_id VARCHAR (30)  NOT NULL,
    subcategory VARCHAR (30)  NOT NULL,
	PRIMARY KEY (subcategory_id)
);

SELECT * FROM subcategory

-- create campaign table and set our primary key and foreign keys

CREATE TABLE campaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR (50)  NOT NULL,
    description VARCHAR (300)  NOT NULL,
    goal DECIMAL   NOT NULL,
    pledged DECIMAL   NOT NULL,
    outcome VARCHAT (30)  NOT NULL,
    backers_count INT   NOT NULL,
    country VARCHAR (30)  NOT NULL,
    currency VARCHAR (30)  NOT NULL,
    launched_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
    category_id VARCHAR (30)  NOT NULL,
    subcategory_id VARCHAR (30)  NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) references contacts(contact_id),
	FOREIGN KEY (category_id) references category(category_id),
	FOREIGN KEY (subcategory_id) references subcategory(subcategory_id)
);

SELECT * FROM campaign












	








	
