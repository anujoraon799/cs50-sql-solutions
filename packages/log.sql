
-- *** The Lost Letter ***
SELECT *
FROM addresses
WHERE address = '900 Somerville Avenue';

-- Anneke's address ID is 432

-- Search for Varsha's address
SELECT *
FROM addresses
WHERE address LIKE '%2 Finn%';

-- Varsha's address ID is 854
SELECT *
FROM addresses
WHERE address = '2 Finnigan Street';
-- Find the package sent from Anneke to Varsha
SELECT *
FROM packages
WHERE from_address_id = 432
AND to_address_id = 854;

-- Found package 384
-- Contents: Congratulatory letter
-- View all scans for package 384
SELECT *
FROM scans
WHERE package_id = 384;
--Package 384 was picked up from 432 and dropped at 854

-- *** The Devious Delivery ***
-- Find packages with no sender address
SELECT *
FROM packages
WHERE from_address_id IS NULL;

-- Found package 5098
-- Contents: Duck debugger
-- Track package 5098
SELECT *
FROM scans
WHERE package_id = 5098;

-- Find the final destination address
SELECT address, type
FROM addresses
WHERE id = 348;

-- Package ended at 7 Humboldt Place
-- Address type: Police Station

-- *** The Forgotten Gift ***
-- Find sender address ID
SELECT *
FROM addresses
WHERE address = '109 Tileston Street';
-- Sender address ID is 9873

-- Find recipient address ID
SELECT *
FROM addresses
WHERE address = '728 Maple Place';
-- Find the package sent from 109 Tileston Street to 728 Maple Place
SELECT *
FROM packages
WHERE from_address_id = 9873
AND to_address_id = 4983;

-- Found package 9523
-- Contents: Flowers

-- Track package 9523
SELECT *
FROM scans
WHERE package_id = 9523;

-- Last scan shows driver 17 picked up the package
-- No later drop scan exists

-- Find driver 17's name
SELECT name
FROM drivers
WHERE id = 17;

-- Driver 17 is Mikel
