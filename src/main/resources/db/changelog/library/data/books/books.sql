--liquibase formatted sql

--changeset lilia:addSector-sector-1
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Manufacturing');
--rollback DELETE FROM sector WHERE sector_id = 1

--changeset lilia:addSector-sector-2
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Service');
--rollback DELETE FROM sector WHERE sector_id = 2

--changeset lilia:addSector-sector-3
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Other');
--rollback DELETE FROM sector WHERE sector_id = 3

SELECT setval('sectors_schema.sector_sector_id_seq', 4, true);

--changeset lilia:addSector-sector-5
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Printing');
--rollback DELETE FROM sector WHERE sector_id = 5

--changeset lilia:addSector-sector-6
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Food and Beverage');
--rollback DELETE FROM sector WHERE sector_id = 6

--changeset lilia:addSector-sector-7
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Textile and Clothing');
--rollback DELETE FROM sector WHERE sector_id = 7

--changeset lilia:addSector-sector-8
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Wood');
--rollback DELETE FROM sector WHERE sector_id = 8

--changeset lilia:addSector-sector-9
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Plastic and Rubber');
--rollback DELETE FROM sector WHERE sector_id = 9

SELECT setval('sectors_schema.sector_sector_id_seq', 10, true);

--changeset lilia:addSector-sector-11
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Metalworking');
--rollback DELETE FROM sector WHERE sector_id = 11

--changeset lilia:addSector-sector-12
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Machinery');
--rollback DELETE FROM sector WHERE sector_id = 12

--changeset lilia:addSector-sector-13
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Furniture');
--rollback DELETE FROM sector WHERE sector_id = 13

SELECT setval('sectors_schema.sector_sector_id_seq', 17, true);

--changeset lilia:addSector-sector-18
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Electronics and Optics');
--rollback DELETE FROM sector WHERE sector_id = 18

--changeset lilia:addSector-sector-19
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Construction materials');
--rollback DELETE FROM sector WHERE sector_id = 19

SELECT setval('sectors_schema.sector_sector_id_seq', 20, true);

--changeset lilia:addSector-sector-21
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Transport and Logistics');
--rollback DELETE FROM sector WHERE sector_id = 21

--changeset lilia:addSector-sector-22
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Tourism');
--rollback DELETE FROM sector WHERE sector_id = 22

SELECT setval('sectors_schema.sector_sector_id_seq', 24, true);

--changeset lilia:addSector-sector-25
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Business services');
--rollback DELETE FROM sector WHERE sector_id = 25

SELECT setval('sectors_schema.sector_sector_id_seq', 27, true);

--changeset lilia:addSector-sector-28
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Information Technology and Telecommunications');
--rollback DELETE FROM sector WHERE sector_id = 28

--changeset lilia:addSector-sector-29
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Energy technology');
--rollback DELETE FROM sector WHERE sector_id = 29

SELECT setval('sectors_schema.sector_sector_id_seq', 32, true);

--changeset lilia:addSector-sector-33
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Environment');
--rollback DELETE FROM sector WHERE sector_id = 33

SELECT setval('sectors_schema.sector_sector_id_seq', 34, true);

--changeset lilia:addSector-sector-35
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Engineering');
--rollback DELETE FROM sector WHERE sector_id = 35

SELECT setval('sectors_schema.sector_sector_id_seq', 36, true);

--changeset lilia:addSector-sector-37
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Creative industries');
--rollback DELETE FROM sector WHERE sector_id = 37

SELECT setval('sectors_schema.sector_sector_id_seq', 38, true);

--changeset lilia:addSector-sector-39
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Milk & dairy products');
--rollback DELETE FROM sector WHERE sector_id = 39

--changeset lilia:addSector-sector-40
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Meat & meat products');
--rollback DELETE FROM sector WHERE sector_id = 40

SELECT setval('sectors_schema.sector_sector_id_seq', 41, true);

--changeset lilia:addSector-sector-42
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Fish & fish products');
--rollback DELETE FROM sector WHERE sector_id = 42

--changeset lilia:addSector-sector-43
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Beverages');
--rollback DELETE FROM sector WHERE sector_id = 43

--changeset lilia:addSector-sector-44
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Clothing');
--rollback DELETE FROM sector WHERE sector_id = 44

--changeset lilia:addSector-sector-45
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Textile');
--rollback DELETE FROM sector WHERE sector_id = 45

SELECT setval('sectors_schema.sector_sector_id_seq', 46, true);

--changeset lilia:addSector-sector-47
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Wooden houses');
--rollback DELETE FROM sector WHERE sector_id = 47

SELECT setval('sectors_schema.sector_sector_id_seq', 50, true);

--changeset lilia:addSector-sector-51
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Wooden building materials');
--rollback DELETE FROM sector WHERE sector_id = 51

