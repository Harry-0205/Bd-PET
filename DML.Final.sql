USE prueba;

INSERT INTO color (nom_color)
VALUES
('Blanco'),
('Negro'),
('Gris'),
('Marrón'),
('Beige'),
('Dorado'),
('Plateado'),
('Atigrado'),
('Manchado'),
('Bicolor'),
('Tricolor'),
('Azul grisáceo'),
('Crema'),
('Café oscuro'),
('Café claro'),
('Naranja'),
('Amarillo'),
('Verde loro'),
('Rojo ladrillo'),
('Arena');


INSERT INTO especie (nom_especie)
VALUES
('Canino'),
('Felino'),
('Ave'),
('Pez'),
('Roedor'),
('Reptil'),
('Conejo'),
('Caballo');



INSERT INTO procedimiento (costo, duracion, anotaciones, procedimiento)
VALUES
(50000, '00:30:00', 'Incluye revisión general', 'Vacunación antirrábica'),
(70000, '00:45:00', 'Incluye desparasitación interna', 'Vacunación múltiple'),
(30000, '00:20:00', 'Chequeo básico de signos vitales', 'Consulta general'),
(150000, '01:00:00', 'Se entrega certificado médico', 'Cirugía menor'),
(40000, '00:15:00', 'Incluye limpieza básica', 'Corte de uñas'),
(60000, '00:25:00', 'Con productos hipoalergénicos', 'Baño medicado'),
(120000, '02:00:00', 'Uso de anestesia general', 'Esterilización'),
(25000, '00:10:00', 'Extracción de muestra de sangre', 'Examen de laboratorio'),
(80000, '00:50:00', 'Se recomienda ayuno previo', 'Radiografía'),
(90000, '01:20:00', 'Incluye anestesia local', 'Limpieza dental'),
(100000, '01:30:00', 'Se entrega informe clínico', 'Ultrasonido'),
(45000, '00:25:00', 'Peinado y cepillado completo', 'Grooming'),
(200000, '03:00:00', 'Cirugía mayor bajo anestesia', 'Cirugía ortopédica'),
(30000, '00:15:00', 'Incluye limpieza de oído externo', 'Limpieza de oídos'),
(35000, '00:20:00', 'Se entrega fórmula de desparasitante', 'Desparasitación'),
(40000, '00:30:00', 'Evaluación nutricional', 'Consulta nutricional'),
(75000, '01:00:00', 'Incluye certificado de salud', 'Certificado de viaje'),
(28000, '00:10:00', 'Colocación de microchip', 'Implante de microchip'),
(60000, '00:40:00', 'Incluye revisión de piel y pelo', 'Dermatología básica'),
(130000, '02:30:00', 'Procedimiento bajo anestesia', 'Extracción de tumor');


INSERT INTO rol (nom_rol)
VALUES
('Administrador'),
('Cliente'),
('Veterinario');


INSERT INTO tipo_doc (tipo_doc)
VALUES
('Cédula de ciudadanía'),
('Pasaporte'),
('Cédula de extranjería'),
('Licencia de conducción');


INSERT INTO vacunas (costo, id_especie, dosis, vacuna, duracion)
VALUES
(50000, 1, '1 ml', 'Rabia', '1 año'),
(70000, 1, '2 ml', 'Parvo', '1 año'),
(60000, 2, '1 ml', 'Triple Felina', '1 año'),
(55000, 2, '1 ml', 'Leucemia', '1 año'),
(30000, 3, '0.5 ml', 'Influenza Aviar', '6 meses'),
(40000, 3, '1 ml', 'Viruela Aviar', '1 año'),
(25000, 4, '0.3 ml', 'Ictio', '6 meses'),
(30000, 4, '0.5 ml', 'Columnaris', '1 año'),
(20000, 5, '0.2 ml', 'Tifoidea', '6 meses'),
(25000, 5, '0.2 ml', 'Salmonella', '1 año'),
(65000, 6, '0.5 ml', 'Paramixovirus', '1 año'),
(70000, 6, '0.5 ml', 'Herpesvirus reptil', '1 año'),
(35000, 7, '0.5 ml', 'Mixomatosis', '1 año'),
(40000, 7, '0.5 ml', 'Enfermedad vírica hemorrágica', '1 año'),
(80000, 8, '2 ml', 'Influenza Equina', '1 año'),
(90000, 8, '2 ml', 'Tétanos', '1 año');
