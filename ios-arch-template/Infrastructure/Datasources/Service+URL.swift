//
//  Service+URL.swift
//  ios-arch-template
//
//  Created by Santiago Mattiauda on 21/11/21.
//

import Foundation

extension Service {

    var url: URL {
        var urlComponent = URLComponents()
        urlComponent.scheme = "https"
        urlComponent.host = "pictures.getsandbox.com"
        urlComponent.port = 443
        urlComponent.path = "" + path
        guard let url = urlComponent.url else {
            preconditionFailure("Invalid URL components: \(urlComponent)")
        }
        return url
    }

    var headers: [String: Any] {
           return [
               "Content-Type": "application/json"
           ]
       }
}
