import PerfectLib

PerfectServer.initializeServices()

Routing.Routes["/"] = {
    request, response in
    
    response.appendBody(string: "<html><title>Hello, world!</title><body>Hello, world!</body></html>")
    response.completed()
}

do {
    try HTTPServer(documentRoot: ".").start(port: 8181)
    
} catch PerfectError.networkError(let err, let msg) {
    print("Network error thrown: \(err) \(msg)")
}