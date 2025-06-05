import Fluent
import Vapor

final class Usuario: Model, Content {
    static let schema = "usuarios"

    @ID(key: .id)
    var id: UUID?

    @Field(key: "usuario")
    var usuario: String

    @Field(key: "email")
    var email: String

    @Field(key: "passwordHash")
    var passwordHash: String

    init() {}

    init(id: UUID? = nil, usuario: String, email: String, passwordHash: String) {
        self.id = id
        self.usuario = usuario
        self.email = email
        self.passwordHash = passwordHash
    }
}