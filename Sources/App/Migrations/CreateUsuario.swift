import Fluent

struct CreateUsuario: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("usuarios")
            .id()
            .field("usuario", .string, .required)
            .field("email", .string, .required)
            .field("passwordHash", .string, .required)
            .create()
    }

    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("usuarios").delete()
    }
}