import Vapor

/// Register your application's routes here.

struct JSONExample: Content {
    let name: String
    let birthday: Date
}
public func routes(_ router: Router) throws {
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }
    
    router.get("json") {
         req -> JSONExample in
        return JSONExample(name: "hoge", birthday: Date())
    }

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", use: todoController.clear)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
