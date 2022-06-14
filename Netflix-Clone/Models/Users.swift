//
//  User.swift
//  Netflix-Clone
//
//  Created by sahebroy on 15/06/22.
//

import Foundation

struct Users: Codable {
    let uid: String
    var image: String?
    let userName: String
    let firstName: String
    let lastName: String
    var isMain: Bool = false
    var lists: [Lists]?
}
