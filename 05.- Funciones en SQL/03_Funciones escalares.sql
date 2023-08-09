CREATE FUNCTION TotalVentaEntreFechas
(
	-- Add the parameters for the function here
	@fechaInicio DATE,
	@fechaFin DATE
)
RETURNS DECIMAL(18,2)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result DECIMAL(18,2)

	-- Add the T-SQL statements to compute the return value here
	SET @Result = (SELECT SUM(Total) FROM Venta
					WHERE Fecha BETWEEN @fechaInicio AND @fechaFin)

	-- Return the result of the function
	RETURN @Result

END
GO

SELECT * FROM Venta

SELECT dbo.TotalVentaEntreFechas('2022-01-01','2023-12-31') as total