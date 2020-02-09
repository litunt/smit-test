--liquibase formatted sql

--changeset lilia:create-library_worker_id_seq-schema
--validCheckSum:any
CREATE SEQUENCE IF NOT EXISTS library.library_worker_id_seq START 1;
--rollback DROP SEQUENCE library.library_worker_id_seq CASCADE;

--changeset lilia:create-library_book_id_seq-schema
--validCheckSum:any
CREATE SEQUENCE IF NOT EXISTS library.library_book_id_seq START 1001;
--rollback DROP SEQUENCE library.library_book_id_seq CASCADE;

--changeset lilia:create-library_borrower_id_seq-schema
--validCheckSum:any
CREATE SEQUENCE IF NOT EXISTS library.library_borrower_id_seq START 101;
--rollback DROP SEQUENCE library.library_borrower_id_seq CASCADE;

--changeset lilia:create-library_borrowing_id_seq-schema
--validCheckSum:any
CREATE SEQUENCE IF NOT EXISTS library.library_borrowing_id_seq START 10001;
--rollback DROP SEQUENCE library.library_borrowing_id_seq CASCADE;

--changeset lilia:create-library_worker_role_id_seq-schema
--validCheckSum:any
CREATE SEQUENCE IF NOT EXISTS library.library_worker_role_id_seq START 1;
--rollback DROP SEQUENCE library.library_worker_role_id_seq CASCADE;

--changeset lilia:create-library_worker_role-schema
--validCheckSum:any
CREATE TABLE IF NOT EXISTS library.library_worker_role (
     role_id INTEGER DEFAULT nextval('library.library_worker_role_id_seq') PRIMARY KEY,
     role_name VARCHAR(50) UNIQUE NOT NULL
);
--rollback DROP TABLE library.library_worker_role CASCADE;

--changeset lilia:create-library_worker-schema
--validCheckSum:any
CREATE TABLE IF NOT EXISTS library.library_worker (
     worker_id INTEGER DEFAULT nextval('library.library_worker_id_seq') PRIMARY KEY,
     username VARCHAR(50) UNIQUE NOT NULL,
     name VARCHAR(50) NOT NULL,
     password TEXT NOT NULL
);
--rollback DROP TABLE library.library_worker CASCADE;

--changeset lilia:create-library_worker_and_role-schema
--validCheckSum:any
CREATE TABLE IF NOT EXISTS library.library_worker_and_role (
     worker_id INTEGER NOT NULL,
     role_id INTEGER NOT NULL,
     PRIMARY KEY (worker_id, role_id),
     CONSTRAINT worker_id_role_fk FOREIGN KEY (worker_id)
        REFERENCES library.library_worker (worker_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
     CONSTRAINT role_id_role_fk FOREIGN KEY (role_id)
        REFERENCES library.library_worker_role (role_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);
--rollback DROP TABLE library.library_worker_and_role CASCADE;

--changeset lilia:create-library_section-schema
--validCheckSum:any
CREATE TABLE IF NOT EXISTS library.library_section (
     section_id INTEGER PRIMARY KEY,
     section_name VARCHAR(500) NOT NULL
);
--rollback DROP TABLE library.library_section CASCADE;

--changeset lilia:create-library_book-schema
--validCheckSum:any
CREATE TABLE IF NOT EXISTS library.library_book (
    book_id INTEGER DEFAULT nextval('library.library_book_id_seq') PRIMARY KEY,
    isbn VARCHAR(13) UNIQUE NOT NULL,
    samples INTEGER DEFAULT 0,
    publication_date DATE NOT NULL,
    author_name VARCHAR(1000) NOT NULL,
    author_surname VARCHAR(1000) NOT NULL,
    heading VARCHAR(1000) NOT NULL,
    section INTEGER NOT NULL,
    order_number INTEGER NOT NULL,
    CONSTRAINT book_section_fk FOREIGN KEY (section)
        REFERENCES library.library_section (section_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);
--rollback DROP TABLE library.library_book CASCADE;

--changeset lilia:create-library_borrower-schema
--validCheckSum:any
CREATE TABLE IF NOT EXISTS library.library_borrower (
    borrower_id INTEGER DEFAULT nextval('library.library_borrower_id_seq') PRIMARY KEY,
    name VARCHAR(1000) NOT NULL,
    email VARCHAR(250) NOT NULL
);
--rollback DROP TABLE library.library_borrower CASCADE;

--changeset lilia:create-library_borrowing-schema
--validCheckSum:any
CREATE TABLE IF NOT EXISTS library.library_borrowing (
    borrowing_id INTEGER DEFAULT nextval('library.library_borrowing_id_seq') PRIMARY KEY,
    borrower_id INTEGER NOT NULL,
    book_id INTEGER NOT NULL,
    borrow_date DATE DEFAULT CURRENT_DATE,
    estimated_return_date DATE NOT NULL,
    return_date DATE,
    CONSTRAINT borrowing_borrower_id_fk FOREIGN KEY (borrower_id)
        REFERENCES library.library_borrower (borrower_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT borrowing_book_id_fk FOREIGN KEY (book_id)
        REFERENCES library.library_book (book_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);
--rollback DROP TABLE library.library_borrowing CASCADE;
