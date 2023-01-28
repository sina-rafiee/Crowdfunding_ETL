
CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL PRIMARY KEY,
    "contact_id" int   NOT NULL,
    "company_name" varchar(100)   NOT NULL,
    "description" text   NOT NULL,
    "goal" numeric(10,2)   NOT NULL,
    "pledged" numeric(10,2)   NOT NULL,
    "outcome" varchar(50)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(10)   NOT NULL,
    "currency" varchar(10)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(10)   NOT NULL,
    "subcategory_id" varchar(10)   NOT NULL
);

select * from campaign;


CREATE TABLE "category" (
    "category_id" varchar(10)   NOT NULL PRIMARY KEY,
    "category_name" varchar(50)   NOT NULL
);

select * from category;

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(10)   NOT NULL PRIMARY KEY,
    "subcategory_name" varchar(50)   NOT NULL
);

select * from subcategory;

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL PRIMARY KEY,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "email" varchar(100)   NOT NULL
);

select * from contacts;

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");