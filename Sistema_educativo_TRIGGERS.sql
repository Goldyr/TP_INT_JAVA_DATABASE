-- TRIGGER DE ESTADO DE NOTAS ------------------------

-- AFTER INSERT ----------------------------------------------------------------

DELIMITER $$
	CREATE TRIGGER tr_estadoCursadaNotas_INSERT
		BEFORE INSERT ON notas 
        FOR EACH ROW
	BEGIN
		CASE
        WHEN (NEW.Recuperatorio_1_Nota IS NULL OR NEW.Recuperatorio_1_Nota = 0) AND (NEW.Recuperatorio_2_Nota IS NULL OR NEW.Recuperatorio_2_Nota = 0) THEN
			IF ( ((NEW.Parcial_1_Nota + NEW.Parcial_2_Nota)/2.00) > 6.00) THEN
				SET NEW.EstadoCursada_Nota = 'REGULAR';
			ELSE 
				SET NEW.EstadoCursada_Nota = 'LIBRE';
            END IF;
		WHEN (NEW.Recuperatorio_1_Nota IS NOT NULL OR NEW.Recuperatorio_1_Nota != 0) THEN
			IF ( ((NEW.Recuperatorio_1_Nota + NEW.Parcial_2_Nota)/2.00) > 6.00 ) THEN
            	SET NEW.EstadoCursada_Nota = 'REGULAR';
			ELSE 
				SET NEW.EstadoCursada_Nota = 'LIBRE';
            END IF;
		WHEN (NEW.Recuperatorio_2_Nota IS NOT NULL OR NEW.Recuperatorio_2_Nota != 0) THEN
			IF ( ((NEW.Recuperatorio_2_Nota + NEW.Parcial_1_Nota)/2.00) > 6.00 ) THEN
            	SET NEW.EstadoCursada_Nota = 'REGULAR';
			ELSE 
				SET NEW.EstadoCursada_Nota = 'LIBRE';
            END IF;
		END CASE;
	END$$
DELIMITER ;

-- BEFORE UPDATE -----------------------------------------------------------------------

DELIMITER $$
	CREATE TRIGGER tr_estadoCursadaNotas_UPDATE
		BEFORE UPDATE ON notas 
        FOR EACH ROW
	BEGIN
		CASE
        WHEN (NEW.Recuperatorio_1_Nota IS NULL OR NEW.Recuperatorio_1_Nota = 0) AND (NEW.Recuperatorio_2_Nota IS NULL OR NEW.Recuperatorio_2_Nota = 0) THEN
			IF ( ((NEW.Parcial_1_Nota + NEW.Parcial_2_Nota)/2.00) > 6.00) THEN
				SET NEW.EstadoCursada_Nota = 'REGULAR';
			ELSE 
				SET NEW.EstadoCursada_Nota = 'LIBRE';
            END IF;
		WHEN (NEW.Recuperatorio_1_Nota IS NOT NULL OR NEW.Recuperatorio_1_Nota != 0) THEN
			IF ( ((NEW.Recuperatorio_1_Nota + NEW.Parcial_2_Nota)/2.00) > 6.00 ) THEN
            	SET NEW.EstadoCursada_Nota = 'REGULAR';
			ELSE 
				SET NEW.EstadoCursada_Nota = 'LIBRE';
            END IF;
		WHEN (NEW.Recuperatorio_2_Nota IS NOT NULL OR NEW.Recuperatorio_2_Nota != 0) THEN
			IF ( ((NEW.Recuperatorio_2_Nota + NEW.Parcial_1_Nota)/2.00) > 6.00 ) THEN
            	SET NEW.EstadoCursada_Nota = 'REGULAR';
			ELSE 
				SET NEW.EstadoCursada_Nota = 'LIBRE';
            END IF;
		END CASE;
	END$$
DELIMITER ;
