//
//  IncomingTodo.swift
//  App
//
//  Created by 高松　幸平 on 2018/09/03.
//

import Vapor

extension Todo {
    struct Incoming: Content {
        var title: String?
        var completed: Bool?
        var order: Int?
        
        func makeTodo() -> Todo {
            return Todo(id: nil, title: title ?? "n/a", compiled:  completed ?? false, order: order)
        }
    }
}
