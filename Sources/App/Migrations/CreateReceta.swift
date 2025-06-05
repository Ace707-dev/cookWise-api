import Fluent

struct CreateReceta: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("recetas")
            .id()
            .field("nombre", .string, .required)
            .field("descripcion", .string, .required)
            .field("pasos", .string, .required)
            .field("tiempoDePreparacion", .int, .required)
            .field("dificultad", .string, .required)
            .create()
    }

    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("recetas").delete()
    }
}