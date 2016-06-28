import Vapor
import VaporMustache


/**
    Adding a provider allows it to boot
    and initialize itself as a dependency.
    Includes are relative to the Views (`Resources/Views`)
    directory by default.
*/
let app = Application(providers: [
    VaporMustache.Provider(withIncludes: [
        "header": "Includes/header.mustache"
    ])
])

/**
    Vapor configuration files are located
    in the root directory of the project
    under `/Config`.
    `.json` files in subfolders of Config
    override other JSON files based on the
    current server environment.
    Read the docs to learn more
*/
//app.hash.key = app.config["app", "key"].string ?? ""

/**
    This first route will return the welcome.html
    view to any request to the root directory of the website.
    Views referenced with `app.view` are by default assumed
    to live in <workDir>/Resources/Views/ 
    You can override the working directory by passing
    --workDir to the application upon execution.
*/
app.get("/") { request in
       return "Hello, world"
}

let port = app.config["app", "port"].int ?? 8080

// Print what link to visit for default port
print("Visit http://localhost:\(port)")
app.start()