SELECT setval('sectors_schema.sector_sector_id_seq', 52, true);

--changeset lilia:addSector-sector-53
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Plastics welding and processing');
--rollback DELETE FROM sector WHERE sector_id = 53

--changeset lilia:addSector-sector-54
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Packaging');
--rollback DELETE FROM sector WHERE sector_id = 54

--changeset lilia:addSector-sector-55
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Blowing');
--rollback DELETE FROM sector WHERE sector_id = 55

SELECT setval('sectors_schema.sector_sector_id_seq', 56, true);

--changeset lilia:addSector-sector-57
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Moulding');
--rollback DELETE FROM sector WHERE sector_id = 57

SELECT setval('sectors_schema.sector_sector_id_seq', 61, true);

--changeset lilia:addSector-sector-62
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Forgings, Fasteners');
--rollback DELETE FROM sector WHERE sector_id = 62

SELECT setval('sectors_schema.sector_sector_id_seq', 65, true);

--changeset lilia:addSector-sector-66
INSERT INTO sectors_schema.sector (sector_name) VALUES ('MIG, TIG, Aluminum welding');
--rollback DELETE FROM sector WHERE sector_id = 66

--changeset lilia:addSector-sector-67
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Construction of metal structures');
--rollback DELETE FROM sector WHERE sector_id = 67

SELECT setval('sectors_schema.sector_sector_id_seq', 68, true);

--changeset lilia:addSector-sector-69
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Gas, Plasma, Laser cutting');
--rollback DELETE FROM sector WHERE sector_id = 69

SELECT setval('sectors_schema.sector_sector_id_seq', 74, true);

--changeset lilia:addSector-sector-75
INSERT INTO sectors_schema.sector (sector_name) VALUES ('CNC-machining');
--rollback DELETE FROM sector WHERE sector_id = 75

SELECT setval('sectors_schema.sector_sector_id_seq', 90, true);

--changeset lilia:addSector-sector-91
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Machinery equipment/tools');
--rollback DELETE FROM sector WHERE sector_id = 91

SELECT setval('sectors_schema.sector_sector_id_seq', 92, true);

--changeset lilia:addSector-sector-93
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Metal structures');
--rollback DELETE FROM sector WHERE sector_id = 93

--changeset lilia:addSector-sector-94
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Machinery components');
--rollback DELETE FROM sector WHERE sector_id = 94

SELECT setval('sectors_schema.sector_sector_id_seq', 96, true);

--changeset lilia:addSector-sector-97
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Maritime');
--rollback DELETE FROM sector WHERE sector_id = 97

--changeset lilia:addSector-sector-98
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Kitchen');
--rollback DELETE FROM sector WHERE sector_id = 98

--changeset lilia:addSector-sector-99
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Project furniture');
--rollback DELETE FROM sector WHERE sector_id = 99

SELECT setval('sectors_schema.sector_sector_id_seq', 100, true);

--changeset lilia:addSector-sector-101
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Living room');
--rollback DELETE FROM sector WHERE sector_id = 101

SELECT setval('sectors_schema.sector_sector_id_seq', 110, true);

--changeset lilia:addSector-sector-111
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Air');
--rollback DELETE FROM sector WHERE sector_id = 111

--changeset lilia:addSector-sector-112
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Road');
--rollback DELETE FROM sector WHERE sector_id = 112

--changeset lilia:addSector-sector-113
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Water');
--rollback DELETE FROM sector WHERE sector_id = 113

--changeset lilia:addSector-sector-114
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Rail');
--rollback DELETE FROM sector WHERE sector_id = 114

SELECT setval('sectors_schema.sector_sector_id_seq', 120, true);

--changeset lilia:addSector-sector-121
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Software, Hardware');
--rollback DELETE FROM sector WHERE sector_id = 121

--changeset lilia:addSector-sector-122
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Telecommunications');
--rollback DELETE FROM sector WHERE sector_id = 122

SELECT setval('sectors_schema.sector_sector_id_seq', 140, true);

--changeset lilia:addSector-sector-141
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Translation services');
--rollback DELETE FROM sector WHERE sector_id = 141

SELECT setval('sectors_schema.sector_sector_id_seq', 144, true);

--changeset lilia:addSector-sector-145
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Telecommunications');
--rollback DELETE FROM sector WHERE sector_id = 145

SELECT setval('sectors_schema.sector_sector_id_seq', 147, true);

--changeset lilia:addSector-sector-148
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Advertising');
--rollback DELETE FROM sector WHERE sector_id = 148

SELECT setval('sectors_schema.sector_sector_id_seq', 149, true);

--changeset lilia:addSector-sector-150
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Book/Periodicals printing');
--rollback DELETE FROM sector WHERE sector_id = 150

SELECT setval('sectors_schema.sector_sector_id_seq', 223, true);

