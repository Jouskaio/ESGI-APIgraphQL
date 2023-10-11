-- Table: "SIZE"
    INSERT INTO "SIZE" (size_name)
    SELECT DISTINCT size_name
    FROM (
             VALUES
                 (36),
                 (36),
                 (37),
                 (37),
                 (38),
                 (38),
                 (39),
                 (40),
                 (40),
                 (41),
                 (42),
                 (42),
                 (43),
                 (44),
                 (44),
                 (45),
                 (45),
                 (46),
                 (47)
         ) AS temp(size_name)
    WHERE size_name NOT IN (SELECT size_name FROM "SIZE");

-- Table: "LOCATION"
INSERT INTO "LOCATION" (location_name)
SELECT DISTINCT location_name
FROM (
         VALUES
             ('Foot Locker'),
             ('Courir'),
             ('JD'),
             ('Zalando'),
             ('Asos'),
             ('Nine West'),
             ('Kith'),
             ('BSTN'),
             ('AboutYou'),
             ('OffSpring'),
             ('Onygo'),
             ('Sns'),
             ('Starcow'),
             ('Supreme'),
             ('SVD'),
             ('Foot Patrol'),
             ('Size'),
             ('Special Milano'),
             ('Stussy'),
             ('SlamJam'),
             ('Naked'),
             ('Marché'),
             ('Local'),
             ('Retailer')
     ) AS temp(location_name)
WHERE location_name NOT IN (SELECT location_name FROM "LOCATION");

-- Table: "COLOR"
INSERT INTO "COLOR" (color_name)
SELECT DISTINCT color_name
FROM (
         VALUES
             ('Rouge'),
             ('Bleu'),
             ('Vert'),
             ('Jaune'),
             ('Rose'),
             ('Orange'),
             ('Violet'),
             ('Marron'),
             ('Noir'),
             ('Blanc'),
             ('Gris'),
             ('Turquoise'),
             ('Cyan'),
             ('Magenta'),
             ('Or'),
             ('Argent'),
             ('Indigo'),
             ('Emeraude'),
             ('Saumon'),
             ('Lavande')
     ) AS temp(color_name)
WHERE color_name NOT IN (SELECT color_name FROM "COLOR");

-- Table: "BRAND"
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Telfar');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Rick Owens');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Balenciaga');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Alexander McQueen');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Converse');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Timberland');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('OFF-WHITE');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('MSCHF');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Crocs');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Mihara Yasuhiro');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('New Balance');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Reebok');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('adidas');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Prada');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Nike');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Notwoways');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('UGG');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Clarks');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Jordan');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Saucony');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Saint Laurent');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Fear of God');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Bottega Veneta');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Anta');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('BAPE');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('ASICS');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('730 Footwear');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Palm Angels');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Puma');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('On');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Skechers');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Salomon');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Golden Goose');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Polo Ralph Lauren');
    INSERT INTO "BRAND" (brand_name)
    VALUES ('Vans');


