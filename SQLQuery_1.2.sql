// RELACION 1/1
// La relacion entre dos tablas
// El auto solo puede tener un unico numero de chasis y este numero de chasis puede pertenecer a un solo auto.
// TABLA 1 AUTOS -> pk PATENTE se relaciona 1 a 1 con
    // PATENTE     MARCA   MODELO

// TABLA 2 AUTOPARTES -> pk PATENTE 
    // PATENTE    NRODECHASIS     NROMOTOR


// RELACION 1/N 
// Una casa pertenece a un barrio y un barrio tiene muchas casas.
// TABLA 1 BARRIOS    

    // IDBARRIO(PK)   NOMBRE   LOCALIDAD   PROVINCIA


// TABLA 2 CASAS 
    // LOTE(pk)     CALLE   NUM    IDBARRIO(FK)   APELLIDODUEÑO


// RELACION N/N
// El usuario utiliza 1 o mas aplicaciones y una aplicacion es usada por varias personas.

// TABLA 1 aplicaciones
    // 

