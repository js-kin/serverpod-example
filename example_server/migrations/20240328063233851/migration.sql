BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "example" (
    "id" serial PRIMARY KEY,
    "data" text NOT NULL,
    "date" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "test" (
    "id" serial PRIMARY KEY,
    "data1" text NOT NULL,
    "data2" text NOT NULL,
    "data3" text NOT NULL,
    "date" timestamp without time zone NOT NULL
);


--
-- MIGRATION VERSION FOR example
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('example', '20240328063233851', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240328063233851', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
