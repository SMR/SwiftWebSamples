import Vapor
import VaporMustache

let app = Application()

app.get("/") { request in
    return "Vapor says: 'Hello, world!'"
}

let port = app.config["app", "port"].int ?? 8080

print("Visit http://localhost:\(port)")
app.start()
