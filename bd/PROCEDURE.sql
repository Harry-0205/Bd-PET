USE `dbpet`;
DROP procedure IF EXISTS `pro_mascota`;

USE `dbpet`;
DROP procedure IF EXISTS `dbpet`.`pro_mascota`;
;

DELIMITER $$
USE `dbpet`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_mascota`(
    IN nomm VARCHAR(30),
    IN fecna timestamp,
    IN idraz INT(10),
    IN idcolo INT(10),
    IN IdEsqu INT(10),
    IN Dueñodo BIGINT(19),
    IN fot VARCHAR(255)
)
BEGIN
    -- Inserción en la tabla mascota
    INSERT INTO mascota(nombre, FecNac,idraza,idcolor, IdEsquema, DocUsuario, foto)
    VALUES (nomm,fecna, idraz,idcolo,IdEsqu, Dueñodo, fot);
END$$

DELIMITER ;
;

USE `dbpet`;
DROP procedure IF EXISTS `pro_his_cli`;

USE `dbpet`;
DROP procedure IF EXISTS `dbpet`.`pro_his_cli`;
;

DELIMITER $$
USE `dbpet`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_his_cli`(
    IN w BIGINT(19),
	in iDProcedimient bigint,
    IN Anotacion varchar(200)
 
)
BEGIN
    -- Inserción en la tabla Procedimiento
    INSERT INTO historiaclinica(idmascota,iDProcedimiento, Anotaciones)
    VALUES (w,iDProcedimient,Anotacion);
END$$

DELIMITER $$


USE `dbpet`;
DROP procedure IF EXISTS `Pro_usuar`;

USE `dbpet`;
DROP procedure IF EXISTS `dbpet`.`Pro_usuar`;
;

DELIMITER $$
USE `dbpet`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Pro_usuar`(
    IN docc BIGINT(19),
    IN tipodo INT(10),
    IN IdRo   INT,
    IN nomm VARCHAR(20),
    IN apel1 VARCHAR(20),
    IN apel2 VARCHAR(20),
    IN tel VARCHAR(20),
    IN contrat int,
    IN dir VARCHAR(50),
    IN corre VARCHAR(100),
    IN contr varbinary (500),
    IN fecna DATE
)
BEGIN
    -- Inserción en la tabla Usuario
    INSERT INTO Usuario(doc, tipodoc,IdRol, nom, ape1, ape2, tel, contrato, dir, correo,Contra, fecnam)
    VALUES (docc, tipodo,IdRo, nomm, apel1,apel2, tel, contrat, dir, corre,aes_encrypt(contr,'1234') , fecna);
END$$

DELIMITER ;
;

USE `dbpet`;
DROP procedure IF EXISTS `pro_veteri`;

USE `dbpet`;
DROP procedure IF EXISTS `dbpet`.`pro_veteri`;
;

DELIMITER $$
USE `dbpet`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_veteri`(
    IN idve BIGINT(19),
    IN nomm CHAR(20),
    IN corre VARCHAR(100),
    IN fot VARCHAR(500),
    IN dire VARCHAR(100)
)
BEGIN
    -- Inserción en la tabla Veterinarias
    INSERT INTO Veterinarias(idvet, nom, correo, foto, direc)
    VALUES (idve, nomm, corre, fot, dire);
END$$

DELIMITER ;
;

USE `dbpet`;
DROP procedure IF EXISTS `esqvacun`;

DELIMITER $$
USE `dbpet`$$
CREATE PROCEDURE `esqvacun` (
in idvacun int,
in Dosi varchar(255),
in fecVac datetime
)
BEGIN
insert into esquemavacunas(idvacuna,Dosis,fecVacu)
values(idvacun,Dosi,fecVac);
END$$

DELIMITER ;

USE `dbpet`;
DROP procedure IF EXISTS `pro_agenda`;

USE `dbpet`;
DROP procedure IF EXISTS `dbpet`.`pro_agenda`;
;