-- Table: "MODEL"
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 3 Retro J Balvin Rio', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 5 Retro Lucky Green (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 4 Retro Bred Reimagined', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro Low OG Trophy Room', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 6 Retro Yellow Ochre', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 6 Retro Yellow Ochre (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 6 Retro Yellow Ochre (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 6 Retro Yellow Ochre (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro High OG Metallic Gold (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 3 Retro Midnight Navy (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 3 Retro Midnight Navy (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 3 Retro Midnight Navy', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 3 Retro Midnight Navy (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 14 Retro Bred', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike KD 3 Retro Christmas (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Kobe 6 Protro Reverse Grinch', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 2 Retro Low Christmas (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 2 Retro Low Christmas', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 13 Retro Wheat (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Jordan Air Ship PE SP Military Brown', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Jordan Air Ship PE SP Bold Berry (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Jordan Air Ship PE SP Baroque Brown', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 11 Retro DMP Defining Moments (2023) (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 11 Retro Crib Bootie DMP Defining Moments (2023) (I)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 11 Retro DMP Defining Moments (2023) (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 11 Retro DMP Defining Moments (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 11 Retro DMP Defining Moments (2023) (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 3 Retro Off Noir', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 4 Retro SE Craft Medium Olive', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 8 Retro SP SoleFly Diamond Turf', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Crazy 1 Mint (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Book 1 Chapter One', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Mac Attack QS SP Travis Scott', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Diffused Taupe (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max Plus Patta FC Barcelona', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike SB Dunk Low TIGHTBOOTH', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low Supreme Baroque Brown', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk High Premium Sesame (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Lyte III OG Cream Bisque', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 6 Retro Gore-Tex Brown Kelp (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 6 Retro Gore-Tex Brown Kelp (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 8 Retro Winterized Gunsmoke', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Humara Polar Blue Buff Gold', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 3 Retro Fear Pack (2023) (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 3 Retro Fear Pack (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 3 Retro Fear Pack (2023) (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 3 Retro Fear Pack (2023) (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 2 Retro Italy (PS', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 2 Retro Italy (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 2 Retro Italy (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 2 Retro Italy', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike SB Dunk Low April Skateboards', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Crazy 1 Black (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 11 Retro Neapolitan (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Calm Mule Rugged Orange (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 5 Retro Georgetown', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 SC Light Bone Violet Dust', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk High Dusted Clay (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro High OG Royal Reimagined', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 White University Gold', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 2 Retro Mauve (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low LX Barbie (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Track Red (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low SE Just Skate University Blue (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low PRM Halloween (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Ja 1 Halloween', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 12 Retro Cherry (2023) (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 12 Retro Cherry (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 12 Retro Cherry (2023) (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 12 Retro Cherry (2023) (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Halloween I Am Fearless (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Humara Buff Gold', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low 85 Neutral Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro Low OG Chris Paul', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan Luka 2 Trick Shot', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low Gore-Tex Hangul Day (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Vintage Panda (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air More Uptempo 96 Black White (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike SB Dunk High Sweet Tooth', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike KD 3 Aunt Pearl', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 White University Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro High OG Mauve', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike LeBron 21 Purple Rain', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro High Element Gore-Tex Sky J Purple', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro Low OG University Red', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro Low Golf Travis Scott Neutral Olive', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS GT-2160 Above The Clouds', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Terminator Low Medium Ash Gum', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 White Black Medium Olive', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Terminator Low University Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Footscape Woven Black Smoke Grey (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 High Zoom Air CMFT 2 Light Iron Ore (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 6 Retro Aqua', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 6 Retro Aqua (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 6 Retro Aqua (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 6 Retro Aqua (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike ACG Moc Premium Russet', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('A Bathing Ape Skull Sta Coca Cola', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'BAPE'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Rivalry Low The Simpsons Itchy', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Rivalry High The Simpsons Scratchy', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Pro Model 80s The Simpsons Poochie', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Suede Vintage Perks and Mini', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Plexus Perks and Mini', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma TRC Blaze Court MCM Acid Lime', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air More Uptempo Low AMBUSH Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air More Uptempo Low AMBUSH Lilac', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma LaMelo Ball MB.03 LaFrancé FOREVER.RARE', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike P-6000 Hangul Day', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Ja 1 Black Smoke Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Crazy IIInfinity Triple Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Crazy 8 Off White Sesame', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 650 JUNYA WATANABE MAN Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 990v6 MiUSA Navy White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma RS-XL LaMelo Ball LaFrancé FOREVER.RARE', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 650 JUNYA WATANABE MAN Black White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Slipstream Lo LaMelo Ball LaFrancé FOREVER.RARE', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 998 MiUSA Concepts C-Note 10th Anniversary (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 991v2 MiUK Stone Island Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Vans Rowley XLT Dime', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Vans'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 White Black Neutral Grey (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro High OG Satin Bred (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 High MM Coconut Milk', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro High OG Satin Bred (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro High OG Satin Bred (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas NMD High Moncler Core Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas NMD Runner Moncler Core Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('MSCHF Gobstomper Off-Lemon Edition', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'MSCHF'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Campus Moncler Core Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Campus Moncler Core White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Campus Moncler Royal Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas NMD Mid Moncler Royal Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Campus Moncler Olive Night', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas NMD Runner Moncler Royal Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Campus Moncler Solar Red', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Campus Moncler Solar Yellow', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas NMD Runner Moncler Olive Strata', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas NMD Mid Moncler Core White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas NMD Runner Moncler Core White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas NMD Mid Moncler Core Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Smoke Grey Gum 3M Swoosh', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 Urawa (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Converse TURBOWPN Mid Rick Owens DRKSHDW Pelican', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Converse'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan Luka 2 Black Bright Crimson', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Wild Low Wheat Gold (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Wild Low Black Velvet Brown (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 90 Anthracite Mystic Red', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 990v4 MiUSA Black Silver', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 97 SE Cargo Khaki Rugged Orange', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 90 Sesame Earth', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 90 Industrial Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Huarache Blue Joy Pink', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air VaporMax 2023 Flyknit Light Ultramarine', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 13 Retro Purple Venom (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 13 Retro Purple Venom (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Dame Certified 2.0 White Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 13 Retro Purple Venom (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Dame Certified 2.0 Lucid Lemon', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Athletic Department Deep Jungle', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Red Panda', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Mid SE Night Stadium', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Campus 00s Korn', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Gazelle Bold Wonder Beige Collegiate Orange (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Zoom Vomero 5 Sail Laser Orange Medium Olive (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Gazelle Bold Silver Green Gum (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Mid SE Night Stadium (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Forum Low Kansas', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Yellow Gingham (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 270 Light Bone Diffused Blue (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air More Uptempo 96 Baroque Brown', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Supermodified Korn', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Forum Low Arizona State', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Forum Low Indiana', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike SB React Leo Baker White Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low 07 Athletic Department Light Orewood Brown', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Superstar Hello Kitty Flowers (Kids)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Gazelle Bold Wild Pink (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 95 Ultra Grey Photo Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Gazelle Shadow Navy Gum', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Campus 00s Cordura Collegiate Burgundy', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Forum Low Louisville', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Harden Vol. 7 Wonder Blue Impact Orange', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Suede Pumpkin Pie', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Dame Certified 2.0 Better Scarlet Orange', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 8 Retro Playoffs (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 8 Retro Playoffs (2023) (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 8 Retro Playoffs (2023) (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 8 Retro Playoffs (2023) (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Quantum 360 VII Pace The Brismo', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 size? Exclusive Considered', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-NYC Bodega After-Hours', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 550 Suede Arctic Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma LaMelo Ball MB.01 Breast Cancer Awareness', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 550 Suede Nori', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 550 Suede Mushroom', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 550 Suede Slate Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 SC Noise Aqua', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike SB Dunk Low Born X Raised One Block At A Time', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike LeBron 21 Akoya', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 9060 The Whitaker Group Missing Pieces Silver Moss Green', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 9060 The Whitaker Group Missing Pieces Daydream Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 86 OG Golf NRG Ryder/Solheim Cup USA (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Salomon ACS Pro Jah Jah Kankourang', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Salomon'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Campus 80s Cali Thornhill Dewitt Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Campus 80s Cali Thornhill Dewitt Navy', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 86 OG Golf NRG Ryder/Solheim Cup EU (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Campus 80s Cali Thornhill Dewitt Burgundy', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 990v6 MiUSA Teddy Santis Grey Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 Familia', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Zoom Pegasus 40 Familia', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Jordan Air Ship PE SP Forget-me-nots From Bud To Flower (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low Bred Toe 2', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('MSCHF x Reebok Pump Omni Zone IX', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'MSCHF'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('MSCHF x Reebok Pump Omni Zone IX “Sunbleached”', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'MSCHF'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Full Force Low White Black Pewter', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Full Force Low White Black Polar', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low Bred Toe 2.0 (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Mid Purple Venom (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Footscape Woven Cow Print (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low SE Vintage Panda (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Adizero Adios Pro Evo 1 White Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low Sky J Orange', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Metcon 9 University Red', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan Jumpman Team 1 Black White (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan Jumpman Team 1 White University Blue (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Pegasus 89 Summit White Industrial Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Pegasus 89 Phantom Cargo Khaki Orange', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Cortez White Campfire Orange', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 11 CMFT Low White Varsity Red', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air VaporMax 2023 Flyknit Anthracite', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike ZoomX Ultrafly White Safety Orange Vivid Grape', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 95 Black Anthracite Pure Platinum', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Zoom Victory Tour 3 NRG Ryder/Solheim Cup EU (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Zoom Victory Tour 3 NRG Ryder/Solheim Cup USA (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('UGG x Telfar Logo Mini Denim', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'UGG'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 1700 Kith Toronto Rococco Red', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 1700 Kith Toronto Marshmallow', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike P-6000 Flat Pewter', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike KD 16 Ember Glow', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike P-6000 Premium Triple Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Mid Black Royal Metallic', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Flight 89 Brigade Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Classic Clog NERF Blaster Dart (Kids)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Campus 00s Wonder Clay (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 Pale Ivory Football Grey (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Rivalry Low Extra Butter White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Rivalry Low Extra Butter Navy', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 11 CMFT Low Bred (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Classic Clog NERF Blaster Dart', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low 07 Fireberry (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Elevate High SE Black Gum (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 38 WNBA Center Star', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Duckboot Black Neutral Olive', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 3 Retro SP J Balvin Medellín Sunset', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike SB Dunk Low Albino & Preto', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 2 Retro Black Cement', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-1130 Cream Kale', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 3 Retro SP J Balvin Medellín Sunset (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-NYC Cream Kale', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 11 Retro Low IE Craft Black White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 3 Retro SP J Balvin Medellín Sunset (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 2 Retro Black Cement (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 2 Retro Black Cement (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Calm Bright Mandarin', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 2 Retro Black Cement (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Adimatic Mid Maite Steenhoudt', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low LX Purple Ink (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Cosmic Unity 3 A ja Wilson (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 6 Retro Low Golf NRG Eastside Golf 1961', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low 07 LX Grain Deep Royal Blue (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 2002R Gore-Tex Concrete', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 2002R Gore-Tex Eclipse', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max Plus A-COLD-WALL Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Converse Chuck Taylor All-Star 70 Hi Golf Wang Flame Paprika', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Converse'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 2002R Protection Pack Sandstone', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 2002R Protection Pack Eclipse', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 2002R Protection Pack High Desert', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 2002R Protection Pack Dark Moss', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Pollex Slide by Salehe Bembury Huckle', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max Plus A-COLD-WALL Platinum Tint', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Classic All-Terrain Clog Levis Sashiko Light Wash', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Classic All-Terrain Clog Levis Sashiko Dark Wash', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Kayano Legacy GmbH White Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan Jumpman Pro White Varsity Red', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 991 MiUK Contemporary Luxe (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Cosmic Unity 3 Black Summit White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Classic Clog Levis Tie-Dye', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Ultra Boost Spikeless Golf Grey Court Green', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan Jumpman Pro Black Field Purple', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Twist Dark Obsidian (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Skechers x Doja Cat: Doja Lite Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Skechers'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Skechers x Doja Cat: Doja Lite White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Skechers'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Kayano Legacy GmbH Cilantro Wood Crepe', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 574 MiUK Contemporary Luxe', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 991 MiUK Contemporary Luxe', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas MC87 4D Gold Cloud White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low Alternate Royal Toe', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 6 Retro Low PSG (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 550 Sea Salt Nori (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Zoom Pegasus 40 Chicago Marathon', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 550 Sea Salt Tobacco (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Zoom LeBron 4 Graffiti (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Zoom LeBron NXXT Gen Lakers', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air More Uptempo Slide University Red', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low 07 Black White Sole (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Mid SE Craft Anthracite Light Olive', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Clarks Originals Wallabee Boot Billionaire Boys Club Diamonds & Dollars Dark Green', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Clarks'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Timberland 78 Hiker Boot Nina Chanel Abney', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Timberland'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Clarks Originals Wallabee Boot Billionaire Boys Club Diamonds & Dollars Off White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Clarks'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Timberland 6 Inch Boot Nina Chanel Abney', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Timberland'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Clarks Originals Wallabee Boot Billionaire Boys Club Diamonds & Dollars Orange', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Clarks'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Floral Tapestry (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max Plus A-COLD-WALL House Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max Plus Violet Dust High Voltage (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance Numeric 480 Andrew Reynolds Chocolate', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan Stadium 90 White Game Royal', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Lyte V Sand Retro Trail', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan Stadium 90 Black Anthracite', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Lyte V Concrete Retro Trail', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 97 Next Nature Floral Tapestry (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike React Pegasus Trail 4 Gore-Tex Black Light Magenta (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low QS Terror Squad Blackout', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low SE Craft Light Olive', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Echo Storm Tundra', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Crazy 8 Team Orange', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low 07 White Honeydew', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Huarache Light Iron Ore Flat Pewter', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Blazer Mid 77 Vintage White Amber Brown', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Echo Storm Black Ice', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Blazer Mid Pro Club Phantom Neutral Olive', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Blazer Mid Pro Club Black Bronzine', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Huarache Swoosh! Black Light Smoke Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low QS Terror Squad Loyalty', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Kayano Legacy Pure Silver', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 86 OG Big Bubble Korea World Make', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Avanti C Rihanna Fenty Aged Silver (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Ultra Flyknit Low Patriots Robert Kraft (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Avanti VL Rihanna Fenty Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Avanti VL Rihanna Fenty Black (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Samba OG Core Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Zoom GT Hustle 2 White Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Avanti VL Rihanna Fenty Black (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Avanti C Rihanna Fenty Aged Silver (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Giannis Immortality 3 Triple Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Avanti VL Rihanna Fenty Black (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Avanti C Rihanna Fenty Aged Silver (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Zoom GT Hustle 2 Talaria', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Cortez Premium World Make Mexico (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Kayano Legacy White Black Red Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 550 Interstellar Deep Ocean', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 550 White Pink Sand (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS EX89 Needles White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS EX89 Needles Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Avanti C Rihanna Fenty Aged Silver', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Samba OG Olive Strata Gum', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Samba OG Halo Blush', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan Luka 2 Lake Bled', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Mac Attack SQ SP White Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Classic Clog JJJJound Slate Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Classic Clog JJJJound White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Zoom Freak 5 Greece x Nigeria', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('notwoways KOYRI Exuberance', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Notwoways'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('MSCHF Super Normal 2 Mars Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'MSCHF'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Classic Clog DreamWorks Shrek', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro High OG Praline (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro High OG Praline (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Classic Clog DreamWorks Shrek (Kids)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro High OG Praline (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Classic Clog DreamWorks Shrek (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Salomon X-Alpages Gore-Tex The Broken Arm', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Salomon'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 4 Retro Cacao Wow (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low SE Cacao Wow (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 4 Retro Cacao Wow (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 4 Retro Cacao Wow (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Mid Cacao Wow (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike ISPA Link Axis White Total Orange Sonic Yellow', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Mid SE Cacao Wow (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Mid SE Cacao Wow (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Rick Owens DRKSHDW Mega Bumper Sneaks Pentagram Black Pearl Milk', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Rick Owens'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Campus 00s Clear Pink (Kids)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Rick Owens DRKSHDW Vintage Sneaks Black Milk', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Rick Owens'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan MVP PSG', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 4 Retro Red Cement', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 4 Retro Red Cement (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 86 Big Bubble Obsidian', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike LeBron 20 Premium Mimi Plange Ceremony', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 4 Retro Red Cement (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 4 Retro Red Cement (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro AJKO Laney', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 2 Retro Soft Pink (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Kayano 14 Simply Taupe Oatmeal', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 650R Joe Freshgoods Stuntman', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Maison Mihara Yasuhiro Hank OG Sole Nylon Puffer Low Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Mihara Yasuhiro'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Maison Mihara Yasuhiro Hank OG Sole Nylon Puffer Low White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Mihara Yasuhiro'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Next Nature Blue Tint (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Mid SP Off-White Sheed', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas LG II SPZL Liam Gallagher Bottle Green', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Jordan Air Ship PE SP Corporate Got Em', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro High Golf Eastside Golf 1961', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Converse DRKSHDW Chuck Taylor All-Star DBL DRKSTAR Hi Rick Owens DRKSTAR Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Converse'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 LX Obsidian Light Orewood Brown (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Converse DRKSHDW Chuck Taylor All-Star DBL DRKSTAR Ox Rick Owens DRKSTAR Natural Ivory', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Converse'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike KD 16 Black Vivid Purple', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Superstar SNS Rotation Pack', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike KD 16 Ready Play', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 High Zoom Air CMFT 2 FIBA', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Harlem SNS Rotation Pack', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low White Hyper Royal', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike KD 3 Retro White Metallic Gold', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 Athletic Department Deep Royal Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 990v6 MiUSA Sulphur Green', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 High Zoom Air CMFT 2 Pine Green Orange Blaze (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Classic Hiker Xscape Clog Aries Desert Grass', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 990v4 MiUSA White Green', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Classic Hiker Xscape Clog Aries Slate Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Kayano 14 Dark Sepia', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Slip Resistant Clog Hedley & Bennett', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS ACTIBREEZE Hybrid Sandal Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 38 FIBA (Clear Sole)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS ACTIBREEZE Hybrid Sandal Concrete Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS ACTIBREEZE Hybrid Sandal Blue Marble Yellow', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan Luka 2 Home Team', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 9060 Washed Burgundy', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS ACTIBREEZE Hybrid Sandal Diva Pink', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 38 PF FIBA (White Sole)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 996 MiUSA Sulphur Forest Green', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Lyte III OG Dark Taupe', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Lyte III OG Mineral Beige Simply Taupe', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Anta Shock Wave 5 Kyrie Irving First Year', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Anta'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('MSCHF Super Normal 2 Kid Cudi Insano', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'MSCHF'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Rivalry 86 Low White Black Semi Impact Orange', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Anta Shock Wave 5 Pro Kyrie Irving Finals', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Anta'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas X Crazyfast Messi LC.1 FG Las Estrellas', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan Tatum 1 Pure Money', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Anta Shock Wave 5 Pro Kyrie Irving Black Knight', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Anta'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 Red Stardust Guava Ice (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan MVP Cardinal Red', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Vans Classic Slip-On VLT LX Lux Duct Tape Checkerboard', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Vans'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Vans Vault Half Cab EF LX Duct Tape Marshmallow', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Vans'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Vans Vault Half Cab EF LX Duct Tape Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Vans'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro High OG Palomino', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro High OG Palomino (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Vomero 5 Mystic Red (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 550 White Winter Fog Navy', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Zoom Freak 5 Oreo', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Samba ADV Orchard Skateshop New England Revolution', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('UGG Tasman Weather Hybrid Slipper Chestnut Whitecap', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'UGG'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('UGG Tasman Weather Hybrid Slipper Forest Night', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'UGG'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Saucony Shadow 6000 Beige Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Saucony'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Star Tennis Whites', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Converse Weapon Undefeated Chive', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Converse'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('UGG Tasman Weather Hybrid Slipper Chestnut Orange', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'UGG'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Converse Weapon Undefeated Castle Wall', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Converse'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('UGG Tasman Weather Hybrid Slipper Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'UGG'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('UGG Tazz Slipper Mustard Seed (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'UGG'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('UGG Tasman Slipper Mustard Seed (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'UGG'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('UGG Classic Ultra Mini Platform Boot Mustard Seed (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'UGG'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Sabrina 1 Ionic Photon Dust (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Gazelle Beige Dark Blue Collegiate Burgundy', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 990v6 MiUSAWTAPS', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Sabrina 1 Spark (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma LaMelo Ball MB.01 Team Blazing Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Harden Vol. 7 Cream White Carbon Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike ZoomX Vaporfly 3 Aquatone', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('UGG Tazz Slipper Eve Blue (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'UGG'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low Golf Cool Grey Gamma Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('UGG Tasman Slipper Sand TNL (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'UGG'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('UGG Tasman Slipper Lilac Mauve (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'UGG'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Dame 8 Chelsea Gray Point Gawd', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma LaMelo Ball MB.01 Team Intense Red', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Dame 8 EXTPLY Heavy Hitter', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Handball Spezial Light Blue Wonder Clay (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma LaMelo Ball MB.02 Lo Team Blazing Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Salomon XT-Wings 2 Palace White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Salomon'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma LaMelo Ball MB.03 Slide Electric Peppermint Royal Sapphire', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma LaMelo Ball MB.03 Slide Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma LaMelo Ball MB.03 Slide Black Feather Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Rivalry Low University of Miami', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 Sport Red (2023) (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 550 Dark Green Gold', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Dame 8 EXTPLY Lucid Lemon', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Velophasis Overdye White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Dame 8 EXTPLY Legend Ink Coral Fusion', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('UGG Neumel Boot Mustard Seed (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'UGG'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Classic Clog General Mills Count Chocula', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Classic Clog General Mills Franken Berry', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Classic Clog General Mills Boo Berry', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Gazelle High Silver Green (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Pro Star Noah White Green', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Gazelle Indoor Black Almost Yellow Gum', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma LaMelo Ball MB.03 Slide Green Fluoro Yellow', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Gazelle Indoor Bright Blue Black Gum', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Gazelle Black Silver Metallic (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Adimatic Core Black Off White Gum', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Rivalry Low University of Nebraska', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Gazelle Arctic Fusion Silver Metallic (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('UGG Classic Mini Boot Dark Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'UGG'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma LaMelo Ball MB.02 Lo Team Intense Red', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Gazelle High Maroon Wonder Orchid (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Cosmic Unity 3 Melon Tint', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Rivalry Low Texas A&M', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Rivalry Low Grambling State', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Rivalry Low University of Washington', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Salomon XT-Wings 2 Palace Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Salomon'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Lyte III OG Phantom', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Zoom Freak 5 5 The Hard Way', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('OFF-White Runner B White Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'OFF-WHITE'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike SB Dunk Low Supreme Rammellzee', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike SB Dunk High Supreme Rammellzee', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike ZoomX Vaporfly 3 EK Eliud Kipchoge Paris 5K', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Zoom Alphafly Next% 2 EK Eliud Kipchoge Paris 5K', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low SE Craft Inside Out Cement Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Zoom Fly 5 EK Eliud Kipchoge', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low French Blue College Grey (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Bottega Veneta Orbit Silver Parakeet (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Bottega Veneta'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Bottega Veneta Orbit Silver White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Bottega Veneta'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Bottega Veneta Orbit Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Bottega Veneta'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Vans OG Authentic LX Frayed Jute Starfish', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Vans'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Mid French Blue (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Alpha Force 88 Light Bone Coconut Milk', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Converse All Star BB Trilliant CX Poison Dart Frog', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Converse'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Bottega Veneta Orbit Silver White (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Bottega Veneta'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Bottega Veneta Orbit Silver Parakeet', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Bottega Veneta'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Bottega Veneta Orbit Merlot (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Bottega Veneta'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Next Nature Beige Sail (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Premium Light Orewood Brown', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Yeezy Foam RNR Stone Taupe', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 Sofvi (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Golden Goose Super-Star Dream Forever White Grey Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Golden Goose'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike KD 3 Easy Money (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Superstar XLG Ostrich Cloud White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On Running Cloudsurfer Black Cobalt', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Alexander McQueen Tread Slick Low Lace Up White Multi (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Alexander McQueen'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Alexander McQueen Penny Loafer Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Alexander McQueen'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Golden Goose Running Sole Black Navy Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Golden Goose'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 5 Retro Burgundy (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike SB Dunk Low Yuto Horigome', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Mid SE Craft White Cement Grey Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low SE Light Graphite Vivid Orange', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 5 Retro Burgundy (2023) (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 5 Retro Burgundy (2023) (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 5 Retro Burgundy (2023) (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max Plus Reverse Grape', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Mid SE Craft White Cement Grey Black (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Timberland 3-Eye Classic Lug A-COLD-WALL Navy', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Timberland'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low SE Light Graphite Vivid Orange (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Mid SE Craft White Cement Grey Black (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Cross Trainer 3 Low Hyper Pink Racer Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Timberland 6 Inch Zip Boot A-COLD-WALL Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Timberland'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Yeezy Boost 350 V2 Granite', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 530 Grey Matter Silver Metallic', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 530 White Silver Metallic Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 4 Retro Frozen Moments (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro High OG SP Union LA Bephies Beauty Supply Summer of ‘96', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low SE WRMK Sashiko Denim', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Elevate High SP Union LA Bephies Beauty Supply Summer of ‘96 (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Crazy 1 Ice Blue (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Tech Hera Light Orewood Geode Teal (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Clyde Paris', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Yeezy Slide Granite', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro Low OG Atmosphere Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike SB Dunk Low Orange Emerald Rise', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 2 CB 94 OG Black White Purple (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Gazelle Indoor Blue Dawn Collegiate Burgundy', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Mac Attack SP Social Status Social Currency', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Gazelle Indoor Collegiate Burgundy Arctic Fuchsia', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 610T Amine The Mooz', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 90 EA Sports Play Like Mad', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low Retro QS West Indes (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 38 Fundamentals (Clear Sole)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Blondey Pro Model ADV Blondey McCoy Clear', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Cortez Vivid Sulfur (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Reebok Classic Nylon VeeFriends Aspiring Alpaca', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Reebok'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Vans Vault Knu Skool LX Kalamata', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Vans'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Vans Vault Knu Skool LX White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Vans'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 38 PF Fundamentals (White Sole)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Lyte III OG COSTS Cane Vine', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Salomon XT-4 OG Notre', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Salomon'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Lyte III OG atmos Anna Sui', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low PRM Vintage Navy (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max Plus Marseille', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Terminator Low Georgetown', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 550 thisisneverthat Brown', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk High Airbrush Swoosh White Wolf Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('730 Footwear Muffin Yellow', (SELECT brand_id FROM "BRAND" WHERE brand_name = '730 Footwear'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 550 thisisneverthat Green', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Salomon Cross Pro Better Ranra Cathay Spice', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Salomon'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 550 thisisneverthat Lavender', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Salomon Cross Pro Better Ranra Turmeric', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Salomon'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('730 Footwear Muffin Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = '730 Footwear'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Kobe 8 Protro Halo', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike SB Dunk Low Mystic Red Rosewood', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike SB Dunk Low Pro ISO Orange Label Court Purple', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Kobe 8 Protro Halo (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 Bronze', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro AJKO Low Bred', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Kobe 8 Protro Halo (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas T-Mac 3 Restomod Auburndale', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Fear Of God The California 2.0 Coral', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Fear of God'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike SB Zoom Blazer Mid Premium Deconstructed Midnight Navy', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Fear Of God The California 2.0 Cream', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Fear of God'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Fear Of God The California 2.0 Taupe', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Fear of God'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Fear Of God The California 2.0 Mint', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Fear of God'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Light Silver Corduroy (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Zoom Vomero 5 Coral Chalk Hot Punch (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('MSCHF AC2 Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'MSCHF'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low 07 LX NBHD Sequoia', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Humara Oil Green Malachite', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Yeezy Boost 350 V2 MX Dark Salt', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Rod Laver Kith Classics White Royal', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Torsion Edberg Comp Kith Classics White Royal', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas IL Comp Kith Classics White Royal', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low QS Terror Squad Loyalty (Special Box)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low QS Terror Squad Blackout (Special Box)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Copa Premiere Austin FC No-Comply', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Campus Supreme Sole atmos Black White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Yeezy Slide Slate Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Stan Smith The Simpsons Homer Simpson', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 1906R GANNI Egret', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Quantum Kinetic Dark Sepia Shamrock', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Response CL Bad Bunny Boston Day', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 991 MiUK Sequoia (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Quantum Kinetic Carbon Pure Gold', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Reebok Question Mid Black and Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Reebok'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Pollex Clog by Salehe Bembury Como', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Classic Clog Lightning McQueen (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Yeezy 950 Pirate Black (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Classic Clog Lightning McQueen (Kids)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low SE Just Skate Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Pollex Clog by Salehe Bembury Yucca (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike ZoomX Ultrafly Trail Prototype Pale Ivory Total Orange', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Salomon XT-6 END Dark Truffle', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Salomon'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Yeezy QNTM Hi-Res Orange', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike ZoomX Ultrafly Trail Prototype Pale Ivory Total Orange (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance WRPD Runner Sea Salt Sandstone Blacktop', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 1906R GANNI Blazing Yellow', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Harden Vol. 7 Flash Aqua', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Crazy 8 Black White (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Yeezy 450 Stone Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Adilette 22 Slides Wonder Silver', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Adilette 22 Slides Preloved Brown', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas adiFOM Superstar Boot Core Black (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max Plus Black Grey Laser Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Adilette 22 Wonder Clay', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas adiFOM Superstar Boot Silver Green (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Yeezy 500 High Tactical Boot Utility Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Classic Lined Clog Star Wars Chewbacca', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On Running Cloud 5 Undyed White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk High Retro SE Split Baltic Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Telfar Jelly Slide Melissa Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Telfar'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('notwoways FOAMS White Orange', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Notwoways'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Telfar Jelly Slide Melissa Brown', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Telfar'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('OFF-WHITE Meteor Rubber Slide Beige', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'OFF-WHITE'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Rick Owens DRKSHDW Low Sneaks Dust Milk', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Rick Owens'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Rick Owens DRKSHDW Low Sneaks Eyelet Black Milk', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Rick Owens'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Clyde Rhuigi Pristine', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Polar Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 12 Retro Field Purple', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Cracked Orange (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 9060 Nori', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 PRM Volt', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 12 Retro Field Purple (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Mystic Red Cargo Khaki', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 12 Retro Field Purple (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 90 Photon Dust Light Iron Ore', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike KD 16 NY vs. NY', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Samba Pharrell Humanrace White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Foamposite One QS Dream a World', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 12 Retro Field Purple (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Samba Pharrell Humanrace Charcoal', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Ja 1 SE Bright Mandarin (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike SB Janoski+ Lilac Medium Soft Pink', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Zoom Freak 5 Emerging Powers (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Clyde Gore-Tex nanamica Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike LeBron 20 SE Night Maroon (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Clyde Gore-Tex nanamica White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Samba Pharrell Humanrace Terracotta', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Slipstream Lo Black Forest Kuckuck', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Yeezy Slide Slate Marine', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Michigan State Satin (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Industrial Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Yeezy Foam RNR Stone Salt', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Ja 1 Light Smoke Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma LaMelo Ball MB.02 Oreo', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Mid Sneaker School NC to Chicago (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Industrial Blue (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Industrial Blue (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-NYC Oatmeal Forest Green Orange', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS EX89 Asphaltgold Impromptu', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Mid Sneaker School NC to Chi (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Industrial Blue (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Mellow Recovery Clog Palace Bone', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Mellow Recovery Clog Palace Celery', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Saucony Grid Shadow 2 Colour Plus Companie', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Saucony'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Mid Sneaker School NC to Chi (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma LaMelo Ball MB.02 Oreo (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma LaMelo Ball MB.02 Oreo (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low LV8 50th Anniversary of Hip-Hop: Bronx Origins (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low 50th Anniversary of Hip-Hop: Bronx Origins', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-NYC Cream Oatmeal', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Mid 07 Clear Jade', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-NYC Midnight Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Samba OG White Halo Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Zoom GT Cut 2 Hyper Pink', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Yeezy Knit RNR Fade Onyx', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 Deep Royal Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Flight Huarache Lakers Away', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Ja 1 PE Wet Cement', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 Pale Ivory Sanddrift (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Houston Comets Four-Peat (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan Tatum 1 Denim', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Samba OG Cloud White Core Black (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 2 Retro Low Varsity Royal (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Kayano 14 Glacier Grey Lilac (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Twist Vivid Sulfur (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 9060 Eclipse', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Zoom GT Cut 2 Hyper Pink (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Kayano 14 Aritzia Blanc De Blanc', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Kayano 14 Aritzia White Leprechaun', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Converse Chuck Taylor All-Star 70 Ox A-COLD-WALL Pavement', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Converse'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Mid SE Black Vivid Orange (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 2 Retro Low Sky J Orange (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Kayano 14 Aritzia White Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas BYW Select Jalen Green', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Kayano 14 White Peach Cream (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Samba OG Silver Green (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('MSCHF x Crocs Big Red Boot (Yellow)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'MSCHF'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Samba OG Maroon', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Retro PRM Sequoia', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan Why Not Zer0.6 Childhood', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Golden Goose Super-Star Glitter Cream Silver (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Golden Goose'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Pink Corduroy (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low SNKRS Day Korea Magpie (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Alpha Force 88 SP Billie Eilish White Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max Penny 1 Lester Middle School', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Mid SE Brown Elephant (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Zoom Vomero 5 Pink Foam Team Red (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Alpha Force 88 SP Billie Eilish Fire Red White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-2160 Oyster Grey Carbon', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max Plus Sail Pure Platinum Silver', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-2160 Oatmeal Simply Taupe', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Cortez SNKRS Day Korea (2023) (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 991v1 MiUK Sequoia Falcon', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Yeezy Foam RNR Carbon', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Yeezy 500 Bone White (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Samba Golf Kith White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Samba Golf Kith White Tint', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Saucony Spot-Bilt Sonic Low Premium Beige Green', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Saucony'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max CB 94 Airbrushed Light Iron Ore', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike SB Dunk Low Crenshaw Skate Club', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 13 Retro Wolf Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Retro Gorge Green Deep Royal Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 13 Retro Wolf Grey (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike SB Dunk Low Crenshaw Skate Club (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('A Bathing Ape Bape Sta Low #4 Beige Sky Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'BAPE'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Maison Mihara Yasuhiro Hank OG Sole Vegan Leather Low White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Mihara Yasuhiro'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Maison Mihara Yasuhiro Blakey OG Sole Vegan Leather Low White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Mihara Yasuhiro'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 13 Retro Wolf Grey (2023) (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Palermo OG Silver Sky Cayenne Pepper', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Palermo OG Light Mint Orchid', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 13 Retro Wolf Grey (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Blondey Pro Model ADV Blondey McCoy Night Indigo', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Plexus Vinyl Anonymous Club Warm White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike SB Dunk Low Crenshaw Skate Club (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro Low OG Black Toe (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Yeezy 350 V2 CMPCT Slate Onyx', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air More Uptempo Low AMBUSH Vivid Sulfur Limestone', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro Low OG Black Toe (2023) (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Yeezy QNTM Mist Slate', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Cortez Nylon Black White (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Rick Owens Luxor Geobasket Black Milk', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Rick Owens'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance CT302 Storm Reid', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Rick Owens Geobasket Forest Milk', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Rick Owens'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Rick Owens Luxor Jumbo Lace Padded Sneaks Black Milk (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Rick Owens'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Rick Owens Geobasket Milk (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Rick Owens'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low 07 UV Reactive Patchwork White Multicolor Yellow (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Reebok Question Mid Packer Shoes Burgundy', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Reebok'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Metcon 9 AMP Phantom Black (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Metcon 9 AMP Phantom Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Puma Stewie 2 Water (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Puma'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 991v1 MiUK Elm Brown Rice', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Rick Owens Geobasket Milk Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Rick Owens'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Rick Owens Luxor Low Sneaks Black Milk', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Rick Owens'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Rick Owens Geobasket Milk Black (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Rick Owens'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Rick Owens Jumbo Lace Padded Sneaks Black Milk', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Rick Owens'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Yeezy 450 Slide Cream', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 5 Retro Low Dongdan', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 90 White Game Royal Photon Dust', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Jordan Air Ship PE SP A Ma Maniére White Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 990v3 MiUSA size? Exclusive Orange Cream', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan Luka 2 Matador', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low SE Scalloped Edge Guava Ice (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Trae Young 3 Arctic Night Acid Orange', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Twist Jade Ice (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Metcon 9 Light Smoke Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low Alt SE Cacao Wow Twine (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Vans OG Old Skool LX Vintage White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Vans'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low Alt SE Scalloped Edge Guava Ice (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Trae Young 3 Core Black Carbon White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Metcon 9 Black Anthracite', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Metcon 9 Pink Oxford (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Metcon 9 White Light Silver Bright Madarin', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Metcon 9 White Racer Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Trae Young 3 Arctic Night Acid Orange (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Metcon 9 Olive Luminous Green', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Metcon 9 Black Geode Teal', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Golden Goose Bio-Based Stardan White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Golden Goose'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Polo Ralph Lauren P-Wing Boot Fortnite', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Polo Ralph Lauren'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Zoom Alphafly Next% 2 White Clear Jade', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike ACG Air Moc Black Anthracite', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Bottega Veneta Tire Ankle Chelsea Boot Black Vapor', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Bottega Veneta'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike ISPA Universal Midnight Navy', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Black Bright Mandarin Mini Swoosh (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike ACG Moc Rugged Orange', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Zoom Alphafly Next% 2 White Clear Jade (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Bottega Veneta Tire Chelsea Boot Black Gloss (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Bottega Veneta'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Prada Brushed Leather Sneakers Bike Fabric Suede Garnet Peony Pink', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Prada'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Vomero 5 Supersonic Light Bone Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low Black University Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Onitsuka Tiger Mexico 66 Birch Peacoat', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air VaporMax 2023 Flyknit Sanddrift', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Mid University Blue Black (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Harden Vol. 7 Impact Orange', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Onitsuka Tiger Mexico 66 Black White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS GT-2160 White Pure Silver Gold', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Zoom Generation Retro Debut (2023)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Blue Airbrush Canvas (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Converse Chuck Taylor All-Star 70 Hi Ader Error Create Next: The New Is Not New', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Converse'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low University Blue (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air More Uptempo White Rush Fuchsia (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air VaporMax 2023 Flyknit Pure Platinum Anthracite', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Penny 2 Panda', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On CloudStratus 3 Metal Wisteria', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 650R Sea Salt Navy Dawn Glow', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max Plus Spider-Man', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Mid University Blue Black (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low 07 LV8 Rubiks Cube (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low 07 LV8 Rubiks Cube', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Trainer 1 Hyper Violet', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Campus 00s Almost Yellow Core Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Blazer Mid Pro Club Oil Green Medium Olive', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Zoom LeBron NXXT Gen Track Red', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 2 Retro Crystal Mint (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 650R Sea Salt Nightwatch Green', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Flight Huarache Hoop Pack Bordeaux', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Converse Chuck Taylor All-Star 70 Low Ader Error Create Next: The New Is Not New', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Converse'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air VaporMax Plus Pink Blast Clear Jade (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low TD Cleat Shadow 2.0', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On CloudStratus 3 Wash Metal', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On CloudStratus 3 Metal Wisteria (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On CloudStratus 3 Undyed White Sand Orange', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On CloudStratus 3 Black Frost (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On CloudStratus 3 Wash Nimbus (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On CloudStratus 3 Black Frost', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Classic Clog Harry Potter The Dark Arts', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance Fresh Foam X 1080v12 Blue Bottle Coffee', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance Fresh Foam X 1080v12 Blue Bottle Coffee (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike ZoomX Zegama Trail Mica Green Sequoia (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Saint Laurent Marylin Pump Electric Blue Satin', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Saint Laurent'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Saint Laurent Marylin Pump Purple Satin', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Saint Laurent'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Rick Owens DRKSHDW Mega Bumper Sneaks Black White (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Rick Owens'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Saint Laurent Tribute Platform Sandal Heels Black Patent Leather', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Saint Laurent'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Saint Laurent Blade Slingback Pump Black Crocodile-Embossed Patent Leather', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Saint Laurent'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Saint Laurent Cassandra Sandal Heels Black Patent Leather', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Saint Laurent'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Saint Laurent Le Loafer Penny Slippers Black Leather', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Saint Laurent'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Saint Laurent Gippy Buckled Sandal Heels Black Leather', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Saint Laurent'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Saint Laurent LE Loafer Penny Slippers Pearl', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Saint Laurent'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Saint Laurent Cassandra Sandal Heels Black Leather', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Saint Laurent'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Saint Laurent Tribute Platform Sandal Heels Black Leather', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Saint Laurent'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Kayano 14 Bright Lime Midnight (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 3 Retro Palomino', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Campus Light Bad Bunny Chalky Brown', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Black Total Orange Mini Swoosh', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 3 Retro Palomino (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low SP What The CLOT', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 3 Retro Palomino (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 3 Retro Palomino (TD)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air More Uptempo Industrial Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low 07 White (Travis Scott Cactus Jack Utopia Edition) (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air More Uptempo Industrial Blue (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Echo Clog Extra Butter The Jetsons', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Crocs Echo Clog White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Crocs'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low 07 LV8 Athletic Department Sail University Red', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Cortez All Petals United White Green (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Cacao Wow (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low 07 White (Travis Scott Cactus Jack Utopia Edition)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 Athletic Department Light Bone University Gold', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Lyte III 07 Remastered Kith Marvel X-Men Mystery Sealed Box (Trading Card Included)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low Retro QS Color of the Month White Forest Green', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max Plus Light Photography', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low LX Light Orewood Brown Rugged Orange (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Zoom GT Jump 2 Modern 365 (Ice Sole)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Lyte III 07 Remastered Kith Marvel X-Men Rogue Opened Box (Trading Card Not Included)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 Rugged Orange (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Lyte III 07 Remastered Kith Marvel X-Men Cyclops Opened Box (Trading Card Not Included)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Lyte III 07 Remastered Kith Marvel X-Men Storm Opened Box (Trading Card Not Included)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Lyte III 07 Remastered Kith Marvel X-Men Gambit Opened Box (Trading Card Not Included)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance FuelCell C_1 Stone Island TDS Tan', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Telfar Jelly Slide Melissa Pink', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Telfar'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Zoom GT Cut 2 Industrial Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Zoom GT Jump 2 EP Modern 365 (Blue Sole)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Lyte III 07 Remastered Kith Marvel X-Men Wolverine 1980 Opened Box (Trading Card Not Included)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Lyte III 07 Remastered Kith Marvel X-Men Beast Opened Box (Trading Card Not Included)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance FuelCell C_1 Stone Island TDS Brown', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Cosmic Unity 3 Jade Ice', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Reebok Question Mid Tobacco', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Reebok'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Zoom GT Jump 2 Alpha Wave', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Forum Bold Crystal White Dark Blue (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 996v2 35th Anniversary Stom Ash', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 996v2 35th Anniversary Vintage Indigo', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('ASICS Gel-Lyte III 07 Remastered Kith Marvel X-Men Wolverine 1975 Opened Box (Trading Card Not Included)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'ASICS'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 95 Track Red Smoke Grey', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low SE Australia (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Twist Panda (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 990v6 MiUSA Cream', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Shox MR4 Mule Martine Rose Safety Orange', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Shox MR4 Mule Martine Rose Scuba Blue', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan Luka 2 Nebula', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 90 Obsidian Track Red', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Terminator Low NY vs. NY', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 990v4 MiUSA Limestone', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 87 Fuchsia Dream (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 90 SE Australia (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Vans Style 93 DX Barbie', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Vans'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Force 1 Low 07 LX Amber Brown Phantom', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Cortez Nylon Midnight Navy White (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 90 Leather Obsidian Track Red (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Mid University Blue Black (PS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 95 Recraft Dark Obsidian Track Red (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Torsion Super END. Equals Navy', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 95 Recraft Photon Dust Picante Red (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Palm Angels Logo Slide Beige White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Palm Angels'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Palm Angels Logo Slide White Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Palm Angels'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 996 MiUSA Pink Haze', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Vans Authentic Stackform Barbie', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Vans'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Torsion Super END. Equals Cream', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Zoom GT Cut 2 Arike Ogunbowale', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Vans Slide-On VR3Cush Barbie (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Vans'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Vans Sk8-Hi Tapered Stackform Barbie', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Vans'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Prada Collision Cross Sneaker Black Apple Green', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Prada'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Balenciaga Speed 2.0 Graffiti Red White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Balenciaga'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Gazelle Bold Magic Beige Collegiate Green (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 9060 Moonbeam Sea Salt', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Dunk Low Airbrush Swoosh Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('adidas Crazy IIInfinity Chalk', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'adidas'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan Legacy 312 Low White Game Royal University Red', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Retro Low OG NC to Chi (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low SE Philippines', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 9060 Black Sea Salt', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('New Balance 9060 Castlerock', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'New Balance'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Jordan 1 Low SE Emerald Rise (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Jordan'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On Running Cloudmonster Undyed White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On Running Cloud X 3 Shift Undyed White Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On Running Cloud 5 Push Ivory Creek', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On Running Cloudnova Undyed White Mint', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On Running Cloudnova Void Eclipse Undyed White', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On Running Cloud 5 Nimbus Alloy', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On Running Cloud 5 Undyed White Creek (Womens)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On Running Cloud 5 Waterproof Cobalt Glacier', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On Running Cloudswift 3 Alloy Glacier', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On Running Cloudswift 3 White Frost', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On Running Cloudswift 3 All Black', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Nike Air Max 1 Clear Jade (GS)', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Nike'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On Running Cloudnova Flux Undyed White Zephyr', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('On Running Cloudnova Undyed White Heather', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'On'));
INSERT INTO "MODEL" (model_name, brand_id)
VALUES ('Salomon XT-4 OG Dekmantel Michael Willis Amsterdam Forest', (SELECT brand_id FROM "BRAND" WHERE brand_name = 'Salomon'));
