//
//  Lists.swift
//  Netflix-Clone
//
//  Created by sahebroy on 15/06/22.
//

import Foundation

enum ListType: Int, Codable {
    case shorts, movie
}

struct Lists: Codable {
    let type: ListType
    let id: String
    let title: String
   
}
