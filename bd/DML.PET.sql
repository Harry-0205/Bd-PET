-- INSERTS

-- Tipo documento
INSERT INTO TipoDeDocumento (TipoDoc) VALUES 
('CC'),
('TI'),
('CE');
-- Especie
INSERT INTO Especie (especie) VALUES 
("canino"),("felino"),("leporido"),("cricetido"),("Cavidos"),("ave"),("suidae");
-- Razas
INSERT INTO Raza (Raza, IdEspecie) VALUES 
('Labrador Retriever',1),('Golden Retriever',1),('Bulldog Francés',1),('Pastor Alemán',1),('Chihuahua',1),('Beagle',1),('Bulldog Inglés',1),('Poodle',1),('Rottweiler',1),('Dachshund',1)
,('Schnauzer',1),('Boxer',1),('Shih Tzu',1),('Cocker Spaniel',1),('Husky Siberiano',1),('Persa',2),('Maine Coon',2),('Siamés',2),('Bengalí',2),('Ragdoll',2),
('Sphynx',2),('British Shorthair',2),('Abisinio',2),('Burmés',2),('Oriental Shorthair',2),('Savannah',2),('Scottish Fold',2),('Abyssinian',2),('Norwegian Forest',2),
('Turco Van',2),('Holland Lop',3),('Mini Rex',3),('Lionhead',3),('Mini Lop',3),('Netherland Dwarf',3),('Rex',3),('Conejo Californiano',3),('Chinchilla',3),('Flemish Giant',3),
('Hámster Sirio',4),('Hámster Roborovski',4),('Hámster enano ruso',4),('Hámster chino',4),('Hámster europeo',4),('Hámster de orejas cortas',4),('Hámster de la península arábiga',4)
,('American Shorthair',5),('Peruana',5),('Abyssinia',5),('Teddy',5),('Coronet',5),('Himalaya',5),('Silkie',5),('Texel',5),('Crestada',5),('Lunkarya',5),
('Periquito Australiano',6),('Canario',6),('Cotorra Argentina',6),('Loro Gris Africano',6),('Cockatiel',6),('Lovebird',6),('Agapornis',6),('Conuro de Sol',6),('Cacatúa',6),
('Periquito de collar',6),('Mini pig',7),('Puerquito de pot-belly',7),('Puerquito de orejas caídas',7),('Puerquito de pico',7);
-- Color
INSERT INTO color (Color) VALUES 
('Negro'),('Blanco'),('Marrón'),('Gris'),('Dorado'),('Beige'),('Café'),('Crema'),('Azul'),('Tigrado'),('Rojizo');

