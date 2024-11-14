--Consultas de insert--
INSERT INTO Taxi (Id, Placa) VALUES (1, 'ABC123'), (2, 'XYZ789');

INSERT INTO Viaje (Id, FechaInicio, FechaFin, Desde, Hasta, Calificacion)
VALUES 
    (1, '2024-01-01 08:00:00', '2024-01-01 08:30:00', 'Punto A', 'Punto B', 5),
    (2, '2024-01-02 10:00:00', '2024-01-02 10:45:00', 'Punto C', 'Punto D', 4);

INSERT INTO DetalleVIaje (Id, Fecha, Latitud, Longitud, TripId)
VALUES 
    (1, '2024-01-01 08:10:00', 12.345678, -76.123456, 1),
    (2, '2024-01-01 08:20:00', 12.346789, -76.124567, 1),
    (3, '2024-01-02 10:15:00', 12.347890, -76.125678, 2);

INSERT INTO Usuario (Id, Documento, Nombre, Apellido)
VALUES 
    (1, '123456789', 'Juan', 'Pérez'),
    (2, '987654321', 'Ana', 'García');

INSERT INTO Rol (Id, Nombre)
VALUES 
    (1, 'Conductor'),
    (2, 'Pasajero');

INSERT INTO UserRole (UserId, RoleId)
VALUES 
    (1, 1),  
    (2, 2);  

INSERT INTO UserGroup (Id, Nombre)
VALUES 
    (1, 'Grupo VIP'),
    (2, 'Grupo Regular');

INSERT INTO GrupoUsuarioDetalle (Id, UserId, GroupId)
VALUES 
    (1, 1, 1),  
    (2, 2, 2); 



--Consultas de UDPATE--

UPDATE Taxi
SET Placa = 'DEF456'
WHERE Id = 1;


UPDATE Viaje
SET Calificacion = 4
WHERE Id = 2;


UPDATE Viaje
SET FechaInicio = '2024-01-03 10:00:00'
WHERE Id = 1;


UPDATE DetalleVIaje
SET Latitud = 12.348901, Longitud = -76.126789
WHERE Id = 2;


UPDATE Usuario
SET Nombre = 'Carlos'
WHERE Id = 1;

--Consultas de DELETE--


DELETE FROM Taxi
WHERE Id = 2;


DELETE FROM DetalleVIaje
WHERE Id = 3;


DELETE FROM Viaje
WHERE Id = 2;
