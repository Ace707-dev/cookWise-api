import Fluent
import Vapor

final class Ingrediente: Model, Content {
    static let schema = "ingredientes"

    @ID(key: .id)
    var id: UUID?

    @Field(key: "nombre")
    var nombre: String

    @Field(key: "categoria")
    var categoria: String

    init() {}

    init(id: UUID? = nil, nombre: String, categoria: String) {
        self.id = id
        self.nombre = nombre
        self.categoria = categoria
    }
}
