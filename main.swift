import Foundation

let loop = try! SelectorEventLoop(selector: try! SelectSelector())
let server = DefaultHTTPServer(eventLoop: loop, port: 8080) {
    (
        environ: [String: Any],
        startResponse: ((String, [(String, String)]) -> Void),
        sendBody: ((Data) -> Void)
    ) in
    // Start HTTP response
    startResponse("200 OK", [])
    let pathInfo = environ["PATH_INFO"]! as! String
    sendBody(Data("the path you're visiting is \(pathInfo.debugDescription)".utf8))
    // send EOF
    sendBody(Data())
}

// Start HTTP server to listen on the port
try! server.start()

print("Server running at localhost:8080")

// Run event loop
loop.runForever()
