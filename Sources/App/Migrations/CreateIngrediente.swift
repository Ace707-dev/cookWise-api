import Fluent

struct CreateIngrediente: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("ingredientes")
            .id()
            .field("nombre", .string, .required)
            .field("categoria", .string, .required)
            .unique(on: "nombre")
            .create()
    }

    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("ingredientes").delete()
    }
}
