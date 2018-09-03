//
//  OutgoingTodo.swift
//  App
//
//  Created by 高松　幸平 on 2018/09/03.
//

import Vapor

extension Todo {
    struct Outgoing: Content {
        var id: Int?
        var title: String?
        var completed: Bool?
        var order: Int?
        var url: String
    }
}

extension Todo {
    func makeOutgoing(with req: Request) throws -> Outgoing {
        let idString = id?.description ?? ""
        let url = req.baseURL + idString
        return Outgoing(id: id, title: title, completed: completed, order: order, url: url)
    }
}
