------------------------------------------------------------
--        Script Postgre
------------------------------------------------------------



------------------------------------------------------------
-- Table: USER
------------------------------------------------------------
CREATE TABLE public.USER(
	user_id         SERIAL NOT NULL ,
	user_username   VARCHAR (100) NOT NULL ,
	user_password   VARCHAR (200) NOT NULL  ,
	CONSTRAINT USER_PK PRIMARY KEY (user_id)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: LOCPURCHASE
------------------------------------------------------------
CREATE TABLE public.LOCPURCHASE(
	locpurchase_id     SERIAL NOT NULL ,
	locpurchase_name   VARCHAR (2000)  NOT NULL  ,
	CONSTRAINT LOCPURCHASE_PK PRIMARY KEY (locpurchase_id)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: LOCSOLD
------------------------------------------------------------
CREATE TABLE public.LOCSOLD(
	locsold_id      SERIAL NOT NULL ,
	locpsold_name   VARCHAR (2000)  NOT NULL  ,
	CONSTRAINT LOCSOLD_PK PRIMARY KEY (locsold_id)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: BRAND
------------------------------------------------------------
CREATE TABLE public.BRAND(
	brand_id     SERIAL NOT NULL ,
	brand_name   VARCHAR (300) NOT NULL  ,
	CONSTRAINT BRAND_PK PRIMARY KEY (brand_id)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: MODEL
------------------------------------------------------------
CREATE TABLE public.MODEL(
	model_id     SERIAL NOT NULL ,
	model_name   VARCHAR (300) NOT NULL ,
	brand_id     INT  NOT NULL  ,
	CONSTRAINT MODEL_PK PRIMARY KEY (model_id)

	,CONSTRAINT MODEL_BRAND_FK FOREIGN KEY (brand_id) REFERENCES public.BRAND(brand_id)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: SIZE
------------------------------------------------------------
CREATE TABLE public.SIZE(
	size_id     SERIAL NOT NULL ,
	size_name   FLOAT  NOT NULL  ,
	CONSTRAINT SIZE_PK PRIMARY KEY (size_id)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: SHOE
------------------------------------------------------------
CREATE TABLE public.SHOE(
	shoe_id               SERIAL NOT NULL ,
	shoe_price_purchase   FLOAT  NOT NULL ,
	shoe_price_sold       FLOAT  NOT NULL ,
	shoe_date_sold        DATE  NOT NULL ,
	shoe_date_purchase    DATE  NOT NULL ,
	shoe_code             VARCHAR (200) NOT NULL ,
	size_id               INT  NOT NULL  ,
	CONSTRAINT SHOE_PK PRIMARY KEY (shoe_id)

	,CONSTRAINT SHOE_SIZE_FK FOREIGN KEY (size_id) REFERENCES public.SIZE(size_id)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: COLOR
------------------------------------------------------------
CREATE TABLE public.COLOR(
	color_id     SERIAL NOT NULL ,
	color_name   VARCHAR (300) NOT NULL  ,
	CONSTRAINT COLOR_PK PRIMARY KEY (color_id)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: loge
------------------------------------------------------------
CREATE TABLE public.loge(
	shoe_id      INT  NOT NULL ,
	locsold_id   INT  NOT NULL  ,
	CONSTRAINT loge_PK PRIMARY KEY (shoe_id,locsold_id)

	,CONSTRAINT loge_SHOE_FK FOREIGN KEY (shoe_id) REFERENCES public.SHOE(shoe_id)
	,CONSTRAINT loge_LOCSOLD0_FK FOREIGN KEY (locsold_id) REFERENCES public.LOCSOLD(locsold_id)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: est
------------------------------------------------------------
CREATE TABLE public.est(
	shoe_id          INT  NOT NULL ,
	locpurchase_id   INT  NOT NULL  ,
	CONSTRAINT est_PK PRIMARY KEY (shoe_id,locpurchase_id)

	,CONSTRAINT est_SHOE_FK FOREIGN KEY (shoe_id) REFERENCES public.SHOE(shoe_id)
	,CONSTRAINT est_LOCPURCHASE0_FK FOREIGN KEY (locpurchase_id) REFERENCES public.LOCPURCHASE(locpurchase_id)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: contient
------------------------------------------------------------
CREATE TABLE public.contient(
	model_id   INT  NOT NULL ,
	size_id    INT  NOT NULL  ,
	CONSTRAINT contient_PK PRIMARY KEY (model_id,size_id)

	,CONSTRAINT contient_MODEL_FK FOREIGN KEY (model_id) REFERENCES public.MODEL(model_id)
	,CONSTRAINT contient_SIZE0_FK FOREIGN KEY (size_id) REFERENCES public.SIZE(size_id)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: fourni
------------------------------------------------------------
CREATE TABLE public.fourni(
	shoe_id    INT  NOT NULL ,
	color_id   INT  NOT NULL  ,
	CONSTRAINT fourni_PK PRIMARY KEY (shoe_id,color_id)

	,CONSTRAINT fourni_SHOE_FK FOREIGN KEY (shoe_id) REFERENCES public.SHOE(shoe_id)
	,CONSTRAINT fourni_COLOR0_FK FOREIGN KEY (color_id) REFERENCES public.COLOR(color_id)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: possede
------------------------------------------------------------
CREATE TABLE public.possede(
	model_id   INT  NOT NULL ,
	color_id   INT  NOT NULL  ,
	CONSTRAINT possede_PK PRIMARY KEY (model_id,color_id)

	,CONSTRAINT possede_MODEL_FK FOREIGN KEY (model_id) REFERENCES public.MODEL(model_id)
	,CONSTRAINT possede_COLOR0_FK FOREIGN KEY (color_id) REFERENCES public.COLOR(color_id)
)WITHOUT OIDS;



