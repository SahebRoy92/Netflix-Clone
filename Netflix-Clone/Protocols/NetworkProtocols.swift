//
//  NetworkProtocols.swift
//  Netflix-Clone
//
//  Created by sahebroy on 15/06/22.
//

import Foundation

typealias Result = (Response) -> Void
typealias NetworkCallCompletion = ([String : Any]?)->()

enum FailureType {
    case networkUnavailable
    case serverError
    case customError
}

enum Response {
    case success(Any)
    case failure(FailureType)
}

enum EndpointType: String {
    case get = "GET"
    case post = "POST"
}

protocol Endpoints {
    var url: String {get set}
    var type: EndpointType {get set}
}

protocol NetworkProtocol {
    static func fetch(_ endpoint: Endpoints, completion: @escaping NetworkCallCompletion)
}
