import Vapor
import Fluent
import FluentMySQLDriver

public func configure(_ app: Application) throws {
    app.databases.use(.mysql(
        hostname: Environment.get("DB_HOST") ?? "localhost",
        username: Environment.get("DB_USER") ?? "root",
        password: Environment.get("DB_PASSWORD") ?? "",
        database: Environment.get("DB_NAME") ?? "cookwise"
    ), as: .mysql)

    app.migrations.add(CreateUsuario())
    app.migrations.add(CreateReceta())
    app.migrations.add(CreateIngrediente())

    try routes(app)
}
