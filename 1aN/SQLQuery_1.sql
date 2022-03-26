/*
/ RELACION 1/N 
// Una casa pertenece a un barrio y un barrio tiene muchas casas.
// TABLA 1 BARRIOS    

    // IDBARRIO(PK)   NOMBRE   LOCALIDAD   PROVINCIA


// TABLA 2 CASAS 
    // LOTE(pk)     CALLE   NUM    IDBARRIO(FK)   APELLIDODUEÑO

    */

    -- Create a new table called '[BARRIOS]' in schema '[dbo]'
    -- Drop the table if it already exists
    IF OBJECT_ID('[dbo].[BARRIOS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BARRIOS]
    GO
    -- Create the table in the specified schema
    CREATE TABLE [dbo].[BARRIOS]
    (
        [IdBarrio] INT NOT NULL, -- Primary Key column
        [NOMBRE] VARCHAR(50) NOT NULL,
        [LOCALIDAD] VARCHAR(50) NOT NULL,
        [PROVINCIA] VARCHAR(50) NOT NULL
    
        -- Specify more columns here
    );
    GO

    -- Create a new table called '[CASAS]' in schema '[dbo]'
    -- Drop the table if it already exists
    IF OBJECT_ID('[dbo].[CASAS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CASAS]
    GO
    -- Create the table in the specified schema
    CREATE TABLE [dbo].[CASAS]
    (
        [LOTE] INT NOT NULL, -- Primary Key column
        [CALLE] VARCHAR(50) NOT NULL,
        [NUMERO] INT NOT NULL,
        [IdBarrio] INT NOT NULL,
        [APELLIDODUEÑO] VARCHAR(50) NOT NULL

        -- Specify more columns here
    );
    GO

    ALTER TABLE BARRIOS
    ADD CONSTRAINT pk_idBarrios PRIMARY KEY(IdBarrio)
    GO

    ALTER TABLE CASAS
    ADD CONSTRAINT pk_lote PRIMARY KEY(LOTE)
    GO
    ALTER TABLE CASAS
    ADD CONSTRAINT chk_num CHECK (NUMERO<0)
    GO
    ALTER TABLE CASAS
    ADD CONSTRAINT chk_mayor CHECK (LOTE<0)
    GO
    ALTER TABLE CASAS
    ADD CONSTRAINT fk_idBarrio FOREIGN KEY (IdBarrio)
    REFERENCES BARRIOS(IdBarrio)
    GO