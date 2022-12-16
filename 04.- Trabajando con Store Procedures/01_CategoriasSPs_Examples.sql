EXEC spListarCategorias

EXEC spInsertarCategoria @Descripcion = 'ABC123'

EXEC spActualizarCategoria @Descripcion = 'Nueva Categoria', @IdCategoria = 6

EXEC spEliminarCategoria @IdCategoria = 7