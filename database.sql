-- Table: "USER"
CREATE TABLE "USER" (
    user_id       SERIAL NOT NULL,
    user_username VARCHAR(100) NOT NULL,
    user_password VARCHAR(200) NOT NULL,
    PRIMARY KEY (user_id)
);

-- Table: "LOCATION"
CREATE TABLE "LOCATION" (
    location_id   SERIAL NOT NULL,
    location_name VARCHAR(2000) NOT NULL,
    PRIMARY KEY (location_id)
);

-- Table: "BRAND"
CREATE TABLE "BRAND" (
    brand_id   SERIAL NOT NULL,
    brand_name VARCHAR(300) NOT NULL,
    PRIMARY KEY (brand_id)
);

-- Table: "MODEL"
CREATE TABLE "MODEL" (
    model_id   SERIAL NOT NULL,
    model_name VARCHAR(300) NOT NULL,
    brand_id   INT NOT NULL,
    PRIMARY KEY (model_id),
    FOREIGN KEY (brand_id) REFERENCES "BRAND" (brand_id)
);

-- Table: "SIZE"
CREATE TABLE "SIZE" (
    size_id   SERIAL NOT NULL,
    size_name FLOAT NOT NULL,
    PRIMARY KEY (size_id)
);

-- Table: "SHOE"
CREATE TABLE "SHOE" (
    shoe_id             SERIAL NOT NULL,
    shoe_price_purchase FLOAT NOT NULL,
    shoe_price_sold     FLOAT NOT NULL,
    shoe_date_sold      DATE NOT NULL,
    shoe_date_purchase  DATE NOT NULL,
    shoe_code           VARCHAR(200) NOT NULL,
    size_id             INT NOT NULL,
    brand_id            INT NOT NULL,
    model_id            INT NOT NULL,
    shoe_locpurchase    INT NOT NULL, -- Correction de la colonne
    shoe_locsold        INT NOT NULL, -- Correction de la colonne
    PRIMARY KEY (shoe_id),
    FOREIGN KEY (size_id) REFERENCES "SIZE" (size_id),
    FOREIGN KEY (brand_id) REFERENCES "BRAND" (brand_id),
    FOREIGN KEY (model_id) REFERENCES "MODEL" (model_id),
    FOREIGN KEY (shoe_locpurchase) REFERENCES "LOCATION" (location_id),
    FOREIGN KEY (shoe_locsold) REFERENCES "LOCATION" (location_id)
);

-- Table: "COLOR"
CREATE TABLE "COLOR" (
    color_id   SERIAL NOT NULL,
    color_name VARCHAR(300) NOT NULL,
    PRIMARY KEY (color_id)
);