-- Estado de la cita
INSERT INTO Estado (IdEstado,Realizado, Cancelado) VALUES
(1,TRUE, FALSE),   
(2,FALSE, TRUE);
-- Roles
insert into roles(Nomrol) values
("cliente"),
("empleado");
-- vacunas
INSERT INTO Vacunas (Vacuna, IdEspecie, Costo, Dosis, Duracion) VALUES 
("Vacuna contra el moquillo felino",2, 70000, 2, "1 año"),
("Vacuna contra la rinotraqueítis viral felina",2, 70000, 2, "1 año"),
("Vacuna contra el calicivirus felino",2, 70000, 2, "1 año"),
("Vacuna contra la leucemia felina",2, 80000, 2, "1 año"),
("Vacuna contra la rabia",2, 50000, 1, "1-3 años"),
("Vacuna contra la clamidiosis felina",2, 60000, 2, "1 año"),
("Vacuna contra la peritonitis infecciosa felina",2, 90000, 2, "Anual"),
("Vacuna contra el moquillo canino",1, 80000, 2, "1 año"),
("Vacuna contra el parvovirus canino",1, 70000, 2, "1 año"),
("Vacuna contra la hepatitis infecciosa canina ",1, 75000, 2, "1 año"),
("Vacuna contra la leptospirosis",1, 60000, 2, "1 año"),
("Vacuna contra la rabia",1, 50000, 1, "1-3 años"),
("Vacuna contra la tos de las perreras",1, 40000, 2, "1 año"),
("Vacuna contra el parainfluenza canina",1, 35000, 2, "1 año"),
("Vacuna contra la mixomatosis",3, 80000, 2, "1 año"),
("Vacuna contra la enfermedad hemorrágica viral (VHD) tipo 1",3, 90000, 2, "1 año"),
("Vacuna contra la enfermedad hemorrágica viral (VHD) tipo 2",3, 90000, 2, "1 año");
-- Procedimiento
INSERT INTO Procedimiento (Procedimiento, Costo, Duracion, Anotaciones) VALUES
('Consulta general', 30000, 30, 'Revisión general de salud'),
('Vacunación leptospirosis', 48000, 15, 'Vacuna contra leptospirosis anual'),
('Desparasitación interna', 35000, 20, 'Tratamiento antiparasitario interno'),
('Limpieza dental', 80000, 60, 'Limpieza y pulido dental'),
('Cirugía menor', 150000, 90, 'Procedimiento quirúrgico menor'),
('Consulta dermatológica', 40000, 30, 'Evaluación de problemas de piel'),
('Control de peso', 25000, 20, 'Asesoría para control de peso'),
('Vacunación múltiple', 60000, 20, 'Vacuna combinada para varias enfermedades'),
('Examen de laboratorio', 55000, 45, 'Análisis de sangre y orina'),
('Radiografía', 70000, 40, 'Estudio radiológico'),
('Cirugía mayor', 350000, 180, 'Procedimiento quirúrgico mayor'),
('Consulta oftalmológica', 40000, 30, 'Evaluación de problemas oculares'),
('Consulta nutricional', 30000, 25, 'Asesoría nutricional'),
('Ecografía', 80000, 45, 'Estudio por ultrasonido'),
('Castración hembra', 250000, 120, 'Esterilización quirúrgica de hembras'),
('Castración macho', 200000, 90, 'Esterilización quirúrgica de machos'),
('Consulta cardiológica', 45000, 30, 'Evaluación del sistema cardiovascular'),
('Tratamiento de heridas', 50000, 60, 'Limpieza y sutura de heridas'),
('Control de embarazo', 35000, 30, 'Seguimiento de gestación'),
('Consulta comportamiento', 40000, 30, 'Asesoría en problemas conductuales'),
('Análisis de heces', 30000, 20, 'Examen coprológico'),
('Vacunación contra moquillo', 50000, 15, 'Vacuna específica para moquillo'),
('Terapia física', 60000, 60, 'Rehabilitación física'),
('Consulta geriátrica', 35000, 30, 'Evaluación de mascotas mayores'),
('Consulta endocrinológica', 45000, 30, 'Evaluación hormonal y metabólica');


