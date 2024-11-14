CREATE Database TaxiAPP;
go

CREATE TABLE Taxi (
    Id INT PRIMARY KEY,
    Placa VARCHAR(20) NOT NULL
);


CREATE TABLE Viaje (
    Id INT PRIMARY KEY,
    FechaInicio DATETIME NOT NULL,
    FechaFin DATETIME,
    Desde VARCHAR(255),
    Hasta VARCHAR(255),
    Calificacion INT
);


CREATE TABLE DetalleVIaje (
    Id INT PRIMARY KEY,
    Fecha DATETIME NOT NULL,
    Latitud DECIMAL(9, 6),
    Longitud DECIMAL(9, 6),
    TripId INT,
    FOREIGN KEY (ViajeId) REFERENCES Viaje(Id)
);


CREATE TABLE Usuario (
    Id INT PRIMARY KEY,
    Documento VARCHAR(20) UNIQUE NOT NULL,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL
);


CREATE TABLE Rol (
    Id INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL
);


CREATE TABLE UserRole (
    UserId INT,
    RoleId INT,
    PRIMARY KEY (UserId, RoleId),
    FOREIGN KEY (UserId) REFERENCES Usuario(Id),
    FOREIGN KEY (RoleId) REFERENCES Rol(Id)
);


CREATE TABLE GrupoUsuario (
    Id INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL
);


CREATE TABLE GrupoUsuarioDetalle (
    Id INT PRIMARY KEY,
    UserId INT,
    GroupId INT,
    FOREIGN KEY (UsuarioId) REFERENCES Usuario(Id),
    FOREIGN KEY (GrupoUsuarioId) REFERENCES GrupoUsuario(Id)
);


CREATE TABLE UserGroupRequests (
    Id INT PRIMARY KEY,
    UserId INT,
    GroupId INT,
    FechaSolicitud DATETIME NOT NULL,
    FOREIGN KEY (UsuarioId) REFERENCES Usuario(Id),
    FOREIGN KEY (GrupoUsuarioId) REFERENCES GrupoUsuario(Id)
);


