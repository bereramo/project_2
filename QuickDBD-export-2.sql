-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "campaign" (
    "contact_id" int   NOT NULL,
    "company_name" VARCHAR   NOT NULL,
    "description" VARCHAR   NOT NULL,
    "goal" VARCHAR   NOT NULL,
    "pledged" VARCHAR   NOT NULL,
    "outcome" VARCHAR   NOT NULL,
    "backers_count" VARCHAR   NOT NULL,
    "country" VARCHAR   NOT NULL,
    "currency" VARCHAR   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "staff_pick" VARCHAR   NOT NULL,
    "spotlight" VARCHAR   NOT NULL,
    "category" VARCHAR   NOT NULL,
    "sub-category" VARCHAR   NOT NULL,
    "category_id" VARCHAR   NOT NULL,
    "subcategory_id" VARCHAR   NOT NULL
);

CREATE TABLE "category" (
    "category_id" VARCHAR   NOT NULL,
    "category" VARCHAR   NOT NULL
);

CREATE TABLE "contacts" (
    "contact_id" VARCHAR   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "email" VARCHAR   NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR   NOT NULL,
    "sub-category" VARCHAR   NOT NULL
);

ALTER TABLE "category" ADD CONSTRAINT "fk_category_category_id" FOREIGN KEY("category_id")
REFERENCES "campaign" ("category_id");

ALTER TABLE "contacts" ADD CONSTRAINT "fk_contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "campaign" ("contact_id");

ALTER TABLE "subcategory" ADD CONSTRAINT "fk_subcategory_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "campaign" ("subcategory_id");