--changeset lilia:addSector-sector-224
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Manufacture of machinery');
--rollback DELETE FROM sector WHERE sector_id = 224

SELECT setval('sectors_schema.sector_sector_id_seq', 226, true);

--changeset lilia:addSector-sector-227
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Repair and maintenance com.helmes.task.service');
--rollback DELETE FROM sector WHERE sector_id = 227

SELECT setval('sectors_schema.sector_sector_id_seq', 229, true);

--changeset lilia:addSector-sector-230
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Ship repair and conversion');
--rollback DELETE FROM sector WHERE sector_id = 230

SELECT setval('sectors_schema.sector_sector_id_seq', 262, true);

--changeset lilia:addSector-sector-263
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Houses and buildings');
--rollback DELETE FROM sector WHERE sector_id = 263

SELECT setval('sectors_schema.sector_sector_id_seq', 266, true);

--changeset lilia:addSector-sector-267
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Metal products');
--rollback DELETE FROM sector WHERE sector_id = 267

SELECT setval('sectors_schema.sector_sector_id_seq', 268, true);

--changeset lilia:addSector-sector-269
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Boat/Yacht building');
--rollback DELETE FROM sector WHERE sector_id = 269

SELECT setval('sectors_schema.sector_sector_id_seq', 270, true);

--changeset lilia:addSector-sector-271
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Aluminium and steel workboats');
--rollback DELETE FROM sector WHERE sector_id = 271

SELECT setval('sectors_schema.sector_sector_id_seq', 336, true);

--changeset lilia:addSector-sector-337
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Other (Wood)');
--rollback DELETE FROM sector WHERE sector_id = 337

SELECT setval('sectors_schema.sector_sector_id_seq', 340, true);

--changeset lilia:addSector-sector-341
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Outdoor');
--rollback DELETE FROM sector WHERE sector_id = 341

--changeset lilia:addSector-sector-342
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Bakery & confectionery products');
--rollback DELETE FROM sector WHERE sector_id = 342

SELECT setval('sectors_schema.sector_sector_id_seq', 377, true);

--changeset lilia:addSector-sector-378
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Sweets & snack food');
--rollback DELETE FROM sector WHERE sector_id = 378

SELECT setval('sectors_schema.sector_sector_id_seq', 384, true);

--changeset lilia:addSector-sector-385
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Bedroom');
--rollback DELETE FROM sector WHERE sector_id = 385

SELECT setval('sectors_schema.sector_sector_id_seq', 388, true);

--changeset lilia:addSector-sector-389
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Bathroom/sauna');
--rollback DELETE FROM sector WHERE sector_id = 389

--changeset lilia:addSector-sector-390
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Children’s room');
--rollback DELETE FROM sector WHERE sector_id = 390

SELECT setval('sectors_schema.sector_sector_id_seq', 391, true);

--changeset lilia:addSector-sector-392
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Office');
--rollback DELETE FROM sector WHERE sector_id = 392

SELECT setval('sectors_schema.sector_sector_id_seq', 393, true);

--changeset lilia:addSector-sector-394
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Other (Furniture)');
--rollback DELETE FROM sector WHERE sector_id = 394

SELECT setval('sectors_schema.sector_sector_id_seq', 436, true);

--changeset lilia:addSector-sector-437
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Other');
--rollback DELETE FROM sector WHERE sector_id = 437

SELECT setval('sectors_schema.sector_sector_id_seq', 507, true);

--changeset lilia:addSector-sector-508
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Other');
--rollback DELETE FROM sector WHERE sector_id = 508

SELECT setval('sectors_schema.sector_sector_id_seq', 541, true);

--changeset lilia:addSector-sector-542
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Metal works');
--rollback DELETE FROM sector WHERE sector_id = 542

SELECT setval('sectors_schema.sector_sector_id_seq', 555, true);

--changeset lilia:addSector-sector-556
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Plastic goods');
--rollback DELETE FROM sector WHERE sector_id = 556

SELECT setval('sectors_schema.sector_sector_id_seq', 558, true);

--changeset lilia:addSector-sector-559
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Plastic processing technology');
--rollback DELETE FROM sector WHERE sector_id = 559

--changeset lilia:addSector-sector-560
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Plastic profiles');
--rollback DELETE FROM sector WHERE sector_id = 560

SELECT setval('sectors_schema.sector_sector_id_seq', 575, true);

--changeset lilia:addSector-sector-576
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Programming, Consultancy');
--rollback DELETE FROM sector WHERE sector_id = 576

SELECT setval('sectors_schema.sector_sector_id_seq', 580, true);

--changeset lilia:addSector-sector-581
INSERT INTO sectors_schema.sector (sector_name) VALUES ('Data processing, Web portals, E-marketing');
--rollback DELETE FROM sector WHERE sector_id = 581