-- CALLS
-- Usuario dueño de mascota
call pro_usuar(1234567890, 1, 1, 'Luis', 'Gomez',"cano", '3001234567', 8, 'Carrera 45 #67-89', 'luis@correo.com', 'clave123','1990-04-15');
CALL pro_usuar(123456789012, 1, 1, 'Juan', 'Perez', 'Ramirez', '3101234567', 4820, 'Calle 123 #45-67', 'juan.perez@email.com', 'clave923', '1990-01-15');
CALL pro_usuar(234567890123, 2, 2, 'Maria', 'Lopez', 'Quintero', '3209876543', 6242, 'Carrera 12 #34-56', 'maria.lopez@email.com', 'pass456', '1988-03-22');
CALL pro_usuar(345678901234, 1, 1, 'Carlos', 'Rodriguez', 'Mendoza', '3004567890', 2486, 'Avenida 45 #67-89', 'carlos.rodriguez@email.com', 'secreto789', '1992-07-10');
CALL pro_usuar(456789012345, 3, 2, 'Ana', 'Garcia', 'Salazar', '3112345678', 4620, 'Calle 56 #78-90', 'ana.garcia@email.com', 'contrasena1', '1995-11-30');
CALL pro_usuar(567890123456, 1, 1, 'Pedro', 'Hernandez', 'Loaiza', '3123456789', 8044, 'Carrera 78 #90-12', 'pedro.hernandez@email.com', 'pass1234', '1985-05-17');
CALL pro_usuar(678901234567, 2, 2, 'Luisa', 'Ramirez', 'Bermudez', '3134567890', 6822, 'Avenida 90 #12-34', 'luisa.ramirez@email.com', 'clave5678', '1993-09-25');
CALL pro_usuar(789012345678, 1, 1, 'Diego', 'Torres', 'Castro', '3145678901', 4000, 'Calle 12 #34-56', 'diego.torres@email.com', 'secreto901', '1989-12-01');
CALL pro_usuar(890123456789, 3, 2, 'Sofia', 'Castro', 'Galvis', '3156789012', 2224, 'Carrera 34 #56-78', 'sofia.castro@email.com', 'pass2345', '1991-04-14');
CALL pro_usuar(901234567890, 1, 1, 'Andres', 'Moreno', 'Zapata', '3167890123', 8866, 'Avenida 56 #78-90', 'andres.moreno@email.com', 'clave6789', '1987-06-20');
CALL pro_usuar(123456789123, 2, 2, 'Laura', 'Guzman', 'Cardenas', '3178901234', 6332, 'Calle 78 #90-12', 'laura.guzman@email.com', 'contrasena2', '1994-02-28');
CALL pro_usuar(434567891234, 1, 1, 'Felipe', 'Rojas', 'Navarro', '3189012345', 2002, 'Carrera 90 #12-34', 'felipe.rojas@email.com', 'pass3456', '1990-08-12');
CALL pro_usuar(345678912345, 3, 2, 'Camila', 'Vargas', 'Reyes', '3190123456', 7644, 'Avenida 12 #34-56', 'camila.vargas@email.com', 'secreto123', '1996-10-05');
CALL pro_usuar(456789123456, 1, 1, 'Santiago', 'Molina', 'Guerrero', '3201234567', 4886, 'Calle 34 #56-78', 'santiago.molina@email.com', 'clave9012', '1986-03-19');
CALL pro_usuar(567891234567, 2, 2, 'Valeria', 'Ortega', 'Sandoval', '3212345678', 6020, 'Carrera 56 #78-90', 'valeria.ortega@email.com', 'pass4567', '1993-01-07');
CALL pro_usuar(678912345678, 1, 1, 'Mateo', 'Silva', 'Trujillo', '3223456789', 4268, 'Avenida 78 #90-12', 'mateo.silva@email.com', 'contrasena3', '1992-04-23');
CALL pro_usuar(912345678901, 3, 2, 'Isabella', 'Cortes', 'Nieto', '3234567890', 4666, 'Calle 90 #12-34', 'isabella.cortes@email.com', 'secreto456', '1988-11-11');
CALL pro_usuar(891234567890, 1, 1, 'Tomas', 'Aguilar', 'Muñoz', '3245678901', 4322, 'Carrera 12 #34-56', 'tomas.aguilar@email.com', 'pass6789', '1995-07-09');
CALL pro_usuar(91234567890, 2, 2, 'Gabriela', 'Rendon', 'Morales', '3256789012', 8000, 'Avenida 34 #56-78', 'gabriela.rendon@email.com', 'clave3456', '1991-12-15');
CALL pro_usuar(123456789234, 1, 1, 'Julian', 'Cano', 'Gonzalez', '3267890123', 4444, 'Calle 56 #78-90', 'julian.cano@email.com', 'contrasena4', '1989-09-03');
CALL pro_usuar(234567892345, 3, 2, 'Natalia', 'Pena', 'Vargas', '3278901234', 4888, 'Carrera 78 #90-12', 'natalia.pena@email.com', 'pass7890', '1994-05-27');
CALL pro_usuar(474678658929, 3, 2, 'Nataliaa', 'Penaa', 'Vargaas', '32789012345', 48888, 'Carrera 78 #90-12', 'natalia.pena@email.com', 'pass7890', '1994-05-27');

-- Veterinaria
call pro_veteri(1001, 'VetSalud', 'vetsalud@correo.com', 'foto.jpg', 'Calle 123 #45-67');
CALL pro_veteri(1002, 'AnimalCare', 'animalcare@correo.com', 'animalcare.jpg', 'Carrera 12 #34-56');
CALL pro_veteri(1003, 'PetClinic', 'petclinic@correo.com', 'petclinic.jpg', 'Avenida 45 #67-89');
CALL pro_veteri(1004, 'VidaAnimal', 'vidaanimal@correo.com', 'vidaanimal.jpg', 'Calle 78 #90-12');
CALL pro_veteri(1005, 'MundoVet', 'mundovet@correo.com', 'mundovet.jpg', 'Carrera 56 #78-90');
CALL pro_veteri(1006, 'SaludPet', 'saludpet@correo.com', 'saludpet.jpg', 'Avenida 90 #12-34');
CALL pro_veteri(1007, 'ClinicaVet', 'clinicavet@correo.com', 'clinicavet.jpg', 'Calle 12 #34-56');
CALL pro_veteri(1008, 'VetPlus', 'vetplus@correo.com', 'vetplus.jpg', 'Carrera 34 #56-78');
CALL pro_veteri(1009, 'Bienestar Animal', 'bienestaranimal@correo.com', 'bienestaranimal.jpg', 'Calle 56 #78-90');
CALL pro_veteri(1010, 'AmigosVet', 'amigosvet@correo.com', 'amigosvet.jpg', 'Avenida 56 #78-90');