DELIMITER $$
USE `dbpet`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_agenda`(
    IN feca TIMESTAMP,
    IN FecAs datetime,
    IN IdVe BIGINT(19),
    IN IdMascot BIGINT(19),
    IN IdEstad BOOLEAN,
    IN IdProcedimient BIGINT(19)
)
BEGIN
    INSERT INTO agendamiento(fecag, FecAsi, IdVet, IdMascota, IdEstado, IdProcedimiento)
    VALUES (feca, FecAs, IdVe, IdMascot, IdEstad, IdProcedimient);
END$$

DELIMITER ;
;



-- tiggers

DROP TRIGGER IF EXISTS `dbpet`.`historiaclinica_AFTER_INSERT`;

DELIMITER $$
USE `dbpet`$$
CREATE DEFINER=`root`@`localhost` TRIGGER `dbpet`.`historiaclinica_AFTER_INSERT` AFTER INSERT ON `historiaclinica` FOR EACH ROW
BEGIN
insert into procedimiento_historiaclinica (IdProcedimiento,IdHistoria)
values (new.IdProcedimiento,new.IdHistoria);

END$$
DELIMITER ;

DROP TRIGGER IF EXISTS `dbpet`.`usuario_AFTER_INSERT`;

DELIMITER $$
USE `dbpet`$$
CREATE DEFINER=`root`@`localhost` TRIGGER `dbpet`.`usuario_AFTER_INSERT` AFTER INSERT ON `usuario` FOR EACH ROW
BEGIN
insert into usuario_roles(DocUsuario,IdRol)
values(new.Doc,new.IdRol);
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS `dbpet`.`esquemavacunas_AFTER_INSERT`;

DELIMITER $$
USE `dbpet`$$
CREATE DEFINER=`root`@`localhost` TRIGGER `dbpet`.`esquemavacunas_AFTER_INSERT` AFTER INSERT ON `esquemavacunas` FOR EACH ROW
BEGIN
insert into vacunas_esquemavacunas(IdVacuna,IdEsquema)
values(new.IdVacuna,new.IdEsquema);
END$$
DELIMITER ;


-- Funcion
DELIMITER $$

CREATE FUNCTION CalcularEdadMascotaEnAnios(
    p_IdMascota BIGINT
)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE v_FechaNacimiento TIMESTAMP;
    DECLARE v_EdadAnios INT;

    -- Obtener la fecha de nacimiento de la mascota
    SELECT FecNac INTO v_FechaNacimiento
    FROM Mascota
    WHERE IdMascota = p_IdMascota;

    -- Calcular la edad en años si la fecha de nacimiento no es nula
    IF v_FechaNacimiento IS NOT NULL THEN
        SET v_EdadAnios = TIMESTAMPDIFF(YEAR, v_FechaNacimiento, CURDATE());
    ELSE
        SET v_EdadAnios = NULL; -- O puedes devolver -1 o algún otro valor para indicar que no se encontró la mascota o su fecha de nacimiento
    END IF;

    RETURN v_EdadAnios;
END$$

DELIMITER ;


DELIMITER $$

CREATE FUNCTION CalcularCostoProcedimientoPorPeso(
    p_IdProcedimiento BIGINT,
    p_PesoMascotaKg DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE v_CostoBase INT;
    DECLARE v_CostoCalculado DECIMAL(10,2);
    DECLARE v_CostoPorKg DECIMAL(10,2) DEFAULT 5000.00;


    SELECT Costo INTO v_CostoBase
    FROM Procedimiento
    WHERE IdProcedimiento = p_IdProcedimiento;


    IF v_CostoBase IS NOT NULL THEN
        SET v_CostoCalculado = v_CostoBase + (p_PesoMascotaKg * v_CostoPorKg);
    ELSE
        SET v_CostoCalculado = NULL; 
    END IF;

    RETURN v_CostoCalculado;
END$$

DELIMITER ;

-- vistas

CREATE VIEW VistaPerrosVacunados AS
SELECT
    m.Nombre AS 'Nombre Mascota',
    v.Vacuna AS 'Nombre Vacuna',
    esq.fecVacu AS 'Fecha de Vacunación'
FROM
    Mascota AS m
JOIN
    EsquemaVacunas AS esq ON m.IdEsquema = esq.IdEsquema
JOIN
    Vacunas AS v ON esq.IdVacuna = v.IdVacuna
WHERE
    v.IdEspecie = (SELECT IdEspecie FROM Especie WHERE Especie = 'canino');
    
    
    CREATE VIEW VistaUsuariosCC AS
SELECT
    u.Doc AS 'Documento',
    u.Nom AS 'Nombre',
    u.Ape1 AS 'Primer Apellido',
    u.Ape2 AS 'Segundo Apellido',
    td.TipoDoc AS 'Tipo de Documento',
    u.Correo AS 'Correo Electrónico'
FROM
    Usuario AS u
JOIN
    TipoDeDocumento AS td ON u.TipoDoc = td.IdTipo
WHERE
    td.TipoDoc = 'CC';
    
    
    CREATE VIEW VistaGeneralPerros AS
SELECT
    m.Nombre AS 'Nombre Mascota',
    m.FecNac AS 'Fecha de Nacimiento',
    r.Raza AS 'Raza',
    c.Color AS 'Color',
    u.Nom AS 'Nombre Dueño',
    u.Ape1 AS 'Apellido Dueño'
FROM
    Mascota AS m
JOIN
    Raza AS r ON m.IdRaza = r.IdRaza
JOIN
    Color AS c ON m.IdColor = c.IdColor
JOIN
    Usuario AS u ON m.DocUsuario = u.Doc
WHERE
    r.IdEspecie = (SELECT IdEspecie FROM Especie WHERE Especie = 'canino');



