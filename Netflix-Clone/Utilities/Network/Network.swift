//
//  Network.swift
//  Netflix-Clone
//
//  Created by sahebroy on 15/06/22.
//

import Foundation

class Network: NetworkProtocol {
    
    static func fetch(_ endpoint: Endpoints, completion: @escaping([String : Any]?) -> ()) {
        guard let url = URL(string: endpoint.url) else { return print("Error") }
        var request = URLRequest.init(url: url)
        request.httpMethod = endpoint.type.rawValue
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let obtainedData = data else { return print("No data")}
            if let result = try? JSONSerialization.jsonObject(with: obtainedData, options: []) as? [String : Any] {
                completion(result)
            }
            else {
                completion(nil)
            }
        }.resume()
    }
}