-- Esquema de vacunación
CALL esqvacun(1, '1ml', '2025-06-06');
CALL esqvacun(2, '1ml', '2025-06-06');
CALL esqvacun(3, '1ml', '2025-06-06');
CALL esqvacun(4, '1ml', '2025-06-06');
CALL esqvacun(5, '0.5ml', '2025-06-06');
CALL esqvacun(6, '1ml', '2025-06-06');
CALL esqvacun(7, '1ml', '2025-06-06');
CALL esqvacun(8, '1ml', '2025-06-06');
CALL esqvacun(9, '1ml', '2025-06-06');
CALL esqvacun(10, '1ml', '2025-06-06');
CALL esqvacun(11, '1ml', '2025-06-06');
CALL esqvacun(12, '0.5ml', '2025-06-06');
CALL esqvacun(13, '1ml', '2025-06-06');
CALL esqvacun(14, '1ml', '2025-06-06');
CALL esqvacun(15, '0.8ml', '2025-06-06');
CALL esqvacun(16, '0.8ml', '2025-06-06');
CALL esqvacun(17, '0.8ml', '2025-06-06');
CALL esqvacun(5, '1ml', '2025-06-06');
CALL esqvacun(1, '1ml', '2025-06-06');
CALL esqvacun(2, '1ml', '2025-06-06');
CALL esqvacun(13, '0.5ml', '2025-06-06');
CALL esqvacun(12, '0.5ml', '2025-06-06');
CALL esqvacun(3, '0.8ml', '2025-06-06');
CALL esqvacun(4, '0.8ml', '2025-06-06');
CALL esqvacun(5, '1ml', '2025-06-06');
CALL esqvacun(5, '1ml', '2025-06-06');



-- Mascota del usuario

CALL pro_mascota('Rocky', '2020-03-15', 1, 1, 1, 1234567890, 'rocky.jpg');
CALL pro_mascota('Luna', '2019-07-22', 16, 2, 2, 123456789012, 'luna.jpg');
CALL pro_mascota('Max', '2018-05-10', 4, 3, 3, 234567890123, 'max.jpg');
CALL pro_mascota('Maya', '2021-01-30', 9, 4, 4, 345678901234, 'maya.jpg');
CALL pro_mascota('Toby', '2017-11-05', 11, 5, 5, 456789012345, 'toby.jpg');
CALL pro_mascota('Nala', '2020-06-18', 21, 6, 6, 567890123456, 'nala.jpg');
CALL pro_mascota('Simba', '2019-09-25', 5, 7, 7, 678901234567, 'simba.jpg');
CALL pro_mascota('Coco', '2018-12-10', 30, 8, 8, 789012345678, 'coco.jpg');
CALL pro_mascota('Daisy', '2021-04-14', 41, 9, 9, 890123456789, 'daisy.jpg');
CALL pro_mascota('Loki', '2019-02-28', 56, 10, 10, 901234567890, 'loki.jpg');
CALL pro_mascota('Milo', '2017-08-12', 7, 11, 11, 123456789123, 'milo.jpg');
CALL pro_mascota('Bella', '2020-10-03', 13, 1, 12, 434567891234, 'bella.jpg');
CALL pro_mascota('Oscar', '2019-03-20', 18, 2, 13, 345678912345, 'oscar.jpg');
CALL pro_mascota('Lola', '2018-06-25', 23, 3, 14, 456789123456, 'lola.jpg');
CALL pro_mascota('Simone', '2021-09-15', 28, 4, 15, 567891234567, 'simone.jpg');
CALL pro_mascota('Zoe', '2017-11-11', 35, 5, 16, 678912345678, 'zoe.jpg');
CALL pro_mascota('Tina', '2019-07-30', 40, 6, 17, 912345678901, 'tina.jpg');
CALL pro_mascota('Chloe', '2020-12-01', 45, 7, 1, 891234567890, 'chloe.jpg');
CALL pro_mascota('Rex', '2018-01-09', 50, 8, 2, 91234567890, 'rex.jpg');
CALL pro_mascota('Gizmo', '2019-05-22', 55, 9, 3, 123456789234, 'gizmo.jpg');
CALL pro_mascota('jack', '2019-05-22', 55, 9, 3, 123456789234, 'gizmo.jpg');


