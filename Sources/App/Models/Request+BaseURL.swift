//
//  Request+BaseURL.swift
//  App
//
//  Created by 高松　幸平 on 2018/09/03.
//

import Vapor

extension Request {
    var baseURL: String {
        var host = http.headers["Host"].first!
        if host.hasSuffix("/") {
            host = String(host.dropLast())
        }
        let scheme = http.remotePeer.scheme ?? "http"
        return "\(scheme)://\(host)/todos/".finished(with: "/")
    }
}
