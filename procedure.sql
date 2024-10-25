DELIMITER $$

CREATE PROCEDURE AumentarSalario(
    IN dep_id INT,
    IN porcentaje DECIMAL(5,2)
)
BEGIN
    UPDATE empleados
    SET salario = salario + (salario * (porcentaje / 100))
    WHERE departamento_id = dep_id;
END $$

DELIMITER ;