-- Cita en agendamiento
call pro_agenda (NOW(), "2025-06-29", 1001, 1, 1, 1);
CALL pro_agenda(NOW(), '2025-06-11', 1002, 2, 2, 2);
CALL pro_agenda(NOW(), '2025-06-12', 1003, 3, 1, 3);
CALL pro_agenda(NOW(), '2025-06-13', 1004, 4, 1, 4);
CALL pro_agenda(NOW(), '2025-06-14', 1005, 5, 2, 5);
CALL pro_agenda(NOW(), '2025-06-15', 1006, 6, 1, 6);
CALL pro_agenda(NOW(), '2025-06-16', 1007, 7, 2, 7);
CALL pro_agenda(NOW(), '2025-06-17', 1008, 8, 1, 8);
CALL pro_agenda(NOW(), '2025-06-18', 1009, 9, 1, 9);
CALL pro_agenda(NOW(), '2025-06-19', 1010, 10, 2, 10);
CALL pro_agenda(NOW(), '2025-06-20', 1001, 11, 1, 11);
CALL pro_agenda(NOW(), '2025-06-21', 1002, 12, 2, 12);
CALL pro_agenda(NOW(), '2025-06-22', 1003, 13, 1, 13);
CALL pro_agenda(NOW(), '2025-06-23', 1004, 14, 2, 14);
CALL pro_agenda(NOW(), '2025-06-24', 1005, 15, 1, 15);
CALL pro_agenda(NOW(), '2025-06-25', 1006, 16, 1, 16);
CALL pro_agenda(NOW(), '2025-06-26', 1007, 17, 2, 17);
CALL pro_agenda(NOW(), '2025-06-27', 1008, 18, 1, 18);
CALL pro_agenda(NOW(), '2025-06-28', 1009, 19, 2, 19);
CALL pro_agenda(NOW(), '2025-06-29', 1008, 20, 1, 20);


-- historia clinica 
CALL pro_his_cli(1, 1, 'Esterilización realizada sin complicaciones. Recuperación postoperatoria estable.');
CALL pro_his_cli(2, 2, 'Vacunación completa para Luna. Sin anomalías.');
CALL pro_his_cli(3, 3, 'Max presenta leve irritación ocular. Tratamiento recetado.');
CALL pro_his_cli(4, 4, 'Maya con buen peso y energía. Control rutinario.');
CALL pro_his_cli(5, 5, 'Toby tuvo cirugía dental. En recuperación.');
CALL pro_his_cli(6, 6, 'Nala fue desparasitada. Sin complicaciones.');
CALL pro_his_cli(7, 7, 'Simba con historial alérgico. Se recomienda seguimiento.');
CALL pro_his_cli(8, 8, 'Coco recibió vacuna antirrábica.');
CALL pro_his_cli(9, 9, 'Daisy fue esterilizada. Evolución positiva.');
CALL pro_his_cli(10, 10, 'Loki atendido por cojera leve. Se recetó reposo.');
CALL pro_his_cli(11, 11, 'Milo con buena condición física. Control al día.');
CALL pro_his_cli(12, 12, 'Bella mostró signos de ansiedad. Se recomendó ejercicio.');
CALL pro_his_cli(13, 13, 'Oscar con otitis. Tratamiento iniciado.');
CALL pro_his_cli(14, 14, 'Lola está en recuperación postquirúrgica.');
CALL pro_his_cli(15, 15, 'Simone vacunada y desparasitada.');
CALL pro_his_cli(16, 16, 'Zoe con problemas digestivos leves.');
CALL pro_his_cli(17, 17, 'Tina presenta dermatitis. En observación.');
CALL pro_his_cli(18, 18, 'Chloe revisada por comportamiento agresivo. Recomendación etológica.');
CALL pro_his_cli(19, 19, 'Rex tuvo control de peso. Se indicó dieta especial.');
CALL pro_his_cli(20, 20, 'Gizmo con revisión dental. Higiene adecuada.');
CALL pro_his_cli(21, 21, 'Jack atendido por lesión en la pata. Vendaje aplicado.');
CALL pro_his_cli(2, 12, 'Jack atendido por lesión en la pata. Vendaje aplicado.');
